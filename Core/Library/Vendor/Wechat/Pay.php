<?php
/**
 * Created by PhpStorm.
 * User: LG
 * Date: 2017/3/20
 * Time: 8:55
 */
class Pay{
    /**
     * 获取jssdk需要用到的数据
     * @return array jssdk需要用到的数据
     */
    public function getParameters(){
        $order=array(
            'body'=>'test',// 商品描述（需要根据自己的业务修改）
            'total_fee'=>'1',// 订单金额  以(分)为单位（需要根据自己的业务修改）
            'out_trade_no'=>'100000000004546',// 订单号（需要根据自己的业务修改）
            'product_id'=>'1',// 商品id（需要根据自己的业务修改）
            'trade_type'=>'JSAPI',// JSAPI公众号支付
            'openid'=>'oDbeZwxI0hb-2brF4o_h7t2X7eFM',// 获取到的openid
            'appid'=>'wx52397382ce83ccd2',
            'mch_id'=>'1435920302',
            'nonce_str'=>'test',
            'spbill_create_ip'=>'192.168.0.1',
            'notify_url'=>'http://pay.jltengfang.com/pay/index.php/Home/Pay/notify'
        );
        $unified_order=$this->unifiedOrder($order);
        var_dump($unified_order);
        $time=time();
        // 组合jssdk需要用到的数据
        $data=array(
            'appid'=>'wx52397382ce83ccd2', //appid
            'timeStamp'=>strval($time), //时间戳
            'nonceStr'=>$unified_order['nonce_str'],// 随机字符串
            'package'=>'prepay_id='.$unified_order['prepay_id'],// 预支付交易会话标识
            'signType'=>'MD5'//加密方式
        );
        // 生成签名
        $data['paySign']=$this->makeSign($data);
        return $data;
        return $unified_order;
    }
    public function unifiedOrder($order){
        $sign=$this->makeSign($order);
        $order['sign']=$sign;
        $xml=$this->toXml($order);
        $url = 'https://api.mch.weixin.qq.com/pay/unifiedorder';//接收xml数据的文件
        $header[] = "Content-type: text/xml";//定义content-type为xml,注意是数组
        $ch = curl_init ($url);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // 兼容本地没有指定curl.cainfo路径的错误
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $xml);
        $response = curl_exec($ch);
        if(curl_errno($ch)){
            // 显示报错信息；终止继续执行
            die(curl_error($ch));
        }
        curl_close($ch);
        $result=$this->toArray($response);
        // 显示错误信息
        if ($result['return_code']=='FAIL') {
            die($result['return_msg']);
        }
        $result['sign']=$sign;
        $result['nonce_str']='test';
        return $result;
    }
    public function makeSign($data){
        // 去空
        $data=array_filter($data);
        //签名步骤一：按字典序排序参数
        ksort($data);
        $string_a=http_build_query($data);
        $string_a=urldecode($string_a);
        //签名步骤二：在string后加入KEY
        $string_sign_temp=$string_a."&key=".KEY;
        //签名步骤三：MD5加密
        $sign = md5($string_sign_temp);
        // 签名步骤四：所有字符转为大写
        $result=strtoupper($sign);
        return $result;
    }
    public function toXml($data){
        if(!is_array($data) || count($data) <= 0){
            throw new WxPayException("数组数据异常！");
        }
        $xml = "<xml>";
        foreach ($data as $key=>$val){
            if (is_numeric($val)){
                $xml.="<".$key.">".$val."</".$key.">";
            }else{
                $xml.="<".$key."><![CDATA[".$val."]]></".$key.">";
            }
        }
        $xml.="</xml>";
        return $xml;
    }
    public function toArray($xml){
        //禁止引用外部xml实体
        libxml_disable_entity_loader(true);
        $result= json_decode(json_encode(simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA)), true);
        return $result;
    }

}
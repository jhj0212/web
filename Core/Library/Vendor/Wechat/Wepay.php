<?php
/**
 * Created by PhpStorm.
 * User: LG
 * Date: 2017/3/20
 * Time: 8:55
 */
class Wepay{
    /**
     * 获取jssdk需要用到的数据
     * @return array jssdk需要用到的数据
     */
    function getParameters($order_number){
        $out_trade_no = $order_number;
        $openid = session('openid');
        $data['order_number'] = $out_trade_no;
        $model = D('pay_order');
        $list=$model->where($data)->find();
        $order=array(
            'body'=>'test',// 商品描述（需要根据自己的业务修改）
            'total_fee'=>$list['money'],// 订单金额  以(分)为单位（需要根据自己的业务修改）
            'out_trade_no'=>$order_number,// 订单号（需要根据自己的业务修改）
            'product_id'=>'1',// 商品id（需要根据自己的业务修改）
            'trade_type'=>'JSAPI',// JSAPI公众号支付
            'openid'=>$openid// 获取到的openid
        );
        $unified_order=$this->unifiedOrder($order);
        // 获取当前时间戳
        $time=time();
        // 组合jssdk需要用到的数据
        $data=array(
            'appId'=>APPID, //appid
            'timeStamp'=>strval($time), //时间戳
            'nonceStr'=>$unified_order['nonce_str'],// 随机字符串
            'package'=>'prepay_id='.$unified_order['prepay_id'],// 预支付交易会话标识
            'signType'=>'MD5'//加密方式
        );
        // 生成签名
        $data['paySign']=$this->makeSign($data);
        return $data;
    }
    /**
     * 统一下单
     * @param  array $order 订单 必须包含支付所需要的参数 body(产品描述)、total_fee(订单金额)、out_trade_no(订单号)、product_id(产品id)、trade_type(类型：JSAPI，NATIVE，APP)
     */
    public function unifiedOrder($order){
        // 获取配置项
        $config=array(
            'appid'=>APPID,
            'mch_id'=>MCHID,
            'nonce_str'=>'test',
            'sub_mch_id'=>SUB_MCHID_ID,
            'spbill_create_ip'=>'192.168.0.1',
            'notify_url'=>'http://pay.jltengfang.com/pay/index.php/Home/Pay/notify'
        );
        // 合并配置数据和订单数据
        $data=array_merge($order,$config);

        // 生成签名
        $sign=$this->makeSign($data);
        $data['sign']=$sign;

        $xml=$this->toXml($data);
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
    /**
     * 生成签名
     * @return 签名，本函数不覆盖sign成员变量，如要设置签名需要调用SetSign方法赋值
     */
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
    /**
     * 输出xml字符
     * @throws WxPayException
     **/
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
    /**
     * 将xml转为array
     * @param  string $xml xml字符串
     * @return array       转换得到的数组
     */
    public function toArray($xml){
        //禁止引用外部xml实体
        libxml_disable_entity_loader(true);
        $result= json_decode(json_encode(simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA)), true);
        return $result;
    }

    /**
     * 验证
     * @return array 返回数组格式的notify数据
     */
    public function notify(){
        // 获取xml
        $xml=file_get_contents('php://input', 'r');
        // 转成php数组
        $data=$this->toArray($xml);
        $res = M('admin_wechat')->find();
        //定义配置信息为常量
        define('APPID',$res['appid']);
        define('MCHID',$res['mchid']);
        define('KEY',$res['key']);
        define('APPSECRET',$res['appsecret']);
        header("Content-type: text/html; charset=utf-8");
        // 保存原sign
        $data_sign=$data['sign'];
        // sign不参与签名
        unset($data['sign']);
        $sign=$this->makeSign($data);
        // 判断签名是否正确  判断支付状态
        if ($sign===$data_sign && $data['return_code']=='SUCCESS' && $data['result_code']=='SUCCESS') {
            $result=$data;
        }else{
            $result=false;
        }
        // 返回状态给微信服务器
        if ($result) {
            $str='<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>';
        }else{
            $str='<xml><return_code><![CDATA[FAIL]]></return_code><return_msg><![CDATA[签名失败]]></return_msg></xml>';
        }
        echo $str;
        return $result;
    }
    /**
     *模板消息
     */
    public function sendTemplateMag($access_token,$post_json){
        /**
         *1.获取access_token
        2组装数组
         */
        $url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=$access_token";
        $res = $this->request_post($url,$post_json);

    }
    function request_post($url, $data =null)
    {

        $ch = curl_init(); //初始化curl
        curl_setopt($ch, CURLOPT_URL, $url); //抓取指定网页
        curl_setopt($ch, CURLOPT_HEADER, 0); //设置header
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); //要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_POST, 1); //post提交方式
        curl_setopt($ch, CURLOPT_POSTFIELDS,$data);
        $output = curl_exec($ch); //运行curl
        curl_close($ch);
        return $output;

    }
    /*
     * 需要保存文件的accees_token
     * */
    function access_token($appid,$secret){
        //获取access_token.json文件内容
        $data = json_decode(trim(substr(file_get_contents("access_token.json"),15)));
        if( $data->expire_time < time() ){
            $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$appid."&secret=".$secret;
            $res = file_get_contents($url);
            $result = json_decode($res, true);
            $access_token = $result['access_token'];
            if ($access_token) {
                $data->expire_time = time()+7000;
                $data->access_token = $access_token;
                $fp = fopen("access_token.json", "w");
                fwrite($fp, "<?php exit();?>" . json_encode($data));
                fclose($fp);
            }
        }else{
            $access_token = $data->access_token;
        }
        return $access_token;
    }
}
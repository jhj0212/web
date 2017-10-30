<?php
class Wechat{
	function get_access_token($appid,$appsecret,$code){
		$url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$appsecret."&code=".$code."&grant_type=authorization_code";
		$res = file_get_contents($url);
        $result = json_decode($res, true);
		return $result;
	}
	function get_userinfo($access_token,$openid){
		$url = "https://api.weixin.qq.com/sns/userinfo?access_token=".$access_token."&openid=".$openid."&lang=zh_CN";
		$res = file_get_contents($url);
		$userinfo = json_decode($res,true);
		return $userinfo;
	}

}
?>
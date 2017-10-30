<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录</title>  
    <link rel="stylesheet" href="/web/Public/Admin/css/pintuer.css">
    <link rel="stylesheet" href="/web/Public/Admin/css/admin.css">
    <script src="/web/Public/Admin/js/jquery.js"></script>
    <script src="/web/Public/Admin/js/pintuer.js"></script>
    <script src="/web/Public/Common/Layer/layer.js"></script>
    <script>
        $(function(){
            $('#code').keyup(function(){
                var code = $('#code').val();
                if(code.length == 4 && $('#check_code').val() == 0){
                    $.get("<?php echo U('Login/check_code');?>", {code:code},function(data){
                        if(data == 1){
                            $('#check_code').val(1);
                            layer.tips('√ 通过验证', '#code',{time:5000});
                        }else{
                            $('#check_code').val(0);
                            layer.tips('× 验证错误', '#code');
                        }
                    });
                }
            });
        })
    </script>
    <script>
        function check_login(){
            var account = $('#account').val();
            var password = $('#password').val();
            var code = $('#code').val();	//验证码
            var check_code = $('#check_code').val();	//验证码验证结果
            if(account == ''){
                layer.tips('请输入用户名', '#account');
                return false;
            }
            if(password == ''){
                layer.tips('请输入密码', '#password');
                return false;
            }
            if(code == ''){
                layer.tips('请输入验证码', '#code');
                return false;
            }
            if(check_code == 0){    //判断验证码正确，才允许提交
                layer.tips('验证码错误', '#code');
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            <form method="post" action="<?php echo U('Login/index');?>" onSubmit="return check_login()">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>后台管理中心</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="account" placeholder="登录账号" data-validate="required:请填写账号" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field">
                            <input type="text" class="input input-big" id="code" name="code" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" maxlength="4"/>
                            <input type="hidden" id="check_code" value="0">
                            <img  id="code_img" src="<?php echo U('Login/verify');?>" width="100" height="32" class="passcode" style="height:43px;cursor:pointer;"
                                  onclick="javascript:this.src=this.src+'?time='+Math.random()" />
                            <!--<span class="icon icon-user margin-small" id=""></span>-->
                        </div>
                    </div>
                </div>
                <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>
            </div>
            </form>          
        </div>
    </div>
</div>

</body>
</html>
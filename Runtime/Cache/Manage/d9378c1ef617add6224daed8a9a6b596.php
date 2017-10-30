<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="/web/Public/Admin/css/pintuer.css">
<link rel="stylesheet" href="/web/Public/Admin/css/admin.css">
<script src="/web/Public/Admin/js/jquery.js"></script>
<script src="/web/Public/Admin/js/pintuer.js"></script>
<script src="/web/Public/Common/uploadPreview.js"></script>

</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加用户</strong></div>
  <div class="body-content">
    <form method="post" name="register" class="form-x" action="<?php echo U('runAddAdmin');?>" enctype="multipart/form-data">
      <div class="form-group">
        <div class="label">
          <label>角色：</label>
        </div>
        <div class="field">
            <?php foreach ($roleData as $k => $v): ?>
            <input type="checkbox" name="role_id[]" value="<?php echo ($v["id"]); ?>" /> <?php echo ($v["role_name"]); ?>
            <?php endforeach; ?>
        </div>
      </div><div class="form-group">
        <div class="label">
          <label>帐号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" id="account" name="account" />
          <div class="input-help"></div>
        </div>
      </div>
      <div class="clear"></div>
      <div class="form-group">
        <div class="label">
          <label>密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="password" value="" />
          <div class="input-help"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>确认密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="pwded" value=""/>
          <div class="input-help"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>文件上传：</label>
        </div>
        <div class="field">
          <input type="file" class="input w50" name="enclosure" id="enclosure" value=""/>

        </div>
      </div><div class="form-group">
        <div class="label">
          <label>是否启用：</label>
        </div>
        <div class="field">
          <input type="radio" name="status" value="1" checked="checked" />启用
          <input type="radio" name="status" value="0"  />禁用
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <!--<button class="button bg-main  icon-repeat" type="button" onclick="history.go(-1)"> 返回</button>-->
          <a class="button bg-main  icon-repeat" href="<?php echo U('back');?>">&nbsp;返回</a>
        </div>
      </div>
    </form>
  </div>
</div>
<script>
    var validate = {
        account : false,
        password : false,
        pwded : false

    };
    var msg = '';
    $(function(){
        var register = $( 'form[name=register]' );

        register.submit( function () {
            var isOK = validate.account && validate.password && validate.pwded;

            if ( isOK ) {
                return true;
            }

            $( 'input[name=account]', register ).trigger('blur');
            $( 'input[name=password]', register ).trigger('blur');
            $( 'input[name=pwded]', register ).trigger('blur');
            return false;
        } );
        //验证用户名
        $("input[name='account']", register ).blur(function(){
            //var account = $("input[name='account']");
            var account = $('#account').val();
            var span = $( this ).next();

            if ( account == '' ) {
                msg = '用户名不能为空';
                span.html( msg ).addClass('error');
                validate.account = false;
                return;
            }

            if ( !/^[\u4e00-\u9fa5|\w]{2,14}$/g.test(account) ) {
                msg = '必须是2-14个字符：字母，数字，下划线或中文';
                span.html( msg ).addClass('error');
                validate.account = false;
                return;
            }

            $.get("<?php echo U('checkAccount');?>",{account:account},function(data){
                if(data==1){
                    /*$('#tips').append("<div class='input-help' ><li>用户已存在</li><ul></ul></div>");*/
                    msg = '用户名已存在';
                    $('#account').val('');
                    span.html( msg ).addClass('error');
                    validate.account = false;
                }else{
                    msg = '';
                    span.html( msg ).removeClass('error');
                    validate.account = true;
                }

            })
        })
        //验证密码
        $( 'input[name=password]', register ).blur( function () {
            var password = $( this ).val();
            var span = $( this ).next();

            if ( password == '' ) {
                msg = '密码不能为空';
                span.html( msg ).addClass('error');
                validate.password = false;
                return;
            }

            if ( !/^\w{6,20}$/g.test(password) ) {
                msg = '密码必须由6-20个字母，数字，下划线组成';
                span.html( msg ).addClass('error');
                validate.password = false;
                return;
            }

            msg = '';
            validate.password = true;
            span.html( msg ).removeClass('error');
        } );
        //确认密码
        $( 'input[name=pwded]', register ).blur( function () {
            var pwded = $( this ).val();
            var span = $( this ).next();

            if ( pwded == '' ) {
                msg = '请确认密码';
                span.html( msg ).addClass('error');
                validate.pwded = false;
                return;
            }

            if ( pwded != $( 'input[name=password]', register ).val() ) {
                msg = '两次密码不一致';
                span.html( msg ).addClass('error');
                validate.pwded = false;
                return;
            }

            msg = '';
            span.html( msg ).removeClass('error');
            validate.pwded = true;
        } );
    })
</script>
</body></html>
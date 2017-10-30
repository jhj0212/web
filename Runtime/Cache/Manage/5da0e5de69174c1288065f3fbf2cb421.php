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
  <script src="/web/Public/Common/Layer/layer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改用户</strong></div>
  <div class="body-content">
    <form method="post" name="register" class="form-x" action="<?php echo U('edit');?>" enctype="multipart/form-data">
      <input type="hidden" name="id" value="<?php echo $data['id']; ?>" />
      <?php if($data['id'] > 1): ?>
      <div class="form-group">
        <div class="label">
          <label>所在角色：</label>
        </div>
        <div class="field">
          <?php foreach ($roleData as $k => $v): if(strpos(','.$rid.',', ','.$v['id'].',') !== FALSE) $check = 'checked="checked"'; else $check = ''; ?>
          <input <?php echo ($check); ?> type="checkbox" name="role_id[]" value="<?php echo ($v["id"]); ?>" /> <?php echo ($v["role_name"]); ?>
          <?php endforeach; ?>
        </div>
      </div>
      <?php endif; ?>
      <div class="form-group">
        <div class="label">
          <label>帐号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="<?php echo $data['account']; ?>" name="account" disabled="disabled" />
          <input type="hidden" class="input w50" value="<?php echo $data['account']; ?>" name="account" id="account"/>
        </div>
      </div>
      <div class="clear"></div>
      <!--<div class="form-group">
        <div class="label">
          <label>原密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="pword" id="pword" value="" data-validate="required:请输入原密码"/>
          <div class="tips" id="tips"></div>
        </div>
      </div> -->
      <div class="form-group">
        <div class="label">
          <label>新密码：</label>
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
        password : false,
        pwded : false
    };
    var msg = '';
    $(function(){
        var register = $( 'form[name=register]' );

        register.submit( function () {
            var isOK = validate.password && validate.pwded;

            if ( isOK ) {
                return true;
            }

            $( 'input[name=password]', register ).trigger('blur');
            $( 'input[name=pwded]', register ).trigger('blur');
            return false;
        } );
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
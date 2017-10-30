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
</head>
<body>
<form method="post" action="<?php echo U('User/index');?>" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 用户列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="<?php echo U('addAdmin');?>"> 添加管理员</a> </li>
        <li>
          <input type="text" placeholder="请输入搜索账号" id="keywords" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <!--<a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a>-->
          <button type="submit" class="button border-main icon-search">&nbsp;搜索</button>
        </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th>账号</th>
        <th>图像</th>
        <th>登陆次数</th>
        <th>登录时间</th>
        <th width="10%">登陆IP</th>
        <th width="10%">是否启用</th>
        <th width="310">操作</th>
      </tr>
      <?php if(is_array($person)): foreach($person as $key=>$data): ?><tr>
          <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /><?php  echo ++$i; ?><!--<?php echo ($data["id"]); ?>--></td>
          <td><?php echo ($data["account"]); ?></td>
          <td>
            <?php if($data["enclosure"] != null): ?><img src="/web/Public<?php echo ($data["enclosure"]); ?>" style="height: 40px;width: 40px;"><?php endif; ?>
          </td>
          <td><?php echo ($data["login_count"]); ?></td>
          <td><?php echo (date('Y-m-d H:i', $data["login_time"])); ?></td>
          <td><?php echo ($data["login_ip"]); ?></td>
          <td style="cursor:pointer;" manage_id="<?php echo ($data["id"]); ?>" class="status">
            <?php if($data["status"] == 1): ?><span class="button border-main">启用</span><?php endif; ?>
            <?php if($data["status"] == 0): ?><span class="button border-red">禁用</span><?php endif; ?>
          </td>
          <td>
            <div class="button-group">
              <a class="button border-main" href="<?php echo U('edit', array('id' => $data['id']));?>" title="编辑">
                <span class="icon-edit"></span>
                编辑
              </a>
              <?php if($data["id"] > 1): ?><a class="button  border-red" href="<?php echo U('delUser', array('id' => $data['id']));?>" onclick="return confirm('确定要删除吗？');" title="移除">
                  <span class="icon-trash-o"></span>
                  删除
                </a><?php endif; ?>
            </div>
          </td>
        </tr><?php endforeach; endif; ?>
      <tr>
        <td colspan="8">
          <div class="pagelist">
            <?php echo ($page); ?>
          </div>
        </td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

/*//搜索
function changesearch(){
    var keyWord=$('#keywords').val();
    $.post("<?php echo U('index');?>", {account:keyWord});

}*/


// 为启用的td加一个事件
$(".status").click(function(){
    // 先获取点击的记录的ID
    var id = $(this).attr("manage_id");
    if(id == 1)
    {
        alert("超级管理员不能修改！");
        return false;
    }
    var _this = $(this);
    $.ajax({
        type : "GET",
        // 默认U函数生成的地址是带.html后缀的：/index.php/Admin/Admin/ajaxUpdateIsuse.html/id/3，这样请求这个地址会报错无法请求，所以需要让U生成的地址不要带.html后缀
        // 也就是说，如果在AJAX时使用了U函数并且后面还要再传参数就需要设置第三个参数为FALSE不生成.html后缀
        url : "<?php echo U('ajaxUpdateStatus', '', FALSE); ?>/id/"+id,
        success : function(data)
        {
            if(data == 0)
                _this.html("<span class='button border-red'>禁用</span>");
            else
                _this.html("<span class='button border-main'>启用</span>");
        }
    });
});


//全选
$("#checkall").click(function(){
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

</script>
</body>
</html>
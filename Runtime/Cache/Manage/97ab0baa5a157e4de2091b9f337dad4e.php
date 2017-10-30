<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>网站信息</title>
    <link rel="stylesheet" href="/web/Public/Admin/css/pintuer.css">
    <link rel="stylesheet" href="/web/Public/Admin/css/admin.css">
    <script src="/web/Public/Admin/js/jquery.js"></script>
    <script src="/web/Public/Admin/js/pintuer.js"></script>
</head>
<body>
<form method="post" action="<?php echo U('Role/index');?>" id="listform">
    <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder"> 角色列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
        <div class="padding border-bottom">
            <ul class="search" style="padding-left:10px;">
                <li> <a class="button border-main icon-plus-square-o" href="<?php echo U('addRole');?>"> 添加角色</a> </li>
                <li>
                    <input type="text" placeholder="请输入搜索角色名称" id="keywords" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
                    <!--<a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a>-->
                    <button type="submit" class="button border-main icon-search">&nbsp;搜索</button>
                </li>
            </ul>
        </div>
        <table class="table table-hover text-center">
            <tr>
                <th width="100" style="text-align:left; padding-left:20px;">序号</th>
                <th>角色名称</th>
                <th>权限名称</th>
                <th width="310">操作</th>
            </tr>
            <?php if(is_array($person)): foreach($person as $key=>$data): ?><tr>
                    <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /><?php  echo ++$i; ?><!--<?php echo ($data["id"]); ?>--></td>
                    <td><?php echo ($data["role_name"]); ?></td>
                    <td><?php echo ($data["pri_name"]); ?></td>
                    <td>
                        <div class="button-group">
                            <a class="button border-main" href="<?php echo U('edit', array('id' => $data['id']));?>">
                                <span class="icon-edit"></span>
                                编辑
                            </a>
                            <a class="button  border-red" href="<?php echo U('delRole', array('id' => $data['id']));?>" onclick="return confirm('确定要删除吗？');">
                                <span class="icon-trash-o"></span>
                                删除
                            </a>
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
</body></html>
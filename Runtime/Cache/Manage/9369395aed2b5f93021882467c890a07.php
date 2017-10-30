<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <link rel="stylesheet" href="/web/Public/Admin/css/pintuer.css">
    <link rel="stylesheet" href="/web/Public/Admin/css/admin.css">
    <script src="/web/Public/Admin/js/jquery.js"></script>
    <script src="/web/Public/Admin/js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
    <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
        <div class="padding border-bottom">
            <ul class="search" style="padding-left:10px;">
                <li> <a class="button border-main icon-plus-square-o" href="<?php echo U('addJob');?>"> 添加招聘</a> </li>
                <li>
                    <input type="text" placeholder="请输入搜索职位" id="keywords" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
                    <button type="submit" class="button border-main icon-search">&nbsp;搜索</button>
            </ul>
        </div>
        <table class="table table-hover text-center">
            <tr>
                <th>ID</th>
                <th width="">职位</th>
                <th width="">时间</th>
                <th width="300px">操作</th>
            </tr>

            <?php if(is_array($data)): foreach($data as $key=>$data): ?><tr>
                    <td width=""><?php  echo ++$i; ?></td>
                    <td width=""><?php echo ($data["type"]); ?></td>
                    <td width=""><?php echo (date("Y-m-d H-s-m",$data["time"])); ?></td>
                    <td>
                        <div class="button-group">
                            <a class="button border-main" href="<?php echo U('edit', array('id' => $data['id']));?>" >
                                <span class="icon-edit"></span>
                                修改
                            </a>
                            <a class="button border-main" href="<?php echo U('content',array('id' => $data['id']));?>" >
                                <span class="icon-edit"></span>
                                详情
                            </a>
                            <a class="button border-red" href="<?php echo U('delete', array('id' => $data['id']));?>" onclick="return confirm('确定要删除吗？');">
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
</body>
</html>
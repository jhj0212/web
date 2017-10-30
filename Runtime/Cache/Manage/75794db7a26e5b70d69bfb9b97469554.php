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
                <li> <a class="button border-main icon-plus-square-o" href="<?php echo U('addVideo');?>"> 添加视频</a> </li>
                <li>
                    <input type="text" placeholder="请输入搜索标题" id="keywords" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
                    <button type="submit" class="button border-main icon-search">&nbsp;搜索</button>
                </li>
            </ul>
        </div>
        <table class="table table-hover text-center">
            <tr>
                <th>ID</th>
                <th width="">标题</th>
                <th width="">时间</th>
                <th width="">是否启用</th>
                <th width="300px">操作</th>
            </tr>

            <?php if(is_array($person)): foreach($person as $key=>$data): ?><tr>
                    <td width=""><?php  echo ++$i; ?></td>
                    <td width=""><?php echo ($data["title"]); ?></td>
                    <td width=""><?php echo (date('Y-m-d H:i', $data["time"])); ?></td>
                    <td style="cursor:pointer;" manage_id="<?php echo ($data["id"]); ?>" class="status">
                        <?php if($data["state"] == 1): ?><span class="button border-main">启用</span><?php endif; ?>
                        <?php if($data["state"] == 0): ?><span class="button border-red">禁用</span><?php endif; ?>
                    </td>
                    <td>
                        <div class="button-group">
                            <a class="button border-main" href="<?php echo U('content', array('id' => $data['id']));?>" >
                                <span class="icon-edit"></span>
                                详情
                            </a>
                           <!-- <a class="button border-red" href="<?php echo U('delete', array('id' => $data['id']));?>" onclick="return confirm('确定要删除吗？');">
                                <span class="icon-trash-o"></span>
                                删除
                            </a>-->
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
    // 为启用的td加一个事件
    $(".status").click(function(){
        // 先获取点击的记录的ID
        var id = $(this).attr("manage_id");
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
</script>
</body>
</html>
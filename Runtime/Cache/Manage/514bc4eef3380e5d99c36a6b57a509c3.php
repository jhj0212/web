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
    <script src="/web/Public/Admin/pintuer.js"></script>
    <script src="/web/Public/Admin/js/jquery-1.9.1.js"></script>
    <script src="/web/Public/Admin/js/jquery-1.7.2.min.js"></script>
</head>
<body>

<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 内容详情</strong></div>
    <form action="<?php echo U('edit');?>" method='post' class="form-x" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $data['id']; ?>" />
        <div class="body-content">
            <div class="form-group">
                <div class="label">
                    <label>标题：</label>
                </div>
                <div class="field">
                    <label style="line-height:33px;">
                        <?php echo ($info["title"]); ?>
                    </label>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>时间：</label>
                </div>
                <div class="field">
                    <label style="line-height:33px;">
                        <?php echo (date('Y-m-d H-s-m',$info["time"])); ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>视频：</label>
                </div>
                <div class="field">
                    <label style="line-height:33px;">
                        <figure class="pull-left clearfix y-m50 wow animated fadeInUp">
                            <iframe frameborder="0" width="572" height="352" src="<?php echo ($info["url"]); ?>" allowfullscreen></iframe>
                        </figure>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>内容：</label>
                </div>
                <div class="field">
                    <label style="line-height:33px;">
                        <?php echo ($info["content"]); ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <a class="button bg-main  icon-repeat" href="<?php echo U('back');?>">&nbsp;返回</a>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="/web/Public/Admin/css/pintuer.css">
    <link rel="stylesheet" href="/web/Public/Admin/css/admin.css">
    <!--<link rel="stylesheet" type="text/css" href="/web/Public/Admin/css/common.css" />-->
    <link rel="stylesheet" type="text/css" href="/web/Public/Admin/css/style_file.css" />

    <script src="/web/Public/Admin/js/jquery.js"></script>
    <script src="/web/Public/Admin/js/pintuer.js"></script>
    <script src="/web/Public/Admin/js/jquery-1.7.2.min.js"></script>
    <script src="/web/Public/Admin/js/jquery.wallform.js"></script>
    <script src="/web/Public/Admin/js/bootstrap.min.js"></script>

</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
    <form action="<?php echo U('runAddNews');?>" id="imageform" method='post' class="form-x" enctype="multipart/form-data">
        <div class="body-content">
            <div class="form-group">
                <div class="label">
                    <label>标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" style="width: 60%;" value="" name="title" data-validate="required:请输入标题" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>内容：</label>
                </div>
                <div class="field">
                    <script id="editor" style="width: 60%;"  type="text/plain" name="content" style="width:100%px;height:300px;"></script>
                </div>
            </div>
            <div class="clear"></div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="button bg-main  icon-repeat" href="<?php echo U('back');?>">&nbsp;返回</a>

                </div>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript" charset="utf-8" src="/web/Public/Admin/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/web/Public/Admin/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="/web/Public/Admin/ueditor/lang/zh-cn/zh-cn.js"></script>
<!--<script src="/web/Public/Admin/js/min.js" type="text/javascript"></script>-->
<!--<script src="/web/Public/Admin/js/uploader.js"></script>-->
<script>
    //对编辑器的操作最好在编辑器ready之后再做
    var ue = UE.getEditor('editor', {
        "initialFrameWidth" : "100%",   // 宽
        "initialFrameHeight" : 400,      // 高
        "maximumWords" : 10000            // 最大可以输入的字符数量
    });
</script>
</body>
</html>
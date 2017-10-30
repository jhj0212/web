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
    <!--<script src="/web/Public/Admin/pintuer.js"></script>-->
    <script src="/web/Public/Admin/js/jquery-1.9.1.js"></script>
    <script src="/web/Public/Admin/js/jquery-1.7.2.min.js"></script>
</head>
<body>

<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 修改</strong></div>
    <form action="<?php echo U('edit');?>" method='post' class="form-x" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $data['id']; ?>" />
        <div class="body-content">
            <div class="form-group">
                <div class="label">
                    <label>标题：</label>
                </div>
                <div class="field">
                    <label style="line-height:33px;">
                        <input size="50" class="input" type="text" style="width: 60%;" name='title' id="title" value="<?php echo ($data["title"]); ?>" disabled="disabled"/>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>类别：</label>
                </div>
                <div class="field">
                    <input  class="input"  style="width: 60%;" name="type" value="<?php echo ($data["type"]); ?>" disabled="disabled"/>
                    <!-- <?php if($data["pid"] == 2): ?><input  class="input"  style="width: 60%;" name="condition" value="财务代理" disabled="disabled"/><?php endif; ?>-->

                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>简介：</label>
                </div>
                <div class="field">
                    <label>
                        <textarea name="introduce" style="resize: none;width: 60%;height: 100px;" maxlength="150"><?php echo ($data["introduce"]); ?></textarea>
                    </label>
                </div>
            </div>
            <!--<div class="form-group" id="pp">
                <div class="label">
                    <label>图片：</label>
                </div>
                <div class="field">
                    <img src="/web/Public<?php echo ($data["pic"]); ?>" style="height: 100px;width: 150px;">
                    <input type="button" value="修改图片" onclick="change()">
                </div>
            </div>
            <div class="form-group" style="display: none" id="dis">
                <div class="label">
                    <label>图片：</label>
                </div>
                <div class="field">
                    <input type="file"   value="" name="url" />
                    <div class="tips"></div>
                </div>
            </div>-->
            <div class="form-group">
                <div class="label">
                    <label>内容：</label>
                </div>
                <div class="field">
                    <script id="editor"  type="text/plain" style="width: 60%;" name="content"></script>
                </div>
            </div>
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

<script>
    //对编辑器的操作最好在编辑器ready之后再做
    var ue = UE.getEditor('editor', {
        "initialFrameWidth" : "100%",   // 宽
        "initialFrameHeight" : 400,      // 高
        "maximumWords" : 10000            // 最大可以输入的字符数量
    });

    ue.ready(function() {
        //设置编辑器的内容
        ue.setContent('<?php echo $data["content"]; ?>');//赋值给UEditor
    });
    function change() {
        $('#dis').show();
        $('#pp').hide();
    }
</script>
</body>
</html>
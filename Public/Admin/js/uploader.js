/*
 * error:an teleiwsei to upload kai iparxei ena sti lista pou den exei patithei
 * */

(function (root, factory) {
    //@author http://ifandelse.com/its-not-hard-making-your-library-support-amd-and-commonjs/
    if (typeof module === "object" && module.exports) {
        module.exports = factory(require("jquery"));
    } else {
        factory(root.jQuery);
    }
}(this, function ($) {
    var Ssi_upload = function (element, options) {
        this.options = options;
        this.$element = '';
        this.language = locale[this.options.locale];
        this.uploadList = [];
        this.totalProgress = [];
        this.toUpload = [];
        this.imgNames = [];
        this.totalFilesLength = 0;
        this.successfulUpload = 0;
        this.aborted = 0;
        this.abortedWithError = 0;
        this.pending = 0;
        this.inProgress = 0;
        this.currentListLength = 0;
        this.init(element);
    };
    Ssi_upload.prototype.init = function (element) {
        $(element).addClass('ssi-uploadInput')
            .after(this.$element = $('<div class="ssi-uploader">'));
        var $chooseBtn = $('' +
            '<span class="ssi-InputLabel">' +
            '<button class="ssi-button success">' + this.language.chooseFiles + '</button>' +
            '</span>').append(element);
        var $uploadBtn = $('<button id="ssi-uploadBtn" class="ssi-button success ssi-hidden" >' +
            '<span class="ssi-btnIn">' + this.language.upload + '&nbsp;</span>' +
            '<div id="ssi-up_loading" class="ssi-btnIn"></div></button>');
        var $clearBtn = $('<button id="ssi-clearBtn" class="ssi-hidden ssi-button info" >' + this.language.clear +
            '</button>');
        var $abortBtn = $('<button id="ssi-abortBtn" class="ssi-button error ssi-cancelAll ssi-hidden" ><span class="inBtn">' + this.language.abort + ' </span></button>');

        this.$element.append($('<div class="ssi-buttonWrapper">').append($chooseBtn, $abortBtn, $uploadBtn, $clearBtn));
        var $uploadBox;
        if (!this.options.preview) {
            this.$element.addClass('ssi-uploaderNP');
            var $fileList = $('<table id="ssi-fileList" class="ssi-fileList"></table>');
            var $namePreview = $('<span class="ssi-namePreview"></span>');
            var $mainBox = $('<div id="ssi-uploadFiles" class="ssi-tooltip ssi-uploadFiles ' + (this.options.dropZone ? 'ssi-dropZone' : '') + '"><div id="ssi-uploadProgressNoPreview" class="ssi-uploadProgressNoPreview"></div></div>')
                .append($namePreview);
            var $uploadDetails = $('<div class="ssi-uploadDetails"></div>').append($fileList);
            $uploadBox = $('<div class="ssi-uploadBoxWrapper ssi-uploadBox"></div>').append($mainBox, $uploadDetails);
            this.$element.prepend($uploadBox);
        } else {
            $uploadBox = $('<div id="ssi-previewBox" class="ssi-uploadBox ssi-previewBox ' + (this.options.dropZone ? 'ssi-dropZonePreview ssi-dropZone"><div id="ssi-DropZoneBack">' + this.language.drag + '</div>' : '">') + '</div>');
            this.$element.append($uploadBox);
        }
        var thisS = this;
        var $input = $chooseBtn.find(".ssi-uploadInput");
        $chooseBtn.find('button').click(function () {
            $input.trigger('click');
        });

        $input.on('change', function () { //选择文件
            thisS.toUploadFiles(this.files);
            $input.val('');
        });

        if (!thisS.options.preview) {
            $mainBox.click(function () {
                if (thisS.currentListLength > 1)
                    $uploadDetails.toggleClass('ssi-uploadBoxOpened');
            })
        }

        $clearBtn.click(function () { //选择完成的文件和正在等待的文件
            thisS.clear();
        });

        var $tooltip;

        $uploadBox.on('mouseenter', '.ssi-statusLabel', function (e) { //提示信息
            var $eventTarget = $(e.currentTarget);
            var title = $eventTarget.attr('data-status');
            if (!title || title === '') {
                return;
            }
            var tooltipHeight = '35';
            if ($eventTarget.hasClass('ssi-noPreviewSubMessage')) {
                tooltipHeight = 0;
            }
            $tooltip = $('<div class="ssi-infoTooltip">'
                + title +
                '</div>')
                .appendTo(thisS.$element)
                .css({top: $eventTarget.position().top - tooltipHeight, left: $eventTarget.position().left - 5})
                .fadeIn('slow');

        });

        $uploadBox.on('mouseleave', '.ssi-statusLabel', function () {
            if ($tooltip)
                $tooltip.remove();
        });

        $uploadBox.on('click', '.ssi-removeBtn', function (e) { //从列表中移除文件
            var $currentTarget = $(e.currentTarget);
            var index = $currentTarget.data('delete'); //获取文件索引
            thisS.pending--; //减少待定数1
            thisS.currentListLength--; //减少当前列表长度1
            if (thisS.pending === 0) {
                $uploadBtn.prop('disabled', true); //如果没有更多的文件禁用上传按钮
            }
            if (thisS.options.preview) { //如果预览是真的
                $currentTarget.parents('table.ssi-imgToUploadTable').remove(); //删除表
            } else {
                var target = $currentTarget.parents('tr.ssi-toUploadTr'); //查找文件的地址
                $namePreview.html((thisS.currentListLength) + ' files'); //将主名称设置为剩余文件
                target.prev().remove();//删除空TR（使用ID行之间的保证金）
                target.remove();// remove the file删除文件
                if (thisS.currentListLength === 1) { //if only one file left in the list如果只有一个文件留在列表中
                    setLastElementName(thisS); //set main preview to display the name设置主预览显示名称
                }
            }
            thisS.toUpload[index] = null; //set the file's obj to null (we don't splice it because we need to keep the same indexes)
            thisS.imgNames[index] = null; //set the file's name to null设置文件的对象为空

            if (thisS.currentListLength === 0) { // if no more files in the list如果列表中没有更多文件
                if (!thisS.options.dropZone) { // if drag and drop is disabled如果拖放被禁用
                    $uploadBox.removeClass('ssi-uploadNoDropZone');
                }
                $clearBtn.addClass('ssi-hidden');
                $uploadBtn.addClass('ssi-hidden');
            }
        });
        $uploadBox.on('click', '.ssi-abortUpload', function (e) {//abort one element中止一个元素
            var $eventTarget = $(e.currentTarget);
            var index = $eventTarget.data('delete');// get the element id获取元素ID
            thisS.abort(index); // abort request 中止请求
        });
//----------------------------UPLOADFILES------------------------------------
        $uploadBtn.click(function () {// upload the files上传的文件
            thisS.uploadFiles();
        });
        $abortBtn.click(function () { // abort all requests中止请求
            thisS.abortAll();
        });

    };
    Ssi_upload.prototype.abortAll = function () {
        for (var i = 0; i < this.uploadList.length; i++) { //列表中的所有元素
            if (typeof this.uploadList[i] === 'object') {// check if not deleted检查是否删除
                this.abort(i)
            }
        }
    };
    Ssi_upload.prototype.toUploadFiles = function (files) {
        if (typeof this.options.maxNumberOfFiles === 'number') {
            if ((this.inProgress + this.pending) >= this.options.maxNumberOfFiles) {// if in progress files + pending files are more than the number that we have define as max number of files pre download  如果正在进行文件 +挂起的文件超过我们定义为最大数量的数字
                return;//don't do anything
            }
        }
        var thisS = this,
            j = 0,
            length,
            imgContent = '',
            $uploadBtn = this.$element.find('#ssi-uploadBtn'),
            $clearBtn = this.$element.find('#ssi-clearBtn'),
            $fileList = this.$element.find('#ssi-fileList'),
            $uploadBox = this.$element.find('.ssi-uploadBox'),
            imgs = [];
        if ((this.inProgress === 0 && this.pending === 0)) { //if no file are pending or are in progress如果没有文件正在等待或正在进行中
            this.clear(); //clear the list清除列表
        }
        var extErrors = [], sizeErrors = [], errorMessage = '';
        var toUploadLength, filesLength = length = toUploadLength = files.length;
        if (typeof this.options.maxNumberOfFiles === 'number') {//check if requested files agree with our arguments检查请求的文件是否符合我们的论点
            if (filesLength > this.options.maxNumberOfFiles - (this.inProgress + this.pending)) { //如果请求的文件比我们需要的多
                filesLength = toUploadLength = this.options.maxNumberOfFiles - (this.inProgress + this.pending); // set variable to the number of files we need将变量设置为我们需要的文件数量
            }
        }
        //
        for (var i = 0; i < filesLength; i++) {
            var file = files[i],
                ext = file.name.getExtension();// get file's extension获取文件扩展名
            if ($.inArray(ext, this.options.allowed) === -1) { // if requested file not allowed如果请求的文件不允许
                if (length > filesLength) {//there are more file we dont pick有更多的文件我们不选择
                    filesLength++;//the add 1 more loop增加1个循环
                } else {
                    toUploadLength--;
                }
                if ($.inArray(ext, extErrors) === -1) {//if we see first time this extension如果我们第一次看到这个扩展
                    extErrors.push(ext); //push it to extErrors variable把它推到exterrors变量
                }
            } else if ((file.size * Math.pow(10, -6)).toFixed(2) > this.options.maxFileSize) {//if file size is more than we ask如果文件大小超过我们的要求
                if (length > filesLength) {
                    filesLength++;
                } else {
                    toUploadLength--;
                }
                sizeErrors.push(cutFileName(file.name, ext, 15));//register a size error注册大小错误
            } else if ($.inArray(file.name, this.imgNames) === -1) {// if the file is not already in the list如果文件没有在列表中
                $uploadBtn.prop("disabled", false);
                setupReader(file);
                this.pending++; // we have one more file that is pending to be uploaded我们有一个文件正在等待上传
                this.currentListLength++;// we have one more file in the list我们还有一个文件在列表中
            } else {
                if (length > filesLength) {
                    filesLength++;
                } else {
                    toUploadLength--;
                }
            }
        }
        var extErrorsLength = extErrors.length, sizeErrorsLength = sizeErrors.length;
        if (extErrorsLength + sizeErrorsLength > 0) { // in the end expose all errors最后暴露所有错误
            if (extErrorsLength > 0) {
                errorMessage = this.language.extError.replaceText(extErrors.toString().replace(/,/g, ', '));
            }
            if (sizeErrorsLength > 0) {
                errorMessage += this.language.sizeError.replaceText(sizeErrors.toString().replace(/,/g, ', '), this.options.maxFileSize + 'mb');
            }
            this.options.errorHandler.method(errorMessage, this.options.errorHandler.error);
        }
        function setupReader() {
            var index = thisS.totalFilesLength + thisS.pending;
            if (index === 0) {//do it only the first time只做第一次
                if (thisS.options.preview) {
                    if (!thisS.options.dropZone) {
                        $uploadBox.addClass('ssi-uploadNoDropZone')
                    }
                }
                $uploadBtn.removeClass('ssi-hidden');
                $clearBtn.removeClass('ssi-hidden');
            }
            $clearBtn.prop('disabled', false);
            thisS.toUpload[index] = file;

            var filename = file.name;
            var ext = filename.getExtension(); //get file's extension获取文件扩展名
            thisS.imgNames[index] = filename; //register file's name寄存器文件名
            /*$('#myfile').val(filename);*/
            if (thisS.options.preview) {
                var getTemplate = function (content) {
                    //上传时显示图片
                     var data='<table class="ssi-imgToUploadTable ssi-pending">' +
                        '<tr><td class="ssi-upImgTd">' + content + '</td></tr>' +
                        '<tr><td><div id="ssi-uploadProgress' + index + '" class="ssi-hidden ssi-uploadProgress"></div></td></tr>' +
                        '<tr><td><button data-delete="' + index + '" class=" ssi-button error ssi-removeBtn"><span class="trash10 trash"></span></button></td></tr>' +
                        '<tr><td>' + cutFileName(filename, ext, 15) + '</td></tr>'+
                        '<tr><td><input name="myfile" id="myfile" type="text" value="'+ filename +'"/></td></tr></table>'

                    return data;
                };

                var fileType = file.type.split('/');
                if (fileType[0] == 'image') {
                    $uploadBtn.prop("disabled", true);
                    $clearBtn.prop("disabled", true);
                    var fileReader = new FileReader();
                    fileReader.onload = function () {
                        imgContent += getTemplate('<img class="ssi-imgToUpload" src=""/><i class="fa-spin fa fa-spinner fa-pulse"></i>'); // set the files element without the img没有设置文件的IMG元素
                        imgs[index] = fileReader.result;
                        j++;
                        if (toUploadLength === j) {// if all elements are in place lets load images如果所有元素都到位让加载图像
                            $uploadBox.append(imgContent);
                            $uploadBtn.prop("disabled", false);
                            $clearBtn.prop("disabled", false);
                            setTimeout(function () {
                                setImg();//and load the images加载图像
                            }, 10);
                            imgContent = '';
                            toUploadLength = [];
                        }
                    };
                    fileReader.readAsDataURL(file);
                } else {
                    imgs[index] = null;
                    $uploadBox.append(getTemplate('<div class="document-item" href="test.mov" filetype="' + ext + '"><span class = "fileCorner"></span></div>'));
                    j++;
                }
            } else {
                thisS.$element.find('.ssi-namePreview').html((index === 0 ? cutFileName(filename, ext, 13) : (thisS.currentListLength + 1) + ' ' + thisS.language.files));//set name preview集名称预览
                $fileList.append('<tr class="ssi-space"><td></td></tr>' +//append files element to dom
                    '<tr class="ssi-toUploadTr ssi-pending"><td><div id="ssi-uploadProgress' + index + '" class="ssi-hidden ssi-uploadProgress ssi-uploadProgressNoPre"></div>' +
                    '<span>' + cutFileName(filename, ext, 20) + '</span></td>' +
                    '<td><a data-delete="' + index + '" class="ssi-button ssi-removeBtn  ssi-removeBtnNP"><span class="trash7 trash"></span></a></td></tr>');
            }

            var setImg = function () {//load the images加载图像
                for (var i = 0; i < imgs.length; i++) {
                    if (imgs[i] !== null) {
                        $uploadBox.find("#ssi-uploadProgress" + i).parents('table.ssi-imgToUploadTable')
                            .find('.ssi-imgToUpload')
                            .attr('src', imgs[i]) //set src of the image设置图像的
                            .next().remove();//remove the spinner删除微调
                        imgs[i] = null;
                    }
                }
                imgs = [];
            };
        }
    };
    var clearCompleted = function (thisS) {//clear all completed files清除所有已完成的文件
        var $completed = thisS.$element.find('.ssi-completed');
        thisS.successfulUpload = 0;
        thisS.aborted = 0;
        thisS.abortedWithError = 0;
        if (!thisS.options.preview)$completed.prev('tr').remove();
        $completed.remove();
    };
    var clearPending = function (thisS) {//clear all pending files清除所有未决文件
        var $pending = thisS.$element.find('.ssi-pending');
        var length = thisS.imgNames.length;
        for (var i = 0; i < length; i++) {
            if (thisS.imgNames[i] === null) {
                thisS.toUpload.splice(i, 1);
                thisS.imgNames.splice(i, 1);
            }
        }
        thisS.toUpload.splice(-thisS.pending, thisS.pending);
        thisS.imgNames.splice(-thisS.pending, thisS.pending);
        thisS.pending = 0;
        if (!thisS.options.preview)$pending.prev('tr').remove();
        $pending.remove();
    };

    Ssi_upload.prototype.clear = function (action) {//clean the list of all non in progress files清理所有非进展文件清单
        switch (action) {
            case 'pending':
                clearPending(this);
                break;
            case 'completed':
                clearCompleted(this);
                break;
            default:
                clearPending(this);
                clearCompleted(this);
        }
        var $uploadBtn = this.$element.find('#ssi-uploadBtn'),
            $clearBtn = this.$element.find('#ssi-clearBtn');
        this.currentListLength = getCurrentListLength(this);
        if (this.inProgress === 0) { //if no file are uploading right now如果没有文件上传现在
            this.totalProgress = [];
        }
        if ((this.currentListLength === 0)) { // if no items in the list如果列表中没有项目
            $clearBtn.addClass('ssi-hidden');
            $uploadBtn.addClass('ssi-hidden');
            this.totalFilesLength = 0;
            if (!this.options.dropZone) {
                this.$element.find('.ssi-uploadBox').removeClass('ssi-uploadNoDropZone')
            }
        }
        $clearBtn.prop('disabled', true);
        $uploadBtn.prop('disabled', true);

        if (!this.options.preview) {
            setNamePreview(this);
        }
    };

    var setNamePreview = function (thisS) {//根据列表中的剩余元素设置名称预览
        if (thisS.currentListLength > 1) {//if more than one element left如果超过一个元素离开
            thisS.$element.find('.ssi-namePreview').html(thisS.currentListLength + ' files'); // set the name preview to the length of the remaining items将名称预览设置为剩余项目的长度

        } else if (thisS.currentListLength === 1) {//if one left
            setLastElementName(thisS); // set the name of the element设置元素的名称
        } else { //if no elements left
            thisS.$element.find('.ssi-uploadDetails').removeClass('ssi-uploadBoxOpened');
            thisS.$element.find('#ssi-fileList').empty();//empty list空表
            thisS.$element.find('.ssi-namePreview').empty();//empty the name preview清空名称预览
        }

    };
    Ssi_upload.prototype.uploadFiles = function () {// upload the pending files上传未上传文件
        if (this.pending > 0) {
            this.$element.find('#ssi-abortBtn').removeClass('ssi-hidden');
            this.$element.find('.ssi-removeBtn')
                .addClass('ssi-abortUpload')
                .removeClass('ssi-removeBtn')
                .children('span').removeClass('trash7 trash10 trash')
                .addClass((this.options.preview ? 'ban7w' : 'ban7'));//transform remove button to abort button转换删除按钮中止按钮
            var $uploadBtn = this.$element.find('#ssi-uploadBtn'),
                $clearBtn = this.$element.find('#ssi-clearBtn');
            $uploadBtn.prop("disabled", true);
            var thisS = this,
                formData = new FormData(),//设置表单数据
                i = this.totalFilesLength;
            if (this.totalFilesLength !== 0 && !this.options.preview) {
                setNamePreview(this);
            }
            this.inProgress += this.pending;// add pending to in progress添加挂起进程
            this.totalFilesLength += this.pending;// this variable is to prevent id duplication during uploads这个变量是在上传时防止ID重复
            this.pending = 0;
            if (this.inProgress === this.currentListLength) {// disable the clear button if no items in list we can be remove禁用清除按钮，如果没有列表中的项目，我们可以删除
                $clearBtn.prop("disabled", true);
            }
            while (this.toUpload[i] === null) { // do it until you find a file直到找到文件为止
                i++;
            }
            formData.append('files[]', thisS.toUpload[i]);//append the first file to the form data将第一文件追加到窗体数据中
            $.each(this.options.data, function (key, value) {// append all extra data附加所有额外数据
                formData.append(key, value);
            });
            if (typeof this.options.beforeUpload === 'function') {
                try {
                    this.options.beforeUpload();// execute the beforeUpload callback执行beforeupload回调
                } catch (err) {
                    console.log('There is an error in beforeUpload callback');
                    console.log(err);
                    thisS.abortAll();
                    return;
                }
            }
            thisS.$element.find('input.ssi-uploadInput').trigger('beforeUpload.ssi-uploader');
            ajaxLoopRequest(formData, i);// make the request提出要求
        }

        //--------------start of ajax request-----------------------
        // Ajax请求的开始
        function ajaxLoopRequest(formData, ii) {
            var selector = 'table.ssi-imgToUploadTable';
            if (!thisS.options.preview) {
                selector = 'tr.ssi-toUploadTr'
            }
            var uploadBar = thisS.$element.find('#ssi-uploadProgress' + ii);//get the file's  progress bar获取文件的进度条
            uploadBar.removeClass('ssi-hidden') //make it visible使其可见
                .parents(selector).removeClass('ssi-pending');
            var ajaxOptions = $.extend({}, {//store the request to the uploadList variable存储要求的uploadlist变量
                xhr: function () {
                    var xhr = new window.XMLHttpRequest();
                    xhr.upload.addEventListener('progress', function (e) {// add event listener to progress将事件监听器添加到进度
                        if (e.lengthComputable) {
                            var percentComplete = (e.loaded / e.total) * 100;// calculate the progress计算进度
                            if (uploadBar) {
                                uploadBar.css({
                                    width: percentComplete + '%'//update the progress bar width according to the progress根据进度更新进度条宽度
                                });
                            }
                            thisS.totalProgress[ii] = percentComplete;//store the progress to the array将进度存储到数组中
                            var sum = arraySum(thisS.totalProgress) / (thisS.inProgress + thisS.successfulUpload);//并计算整体进度
                            if (!thisS.options.preview) {
                                thisS.$element.find('#ssi-uploadProgressNoPreview')
                                    .removeClass('ssi-hidden')
                                    .css({
                                        width: sum + '%'
                                    });
                            }
                            $uploadBtn.find('#ssi-up_loading').html(Math.ceil(sum) + '%');// add to upload button the current overall progress percent number添加上传按钮当前整体进度百分比
                        }
                    }, false);
                    return xhr;
                },
                async: true,
                beforeSend: function (xhr) {
                    thisS.uploadList[ii] = xhr;
                    $uploadBtn.find('#ssi-up_loading') //add spiner to uploadbutton
                        .html('<i class="fa fa-spinner fa-pulse"></i>');
                    if (typeof thisS.options.beforeEachUpload === 'function') {
                        try {
                            var msg = thisS.options.beforeEachUpload({// execute the beforeEachUpload callback and save the returned value执行beforeeachupload回调并保存返回值
                                name: thisS.toUpload[ii].name,//send some info of the file 发送文件的一些信息
                                type: thisS.toUpload[ii].type,
                                size: (thisS.toUpload[ii].size / 1024).toFixed(2)

                            }, xhr);
                        } catch (err) {
                            console.log('There is an error in beforeEachUpload callback');
                            console.log(err);
                            thisS.abortAll();
                            return;
                        }
                    }
                    thisS.$element.find('input.ssi-uploadInput').trigger('beforeEachUpload.ssi-uploader');
                    if (xhr.status === 0) {
                        if (xhr.statusText === 'canceled') {//if user used beforeEachUpload to abort the request如果用户使用beforeeachupload中止请求
                            if (typeof msg === 'undefined') {//if no message如果没有消息
                                msg = false; //because user have already aborted the request set to false or anything else except undefined to prevent to abort it again因为用户已经中止了请求设置为false或其他任何
                            }
                            thisS.abortedWithError++;// we have one error more我们有一个错误更多
                            thisS.abort(ii, msg);//call the abort function调用中止函数
                        }
                    }
                },
                type: 'POST',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                url: thisS.options.url,
                error: function (request, error) {
                    if (error !== 'abort') {
                        uploadBar.addClass('ssi-canceledProgressBar');
                        var msg = thisS.language.error;
                        thisS.abortedWithError++;//add one more error增加一个错误
                        thisS.totalProgress.splice(ii, 1); //remove from progress array从进度数组中移除
                        if (!thisS.options.preview) {
                            msg = '<span class="exclamation7"></span>';
                        }
                        setElementMessage(thisS, ii, 'error', msg, thisS.language.serverError);
                        thisS.totalProgress[ii] = '';
                        thisS.inProgress--;
                        $clearBtn.prop("disabled", false);
                        if (typeof thisS.options.onEachUpload === 'function') {//execute the onEachUpload callback执行oneachupload回调
                            try {
                                thisS.options.onEachUpload({//and return some info并返回一些信息
                                    uploadStatus: 'error',
                                    name: thisS.toUpload[ii].name,
                                    size: (thisS.toUpload[ii].size / 1024).toFixed(2),
                                    type: thisS.toUpload[ii].type
                                });
                            } catch (err) {
                                console.log('There is an error in onEachUpload callback');
                                console.log(err);
                            }
                        }
                        if (getCompleteStatus(thisS)) {//if no more elements in progress如果没有更多的元素在进步
                            finishUpload(thisS);
                        }
                        console.log(arguments);//log the error记录错误
                        console.log(" Ajax error: " + error);
                    }
                }
            }, thisS.options.ajaxOptions);
            $.ajax(ajaxOptions).done(function (responseData, textStatus, jqXHR) {
                var msg, title = '', dataType = 'error', spanClass = 'exclamation', data;
                try {
                    data = $.parseJSON(responseData);
                } catch (err) {
                    data = responseData;
                }
                if (thisS.options.responseValidation) {
                    var valData = thisS.options.responseValidation;
                    if (typeof valData.validationKey === 'object' && valData.resultKey == 'validationKey') {
                        if (data.hasOwnProperty(valData.validationKey.success)) {
                            cb(true);
                        } else {
                            cb(false, data[valData.validationKey.error]);
                        }
                    } else {
                        if (data[valData.validationKey] == valData.success) {
                            cb(true);
                        } else {
                            cb(false, data[valData.resultKey]);
                        }
                    }
                } else {
                    if (jqXHR.status == 200) {
                        cb(true);
                    } else {
                        cb(false, data);
                    }
                }
                function cb(result, data) {
                    if (result) {//if response type is success如果响应类型成功
                        dataType = 'success';
                        msg = thisS.language.success;
                        spanClass = 'check';
                        thisS.successfulUpload++;// one more successful upload一次成功上传
                    } else {
                        uploadBar.addClass('ssi-canceledProgressBar');
                        if (thisS.options.preview) {
                            msg = thisS.language.error;
                        }
                        title = data;
                        thisS.abortedWithError++;
                    }
                }

                if (!thisS.options.preview) {
                    msg = '<span class="' + spanClass + '7"></span>';
                }
                setElementMessage(thisS, ii, dataType, msg, title);

                if (typeof thisS.options.onEachUpload === 'function') {//execute the onEachUpload callback执行oneachupload回调
                    try {
                        thisS.options.onEachUpload({//and return some info并返回一些信息
                            uploadStatus: dataType,
                            name: thisS.toUpload[ii].name,
                            size: (thisS.toUpload[ii].size / 1024).toFixed(2),
                            type: thisS.toUpload[ii].type
                        });
                    } catch (err) {
                        console.log('There is an error in onEachUpload callback');
                        console.log(err);
                    }
                }
                thisS.$element.find('input.ssi-uploadInput').trigger('onEachUpload.ssi-uploader');
                thisS.inProgress--;//one less in progress upload一个在进度上传
                $clearBtn.prop("disabled", false);
                if (getCompleteStatus(thisS)) {//if no more files in progress如果没有更多的文件正在进行中
                    finishUpload(thisS);
                }
                // thisS.totalProgress[ii]='';
                thisS.uploadList[ii] = '';
                thisS.toUpload[ii] = '';
                thisS.imgNames[ii] = '';
            });
            //--------------end of ajax request-----------------------
                  //Ajax请求结束
            i = ii;
            i++;//go to the next element转到下一个元素
            while (thisS.toUpload[i] === null) {// do it until you find a file直到找到文件为止
                i++;
            }
            if (i < thisS.toUpload.length) {// if more files exist start the next request如果存在更多文件启动下一个请求
                formData = new FormData();
                $.each(thisS.options.data, function (key, value) {
                    formData.append(key, value);
                });
                formData.append('files[]', thisS.toUpload[i]);
                ajaxLoopRequest(formData, i);
            }
        }
    };
    var setElementMessage = function (thisS, index, msgType, msg, title) {
        var className = '', elementSelector = 'table.ssi-imgToUploadTable', element;
        if (!thisS.options.preview) {
            className = 'ssi-noPreviewSubMessage';
            elementSelector = 'tr.ssi-toUploadTr';
            if (thisS.currentListLength === 1) {
                thisS.errors = title;
            }
        }

        element = thisS.$element.find(".ssi-abortUpload[data-delete='" + index + "']");
        element.parents(elementSelector).addClass('ssi-completed');
        element.after(getResultMessage(msgType, msg, title, className))
            .remove();
    };

    var getCompleteStatus = function (thisS) {//check if file are in progress检查文件是否正在进行中
        return (thisS.inProgress === 0);
    };

    var getResultMessage = function (type, msg, title, classes) {//return a message label返回信息标签
        return '<span class="ssi-statusLabel ' + classes + ' ' + type + '" data-status="' + title + '">' + msg + '</span>';
    };

    var getCurrentListLength = function (thisS) { //get the list length获取列表长度
        return (thisS.inProgress + thisS.successfulUpload + thisS.aborted + thisS.abortedWithError + thisS.pending);
    };
    var setLastElementName = function (thisS) { //if one file in list get the last file's name and put it to the name preview如果一个文件在列表中得到最后一个文件的名字，并把它命名预览
        var fileName = thisS.$element.find('#ssi-fileList').find('span').html();//find the only span left找到唯一的左边
        var ext = fileName.getExtension();//get the extension
        thisS.$element.find('.ssi-uploadDetails').removeClass('ssi-uploadBoxOpened');
        thisS.$element.find('.ssi-namePreview').html(cutFileName(fileName, ext, 15));//short the name and put it to the name preview短名称，并把它的名称预览
    };
    Ssi_upload.prototype.abort = function (index, title) {//abort a request中止请求
        if (typeof title === 'undefined') {//if no title如果没有标题
            this.uploadList[index].abort();// abort the element中止元
            this.totalProgress[index] = '';
            title = 'Aborted';
            this.aborted++;// one more aborted file一个失败的文件
        } else if (typeof title !== 'string') {//if not string that means that the request aborted with the beforeUpload callback and no message returned如果不是字符串，表示请求中止与beforeupload呼叫
            title = '';
        }
        //nothing of the above happened that means the user aborted the request with the beforeUpload callback and returned a message
       //以上都没有发生，这意味着用户用t中止了请求
        var msg = this.language.aborted;
        if (!this.options.preview) {
            msg = '<span class="ban7w"></span>';
        }
        setElementMessage(this, index, 'error', msg, title);
        this.$element.find('#ssi-uploadProgress' + index).removeClass('ssi-hidden').addClass('ssi-canceledProgressBar');
        this.toUpload[index] = undefined;
        this.uploadList[index] = undefined;
        this.imgNames[index] = undefined;
        this.$element.find('#ssi-clearBtn').prop("disabled", false);
        this.inProgress--;//one less in progress file一个进度文件少
        if (getCompleteStatus(this)) {//if no more file in progress如果没有更多的文件正在进行中
            finishUpload(this);
        }

    };

    var finishUpload = function (thisS) {//when every uplaod ends当每一个可以Uplaod结束

        thisS.$element.find('#ssi-abortBtn').addClass('ssi-hidden');
        if (!thisS.options.preview) {//在名称预览中显示主信息
            var type = 'error', title = '', msg = '';
            if (thisS.abortedWithError > 0) { //if no errors如果没有错误
                if (thisS.totalFilesLength === 1) {// if only one file in the list如果只有一个文件在列表中
                    title = thisS.errors; //显示错误
                } else {//else display something more general message其他显示更一般的信息
                    title = thisS.language.someErrorsOccurred
                }
                msg = '<span class="exclamation23"></span>';
            } else if (thisS.aborted > 0 && thisS.successfulUpload === 0) {//if all request aborted如果所有请求中止
                msg = '<span class="ban23"></span>';
                title = thisS.language.aborted;
            } else if (thisS.successfulUpload > 0) {// all request were successfull所有的请求都成功
                type = 'success';
                msg = '<span class="check23"></span>';
                title = thisS.language.sucUpload;
            }
            thisS.$element.find('.ssi-namePreview').append(getResultMessage(type, msg, title, 'ssi-noPreviewMessage'));//show the message in the name preview在名称预览中显示消息
            thisS.$element.find('#ssi-uploadProgressNoPreview') //remove main overall progress bar移除主总进度条
                .removeAttr('styles')
                .addClass('ssi-hidden');
        }
        if (typeof thisS.options.onUpload === 'function') {
            try {
                thisS.options.onUpload();//execute the on Upload callback执行上传回调
            } catch (err) {
                console.log('There is an error in onUpload callback');
                console.log(err);
            }
        }
        thisS.$element.find('input.ssi-uploadInput').trigger('onUpload.ssi-uploader');
        var $uploadBtn = thisS.$element.find('#ssi-uploadBtn');
        thisS.$element.find('#ssi-clearBtn').prop("disabled", false);
        $uploadBtn.prop("disabled", false)
            .find('#ssi-up_loading')
            .empty();
        if (thisS.pending === 0) {
            $uploadBtn.addClass('ssi-hidden');
            thisS.toUpload = [];
            thisS.imgNames = [];
            thisS.totalFilesLength = 0;
        }
        thisS.uploadList = [];
        thisS.totalProgress = [];
        thisS.currentListLength = getCurrentListLength(thisS);
        thisS.successfulUpload = 0;
        thisS.aborted = 0;
        thisS.abortedWithError = 0;
        thisS.inProgress = 0;
    };

    $.fn.ssi_uploader = function (opts) {
        var defaults = {
            url: '',
            data: {},
            locale: 'en',
            preview: true,
            dropZone: true,
            maxNumberOfFiles: '',
            responseValidation: false,
            maxFileSize: 2,
            ajaxOptions: {},
            onUpload: function () {
            },
            onEachUpload: function () {
            },
            beforeUpload: function () {
            },
            beforeEachUpload: function () {
            },
            allowed: ['jpg', 'jpeg', 'png', 'bmp', 'gif'],
            errorHandler: {
                method: function (msg) {
                    alert(msg);
                },
                success: 'success',
                error: 'error'
            }
        };
        var options = $.extend(true, defaults, opts);
        return this.each(function () {
            var $element = $(this);
            if ($element.is('input[type="file"]')) {
                if ($element.data('ssi_upload')) return;
                var ssi_upload = new Ssi_upload(this, options);
                $element.data('ssi_upload', ssi_upload);
            } else {
                console.log('The targeted element is not file input.')
            }

        });
    };
    //functions
    String.prototype.replaceText = function () {//replace $ with variables用变量替换$
        var args = Array.apply(null, arguments);
        var text = this;
        for (var i = 0; i < args.length; i++) {
            text = text.replace('$' + (i + 1), args[i])
        }
        return text;
    };
    String.prototype.getExtension = function () {//returns the extension of a path or file返回路径或文件的扩展名
        return this.split('.').pop().toLowerCase();
    };
    var cutFileName = function (word, ext, maxLength) {//缩短名称
        if (typeof ext === 'undefined')ext = '';
        if (typeof maxLength === 'undefined')maxLength = 10;
        var min = 4;
        if (maxLength < min)return;
        var extLength = ext.length;
        var wordLength = word.length;
        if ((wordLength - 2) > maxLength) {
            word = word.substring(0, maxLength);
            var wl = word.length - extLength;
            word = word.substring(0, wl);
            return word + '...' + ext;
        } else return word;
    };

    var arraySum = function (arr) {//return the sum of an array返回数组的和
        var sum = 0;
        for (var i = 0; i < arr.length; i++) {
            if (typeof arr[i] === 'number')
                sum += arr[i];
        }
        return sum;
    };

    var locale = {
        en: {
            success: 'Success',
            sucUpload: 'Successful upload',
            chooseFiles: '选择图片',
            uploadFailed: 'Upload failed',
            serverError: 'Internal server error',
            error: 'Error',
            abort: 'Abort',
            aborted: 'Aborted',
            files: 'files',
            upload: '上传',
            clear: '删除',
            drag: 'Drag n Drop',
            sizeError: '$1 exceed the size limit of $2',// $1=file name ,$2=max ie( example.jpg has has exceed the size limit of 2mb)
            extError: '$1 file types are not supported',//$1=file extension ie(exe files are not supported)
            someErrorsOccurred: 'Some errors occurred!'
        },
        gr: {
            success: 'Î•Ï€Î¹Ï„Ï…Ï‡Î¯Î±',
            sucUpload: 'Î•Ï€Î¹Ï„Ï…Ï‡Î®Ï‚ Î¼ÎµÏ„Î±Ï†ÏŒÏÏ„Ï‰ÏƒÎ·',
            chooseFiles: 'Î•Ï€Î¹Î»Î­Î¾Ï„Îµ Î±ÏÏ‡ÎµÎ¯Î±',
            uploadFailed: 'Î— Î¼ÎµÏ„Î±Ï†ÏŒÏÏ„Ï‰ÏƒÎ· Î±Ï€Î­Ï„Ï…Ï‡Îµ!',
            serverError: 'Î•ÏƒÏ‰Ï„ÎµÏÎ¹ÎºÏŒ ÏƒÏ†Î¬Î»Î¼Î± Î´Î¹Î±ÎºÎ¿Î¼Î¹ÏƒÏ„Î®!',
            error: 'Î£Ï†Î¬Î»Î¼Î±',
            abort: 'Î”Î¹Î±ÎºÎ¿Ï€Î®',
            aborted: 'Î”Î¹Î±ÎºÏŒÏ€Î·ÎºÎµ',
            files: 'Î±ÏÏ‡ÎµÎ¯Î±',
            upload: 'ÎœÎµÏ„Î±Ï†ÏŒÏÏ„Ï‰ÏƒÎ·',
            clear: 'Î•ÎºÎºÎ±Î¸Î¬ÏÎ¹ÏƒÎ·',
            drag: 'Î£Ï…ÏÎµÏ„Îµ ÎµÎ´ÏŽ...',
            sizeError: '$1 Î­Ï‡ÎµÎ¹ Î¾ÎµÏ€ÎµÏÎ¬ÏƒÎµÎ¹ Ï„Î¿ ÏŒÏÎ¹Î¿ Ï„Ï‰Î½ $2.',// $1=file name ,$2=max file size ie( example.jpg has has exceed the size limit of 2mb)
            extError: '$1 Î±ÏÏ‡ÎµÎ¯Î± Î´ÎµÎ½ Ï…Ï€Î¿ÏƒÏ„Î·ÏÎ¯Î¶Î¿Î½Ï„Î±Î¹.',// $1=file extension ie(exe files are not supported)
            someErrorsOccurred: 'Î£Î·Î¼ÎµÎ¹ÏŽÎ¸Î·ÎºÎ±Î½ Î¿ÏÎ¹ÏƒÎ¼Î­Î½Î± Î»Î¬Î¸Î·!'
        }
    };

}));/**
 * Created by Administrator on 2017/4/21.
 */

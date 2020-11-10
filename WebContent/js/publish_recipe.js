
$(document).ready(function() {
    $(".selectitem").hover(function(){
        $(this).find("dt").css("border-bottom","0px");
        $(this).find("dd").show();
        $(this).css("z-index","200");
    },function(){
        $(this).find("dt").css("border-bottom","1px");
        $(this).find("dd").hide();
        $(this).css("z-index","1");
        var l = $(this).find("span");
        $.each(l,function(){
            if($(this).attr("cur") == 1){
                $(this).addClass("current");
            }
        });
    });


    $(".selectitem span").hover(function(){
        $(this).siblings().removeClass("current");
        $(this).addClass("hover");
    },function(){
        $(this).removeClass("hover");
    });
    $(".selectitem span").click(function(){
        var _this=$(this);
        if(_this.html() == '\u539f\u521b'){
            $('#from_site').hide();
        }else if(_this.html() == '\u8f6c\u8f7d'){
            $('#from_site').show();
        }
        var v = _this.attr("val");
        var t = _this.html();
        _this.addClass("current");
        _this.siblings().attr("cur","0");
        _this.attr("cur","1");
        _this.parents(".selectitem").find("input").val(v);
        _this.parents(".selectitem").find("dt").html(t);
        _this.parent().hide();
    });
    $(".delsc").click(function(){
        var len = get_zlinputs_length();
        if($(this).parents("#zlinputs").length && len == 2 ){

            $("#zlinputs .row1_box_half .delsc").hide();
            get_location();
        }
        if($(this).parents("#zlinputs").length && len > 1 ){
            $(this).parents(".row1_box_half").remove();
            relist_zl();
            relist_fl();
            get_location();
        }else if($(this).parents("#zlinputs").length){
            alert("\u4e00\u9053\u83dc\u81f3\u5c11\u5e94\u8be5\u6709\u4e00\u4e2a\u4e3b\u6599\u54e6~");
        }else{
            $(this).parents(".row1_box_half").remove();
            relist_zl();
            relist_fl();
            get_location();
        }


    });
    $('#addazl').click(function () {
        if ($('#zlinputs .row1_box_half').length > 9) {
            alert('亲，主料太多就成一锅大杂烩了哦！');
        } else {
            $(this).parent().prev().append('<div class=\'row1_box_half\'><div class=\'suggestionsBox suggestions\' style=\'display:none;\'><ul class=\'suggestionList autoSuggestionsList\' ></ul></div><div class=\'input_text_item1\'><input class=\'inputtext_scname\' value=\'\' type=\'text\' placeholder=\'请填写主料名称\' name=\'q\' defaultval=\'请填写主料名称\' autocomplete=\'off\' href=\'/ajax/shicai_rel.php\'></div><div class=\'input_text_item2\'><input type=\'text\' placeholder=\'请填写用量\'></div><span class=\'delsc\'></span></div> ');
            $('#zlinputs .row1_box_half .delsc').show();
        }
        binddel1();
    });
    function binddel1() {
        $('.delsc').unbind();
        $('.delsc').hover(function () {
            $(this).addClass('hover');
        }, function () {
            $(this).removeClass('hover');
        });
        $('.delsc').click(function () {
            var len = get_zlinputs_length();
            if ($(this).parents('#zlinputs').length && len == 2) {
                $('#zlinputs .row1_box_half .delsc').hide();
            }
            if ($(this).parents('#zlinputs').length && len > 1) {
                $(this).parents('.row1_box_half').remove();
                relist_zl();
                relist_fl();
            } else if ($(this).parents('#zlinputs').length) {
                alert('一道菜至少应该有一个主料哦~');
            } else {
                $(this).parents('.row1_box_half').remove();
                relist_zl();
                relist_fl();
            }
        });
        relist_zl();
        relist_fl();
    }
    //添加辅料
    $('#addafl').click(function () {
        if ($('#flinputs .row1_box_half').length > 29) {
            alert('亲，这道菜难度未免太大了哦...');
        } else {
            $(this).parent().prev().append('<div class=\'row1_box_half\'><div class=\'suggestionsBox suggestions\' style=\'display:none;\'><ul class=\'suggestionList autoSuggestionsList\' ></ul></div><div class=\'input_text_item1\'><input class=\'inputtext_scname\' value=\'\' type=\'text\' placeholder=\'请填写辅料名称\' name=\'q\' defaultval=\'请填写辅料名称\' autocomplete=\'off\' href=\'/ajax/shicai_rel.php\'></div><div class=\'input_text_item2\'><input type=\'text\' placeholder=\'请填写用量\'></div><span class=\'delsc\'></span></div> ');
        }
        binddel1();
    });

    $('#addstep_btn').click(function () {
        add_step();
    });


    $('.moveUp').click(function () {
        moveUp($(this));
    });
    $('.moveDown').click(function () {
        moveDown($(this));
    });
    $('.addStep').click(function () {
        addStep($(this));
    });
    $('.delStep').click(function () {
        delStep($(this));
    });

    // 添加图片在页面显示
    $('#upload_top_img').on('change',function(){
        var filePath=$(this).val();
        var fileFormat=filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src=window.URL.createObjectURL(this.files[0]);
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('上传错误,文件格式必须为：png/jpg/jpeg');
            return;
        }
        $('#clickToUpload').attr('src',src);
    })

    $('#upload_top_img1').on('change',function(){
        var filePath=$(this).val();
        var fileFormat=filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src=window.URL.createObjectURL(this.files[0]);
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('上传错误,文件格式必须为：png/jpg/jpeg');
            return;
        }
        $('#clickToUpload1').attr('src',src);
    })
    $('#upload_top_img2').on('change',function(){
        var filePath=$(this).val();
        var fileFormat=filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src=window.URL.createObjectURL(this.files[0]);
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('上传错误,文件格式必须为：png/jpg/jpeg');
            return;
        }
        $('#clickToUpload2').attr('src',src);
    })
    $('#upload_top_img3').on('change',function(){
        var filePath=$(this).val();
        var fileFormat=filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src=window.URL.createObjectURL(this.files[0]);
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('上传错误,文件格式必须为：png/jpg/jpeg');
            return;
        }
        $('#clickToUpload3').attr('src',src);
    })
    $('#upload_top_img4').on('change',function(){
        var filePath=$(this).val();
        var fileFormat=filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src=window.URL.createObjectURL(this.files[0]);
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('上传错误,文件格式必须为：png/jpg/jpeg');
            return;
        }
        $('#clickToUpload4').attr('src',src);
    })
    var filePosition=$("#clickToUpload1").position().top;
    $('#upload_top_img1').css({
        position:"absolute",
        'top':filePosition+"px"
    })
    $('#upload_top_img2').css({
        position:"absolute",
        'top':filePosition+"px"
    })
    $('#upload_top_img3').css({
        position:"absolute",
        'top':filePosition+"px"
    })
    $('#upload_top_img4').css({
        position:"absolute",
        'top':filePosition+"px"
    })




});

//得到当前的input的长度
function get_zlinputs_length() {
    return $('#zlinputs .row1_box_half').length;
}
function relist_zl() {
    var list = $('#zlinputs input');
    var len = list.length;
    var i = 1;
    for (var i = 0; i < len; i++) {
        if (i % 2 == 0) {
            $(list[i]).attr('name', 'zlsc'+i);
        } else {
            $(list[i]).attr('name', 'zlyl'+i);
        }
    }
}

function relist_fl() {
    var list = $('#flinputs input');
    var len = list.length;
    for (var i = 0; i < len; i++) {
        if (i % 2 == 0) {
            $(list[i]).attr('name', 'flsc'+i);
        } else {
            $(list[i]).attr('name', 'flyl'+i);
        }
    }
}
function add_step() {
    if ($('#steps .stepitem').length > 99) {
        alert('大师，这道菜步骤未免太多了哦...');
    } else {
        var guid = guidGenerator();
        $('#addstep_btn').parent().prev().append('<div class=\'stepitem\'><div class=\'stepnum\'></div><div class=\'stepupload\'><iframe id=\'iframe_' + guid + '\' src=\'/iframe/pic_step.php?step=' + guid + '\' frameborder=\'0\' height=\'180\' width=\'180\' scrolling=\'no\'></iframe><input type=\'hidden\' id=\'step_img_' + guid + '\' name=\'step_img[]\' /></div><div class=\'stepright\'><div class=\'stepst_w\'><div class=\'stepst_tips\'>更多步骤细节（选填） ></div><div class=\'stepst\'><div class=\'step_scselect\'><div class=\'step_scselect_item\'><span class=\'t\'>此步骤所用食材：</span><input type=\'hidden\' value=\'\' class=\'step_sc_input\' name=\'step_sc_input[]\'><div class=\'c\'><dl class=\'zl clearfix\'><dt class=\'zl\'><span class=\'s1\'>主料</span><span class=\'s2\'>步骤用量（可修改）</span></dt></dl><dl class=\'fl clearfix\'><dt class=\'fl\'><span class=\'s1\'>辅料</span><span class=\'s2\'>步骤用量（可修改）</span></dt></dl></div></div><p>此步骤所用食材：</p><div class=\'selectitem_l\'><p>请选择食材</p></div></div><div class=\'step_timeselect\'><p>此步骤所用时间：</p><div class=\'timeinput\'><input type=\'text\' name=\'step_time[]\'></div><span class=\'timedw_select\'>分钟</span></div></div></div><input placeholder=\'请填写步骤描述\' name=\'step_text[]\'></input></div><div class=\'step_rightbtns\'><a href=\'####\' class=\'moveUp\'></a><a href=\'####\' class=\'moveDown\'></a><a href=\'####\' class=\'addStep\'></a><a href=\'####\' class=\'delStep\'></a></div></div>');
        get_location();
    }

    relist_step();
    bindSteprightEvents();
    bindStepScSelect();
}
function moveUp(ele) {
    var p = ele.parents('.stepitem');
    if (p.prev().length > 0) {
        p.prev().insertAfter(p);
//p.prev().remove();
        relist_step();
        bindSteprightEvents();
    } else {
        alert('这已经是第一步了哦！');
    }
}
function moveDown(ele) {
    var p = ele.parents('.stepitem');
    if (p.next().length > 0) {
        p.next().insertBefore(p);
//p.prev().remove();
        relist_step();
        bindSteprightEvents();
    } else {
        alert('这已经是最后一步了哦！');
    }
}
function addStep(ele) {
    var p = ele.parents('.stepitem');
    var guid = guidGenerator();
    p.after('<div class=\'stepitem\'><div class=\'stepnum\'></div>' +
        '<div class=\'stepupload\'>' +
        '<input type=\'hidden\' id=\'step_img_' + guid + '\' name=\'step_img[]\' />' +
        '</div>' +
        '<div class=\'stepright\'>' +
        '<input placeholder=\'请填写步骤描述\' name=\'step_text[]\'></input>' +
        '</div>' +
        '<div class=\'step_rightbtns\'>' +
        '<a href=\'####\' class=\'moveUp\'>' +
        '</a><a href=\'####\' class=\'moveDown\'></a><a href=\'####\' class=\'addStep\'></a><a href=\'####\' class=\'delStep\'></a></div></div>');
    get_location();
    relist_step();
    bindSteprightEvents();
    bindStepScSelect();
}
function delStep(ele) {
    var p = ele.parents('.stepitem');
    if (p.siblings().length == 0) {
        alert('大师，菜谱一个步骤都没有！叫我等如何领悟啊！')
    } else {

        p.remove();
        relist_step();
        bindSteprightEvents();
        bindStepScSelect();
        get_location();
    }
}
function get_location(){
    var filePosition=$("#clickToUpload1").position().top;
    $('#upload_top_img1').css({
        position:"absolute",
        'top':filePosition+"px"
    })
    var filePosition=$("#clickToUpload2").position().top;
    $('#upload_top_img2').css({
        position:"absolute",
        'top':filePosition+"px"
    })
    var filePosition=$("#clickToUpload3").position().top;
    $('#upload_top_img3').css({
        position:"absolute",
        'top':filePosition+"px"
    })
    var filePosition=$("#clickToUpload4").position().top;
    $('#upload_top_img4').css({
        position:"absolute",
        'top':filePosition+"px"
    })
}
function add_step() {
    if ($('#steps .stepitem').length > 99) {
        alert('大师，这道菜步骤未免太多了哦...');
    } else {
        var guid = guidGenerator();
        $('#addstep_btn').parent().prev().append(
            '<div class=\'stepitem\'><div class=\'stepnum\'></div>' +
            '<div class=\'stepupload\'>' +
            '<input type=\'hidden\' id=\'step_img_' + guid + '\' name=\'step_img[]\' />' +
            '</div>' +
            '<div class=\'stepright\'>' +
            '<input placeholder=\'请填写步骤描述\' name=\'step_text[]\'></input>' +
            '</div>' +
            '<div class=\'step_rightbtns\'>' +
            '<a href=\'####\' class=\'moveUp\'>' +
            '</a><a href=\'####\' class=\'moveDown\'></a><a href=\'####\' class=\'addStep\'></a><a href=\'####\' class=\'delStep\'></a></div></div>'
        );
        get_location();

    }
    relist_step();
    bindSteprightEvents();
    bindStepScSelect();
}
function relist_step() {
    var list = $('#steps .stepitem');
    var len = list.length;
    for (var i = 0; i < len; i++) {
        $(list[i]).find('.stepnum').html((i + 1) + '.');
    }
}

function bindStepScSelect() {
    $('.step_scselect').hover(function () {
        reshowSclist();
        reshowSclistInStep($(this));
        $(this).find('.step_scselect_item').show();
    }, function () {
        writeScInStep($(this));
        addScInStep($(this));
        $(this).find('.step_scselect_item').hide();
    });
    $('.stepst_tips').click(function () {
        $(this).hide();
        $(this).next().show();
    });
}
function relist_step() {
    var list = $('#steps .stepitem');
    var len = list.length;
    for (var i = 0; i < len; i++) {
        $(list[i]).find('.stepnum').html((i + 1) + '.');
    }
}
var zlListString = '';
var flListString = '';
function reshowSclist() {
    zlListString = '';
    flListString = '';
    var _item1 = $('#zlinputs .row1_box_half');
    $.each(_item1, function () {
        var _this = $(this);
        var zl = _this.find('.input_text_item1 input');
        var yl = _this.find('.input_text_item2 input');
        if (!(zl.val() == '' && yl.val() == '')) {
            zlListString += zl.val() + ',';
            zlListString += yl.val() + ';';
        }
    });
    var _item2 = $('#flinputs .row1_box_half');
    $.each(_item2, function () {
        var _this = $(this);
        var zl = _this.find('.input_text_item1 input');
        var yl = _this.find('.input_text_item2 input');
        if (!(zl.val() == '' && yl.val() == '')) {
            flListString += zl.val() + ',';
            flListString += yl.val() + ';';
        }
    });
}
function bindSteprightEvents() {
    $('.stepitem').unbind();
    $('.moveUp').unbind();
    $('.moveDown').unbind();
    $('.addStep').unbind();
    $('.delStep').unbind();
    $('.stepitem').hover(function () {
        $(this).find('.step_rightbtns').show();
    }, function () {
        $(this).find('.step_rightbtns').hide();
    });
    $('.moveUp').click(function () {
        moveUp($(this));
    });
    $('.moveDown').click(function () {
        moveDown($(this));
    });
    $('.addStep').click(function () {
        addStep($(this));
    });
    $('.delStep').click(function () {
        delStep($(this));
    });
}
function guidGenerator() {
    var S4 = function() {
        return (((1+Math.random())*0x10000)|0).toString(16).substring(1);
    };
    return (S4()+S4()+"-"+S4()+"-"+S4()+"-"+S4()+"-"+S4()+S4()+S4());
}

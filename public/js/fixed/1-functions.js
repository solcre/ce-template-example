var msgstr = new Array();
function formExampleValues(selectorForm) {
	$(selectorForm+' :input').example(function() {
		return $(this).attr('title');
	});
}
function formReloadExampleValues(selectorForm) {
	$(selectorForm).trigger("reload");
}
function scrollToSelector(selector, callback, duration, over) {
	if(typeOf(callback) != "function") {
		callback = function(){};
	}
	if(duration == null) {
		duration = 600;
	}
	if(over == null) {
		over = 0;
	}
	$.scrollTo($(selector), {
		duration: duration,
		axis: "y",
		onAfter: callback,
		over: over
	});
}
function efectoFoco(selector1, selector2, tiempo) {
	var over = function() { 
				var $img = $(this).find(selector2);
				$img.dequeue();
				$img.animate({opacity:"1"},tiempo); 
			};
	var out = function() {
				var $img = $(this).find(selector2);
				$img.dequeue();
				$img.animate({opacity:"0.5"},tiempo); 
			};
	$(selector1).hover(over, out);
}
function fixPng() {
	$(function() {
		if($.browser.msie && ($.browser.version.substr(0,1) < 7)){
			$("*").ifixpng();
		}
	});
}
function isSwf(filename) {
	var isValid = false;
	if(filename !== undefined) {
		extnRx = new RegExp('\.swf'.toUpperCase()+'$');
		if (extnRx.exec(filename.toUpperCase())) {
			isValid = true;
		}
	}
	return isValid;
}
function embedBannerGrupo(banners, width, height, vinculo) {
	/* De la forma:
	<div class="banner">
		<div id="banner-{$idBanner}">
		</div>
	</div>
	*/
	var i, banner;
	for(i in banners) {
		banner = banners[i];
		if(isSwf(banner.archivo) && ($("#banner-"+banner.id).length == 1)) {
			var flashvars = {
				href:vinculo+banner.vinculo
			};
			swfobject.embedSWF('images/banners/'+banner.archivo, 'banner-'+banner.id, width, height, '6', null, flashvars);
		}
	}
}


function formToMail(selector, action, callback, validateCallback, errorCallback) {
	var $form = $(selector);
	$form.attr("action",action);
	$form.submit(function() {
                var that = this;
                if (validar(that,validateCallback)) {
                        $form.ajaxSubmit({
                                type:"POST",
                                success:function(resp){ callback(resp, that) },
                                error:errorCallback
                        });
                }
        });	
}
function formToMailDefault(selector) {
	formToMail(selector, $(selector).attr("action"), contactoOK, contactoErrorValidar, contactoError);
}
function defaultFormValues(styles) {
	if(empty(styles)) {
		styles = {
			"color": "#999999",
			"font-style": "italic"
		};
	}
	function getStyles($objs) {
		var styles = [];
		$objs.each(function(index, obj){
			var $obj = $(obj);
			styles[index] = {
				"color": $obj.css("color"),
				"font-style": $obj.css("font-style")
			}
		});
		return styles;
	}
	function setStyle($obj, style) {
		return $obj.css(style);
	}
	function setStyles($objs, styles) {
		$objs.each(function(index, obj){
			setStyle($(obj), styles[index]);
		});
		return $objs;
	}
	var $inputs = $.merge($("form:not(.nodefault) input[type='text']"), $("form:not(.nodefault) textarea")).filter(function(){ return !empty($(this).val()); });
	var defaultStyles = getStyles($inputs);
	$inputs = setStyle($inputs, styles);
	$inputs.each(function(index, obj){
		var $obj = $(this);
		$obj.addClass("default_value");
		var value = $obj.val();
		$obj.focus(function(){
			var $this = $(this);
			if(($this.hasClass("default_value") && ($obj.val() == value)) || empty($this.val())) {
				$this.val("");
				setStyle($this, defaultStyles[index]);
				$this.removeClass("default_value");
			}
		});
		$obj.blur(function(){
			var $this = $(this);
			if(empty($this.val())) {
				$this.val(value);
				setStyle($this, styles);
				$this.addClass("default_value");
			}
		});
		$obj.parents("form").eq(0).submit(function(){
			if($obj.hasClass("default_value") && ($obj.val() == value)){
				$obj.val("");
			}
		});
	}) ;
}
function equalHeight(selector) {
    var maxHeight = 0;
    var height = 0;
    var $elements = $(selector);
    $elements.each(function() {
        height = parseInt($(this).height());
        if (height > maxHeight) {
            maxHeight = height;
        }
    });
    $elements.css({height:maxHeight+"px"});
}
function setupAddThisToolbox(selector) {
    $(selector).each(function() {
        var $this = $(this);
        var button_container = $this.find('.share_box').get(0);
        var $title = $this.find('.share_title');
        var $link = $this.find('.share_link');
        var share_url = $link.attr("href");
        if (share_url != null && share_url != "") {
            if (share_url.substring(0,7) != "http://" && share_url.substring(0,8) != "https://") {
                if (share_url.substring(0,1) == "/") {
                    share_url = getDomain()+share_url.substring(1);
                }
                else {
                    share_url = getBaseUrl()+share_url;
                }
            }
            var share_title = $title.html();            
            $this.find('.addthis_toolbox').attr('addthis:title',share_title);
            $this.find('.addthis_toolbox').attr('addthis:url',share_url);
            var $tweet = $this.find('.addthis_button_tweet');
            $tweet.attr("tw:url",share_url);
            $tweet.attr("tw:text",share_title);
            $tweet.attr("tw:via","Columnis"); 
            $tweet.attr("tw:counturl",share_url); 
            $tweet.attr("tw:related","Solcre");
            var $like = $this.find('.addthis_button_facebook_like');
            $like.attr("fb:href",share_url);
            var share_conf = {
                url: share_url, 
                title: share_title
            };
            var $send = $this.find('.addthis_button_facebook_send');
            if ($send.length > 0) {
                $like.attr("fb:send","true");
            }
            $send.attr("fb:href",share_url);
            var $plusone = $this.find('.addthis_button_google_plusone');
            $plusone.attr("g:plusone:size","medium");
            addthis.toolbox(button_container, {}, share_conf);        
        }
    });
}
var addthis_config = {
   data_track_addressbar: true
}

function centerDiv(selector, animate, notVisibleArea) {
    if (notVisibleArea === undefined) {
        notVisibleArea = 0;
    }
    var screenHeight = $(window).height();
    var visibileArea = screenHeight-notVisibleArea;
    var $selector = $(selector);
    var divHeight = $selector.height();
    if (divHeight < visibileArea && divHeight > 200) {
        var top = ((visibileArea/2) - (divHeight/2))+'px';
        var marginTop = '-'+(divHeight/2)+'px';
        if (animate) {
            $selector.animate({top: top, marginTop:marginTop},200);
        }
        else {
            $selector.css({top: top, marginTop:marginTop},200);
        }
    }
}
$(function() {
    jQuery.fn.center = function (animate) {
        this.css("position","absolute");
        var top = (($(window).height() - this.outerHeight()) / 2) + $(window).scrollTop();
        if (top < 0) {
            top = 0;
        }
        var left = (($(window).width() - this.outerWidth()) / 2) + $(window).scrollLeft();
        if (left < 0) {
            left = 0;
        }
        if (animate) {
            this.animate({ top : top + "px", left : left + "px" });
        }
        else {
            this.css("top", top + "px");
            //this.css("left", left + "px");
        }
        return this;
    }
});
function selectedHash(selector, selectedClass) {
    var hash = window.location.hash;
    var $selecteds = $(selector);
    $selecteds.each(function() {
        var $a = $(this);
        if ($a.attr('href') == undefined) {
            $a = $a.find('a:first');
        }
        if ($a.get(0).hash != hash) {
            $(this).removeClass(selectedClass);
        }
    });
}
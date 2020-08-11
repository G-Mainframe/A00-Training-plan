```javascript
<!-- Matomo -->
<script type="text/javascript">
  var _paq = window._paq || [];
  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//129.28.166.35:8081/sbmatomo/";
    _paq.push(['setTrackerUrl', u+'matomo.php']);
    _paq.push(['setSiteId', '3']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<!-- End Matomo Code -->
```

替换谷歌字体，解决谷歌被墙的问题

最近由于大家都心知肚明的原因，谷歌被彻底封禁。这次封禁直接导致许多谷歌服务无法使用。包括wordpress中的谷歌字体加载问题。

由于谷歌被封，所以网站在打开的时候，由于加载字体失败，左下角一直显示在加载http://fonts.googleapis.com/。导致网站前台后台打开速度极慢。目前流行的解决办法有两种。

一，代码插件法。这种方法不喜欢，就不多说了。

二，替换法。360已经将谷歌字体放在了自己的服务器，更改代码让网站从360服务器加载字体。

打开wordpress文件： wp-includes/script-loader.php   搜索关键字： fonts.googleapis.com  替换：fonts.googleapis.com替换为fonts.useso.com ，

保存之后，字体加载问题迎刃而解。360总算为广大网友做了件好事情。

我使用的是替换法。效果很明显。

http://www.sb-hrbp.com/Headhunters/assets/img/logo.png



<iframe frameborder="0" width="1100" height="560" 
src="https://v.qq.com/txp/iframe/player.html?vid=t30485bq0l5&autoplay=true" allowFullScreen="true" ></iframe>

参数:autoplay: Boorer  是否自动播放
vid:String  视频的vid




https://links.jianshu.com/go?to=https%3A%2F%2Ftgideas.qq.com%2Fdoc%2Ffrontend%2Fcomponent%2Fcommon%2Ftxplayer.html















想要在网页中嵌入优酷、土豆、爱奇艺的视频很简单，但是现在将腾讯视频嵌入网页后却不能正常显示，而腾讯视频现在的资源也越来越多，想直接将腾讯视频嵌入到网页中怎么操作呢？其实只需要一段代码就可以了。

首先，提供一个腾讯视频嵌入网页代码。我们只需替换这段代码的一部分就可以了。

<p style="text-align: center"><iframe class="video_iframe" style="z-index:1;" src="http://v.qq.com/iframe/player.html?vid=t01662frswa&amp;width=500&amp;height=375&amp;auto=0" allowfullscreen="" frameborder="0" height="375" width="500"></iframe></p>

找到一段腾讯视频，比如地址：

http://v.qq.com/boke/page/d/0/i/d0163kxz8di.html

这是一段《工业机器人工作场景》的视频，将这个网址的蓝色部分，替换到上面给出的代码中的红色部分，就可以了。

最终效果为：

<p style="text-align: center"><iframe class="video_iframe" style="z-index:1;" src="http://v.qq.com/iframe/player.html?vid=d0163kxz8di&amp;width=500&amp;height=375&amp;auto=0" allowfullscreen="" frameborder="0" height="375" width="500"></iframe></p>

把vid参数从腾讯视频网页查找

想将优酷视频、土豆视频、新浪视频等网站的视频调用到个人网站上面的方法非常简单，这些网站，均提供了直接调用的代码。如下图所示：

1、优酷网

youku.jpg

2、土豆网

tudou.jpg

3、新浪视频

xinlang.jpg

但是腾讯视频则是这样的（并没有提供嵌入网页的代码）：

tengxun.jpg

应该怎么办呢？

可以从微信公众平台中学习一下，因为腾讯视频，可以直接嵌入微信公众平台啊？点击查看：微信公众平台转载别人发的视频的方法

方法一：将视频在微信公众平台中的调用代码提取出来，如下所示：

<iframe class="video_iframe" style=" z-index:1; " src="http://v.qq.com/iframe/player.html?vid=m0137rrajuc&amp;width=300&amp;height=200&amp;auto=0" allowfullscreen="" frameborder="0" height="200" width="300"></iframe>

打开需要添加的腾讯视频网址，例如：http://v.qq.com/cover/z/zrxyhghf3n8xhxl/k0015trfczz.html

将上述代码中的vid=后面的内容替换成上述网址中标红的部分，然后将上述网址重新复制出来：

<iframe class="video_iframe" style=" z-index:1; " src="http://v.qq.com/iframe/player.html?vid=k0015trfczz&amp;width=300&amp;height=200&amp;auto=0" allowfullscreen="" frameborder="0" height="200" width="300"></iframe>

效果参见下方：

 

其中的视频的宽度（width）和高度（height）可以分别通过修改代码中对应的数值（本视频中width=300，height=200）来进行修改。

不自动播放

<iframe class="video_iframe" style=" z-index:1; " src="http://v.qq.com/iframe/player.html?vid=k0344pfymze&tiny=0&auto=0&isAutoPlay=false;width=300&amp;height=200&amp;auto=0" allowfullscreen="" frameborder="0" height="200" width="300"></iframe>

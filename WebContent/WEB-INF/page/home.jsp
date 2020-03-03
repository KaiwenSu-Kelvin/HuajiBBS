<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
  
<!DOCTYPE html>
<html>
<heada>
  <meta charset="utf-8">
  <title>${posts[1].user.name}的主页</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="layui/css/layui.css">
  <link rel="stylesheet" href="layui/css/global.css">
</head>
<body style="margin-top: 65px;">

<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="/">
      <img src="image/icon/logo.png" alt="huaji">
    </a>
    <ul class="layui-nav fly-nav layui-hide-xs">
      <li class="layui-nav-item layui-this">
        <a href="/"><i class="iconfont icon-jiaoliu"></i>交流</a>
      </li>
      <li class="layui-nav-item">
        <a href="../case/case.html"><i class="iconfont icon-iconmingxinganli"></i>案例</a>
      </li>
      <li class="layui-nav-item">
        <a href="http://www.layui.com/" target="_blank"><i class="iconfont icon-ui"></i>框架</a>
      </li>
    </ul>
    
    <ul class="layui-nav fly-nav-user">
      <c:choose>
      
      <c:when test="${not empty sessionScope.admin}">
      <!-- 管理员模式 -->
      
        <li class="layui-nav-item">
        <a class="fly-nav-avatar" href="javascript:;">
          <cite class="layui-hide-xs">${sessionScope.admin.name}</cite>
          <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
          <i class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i>
          <img src="/HuajiBBS/image/manager/${sessionScope.admin.head }">
        </a>
        <dl class="layui-nav-child">
        	<dd><a href="http://localhost:8101/HuajiBBS//managerPage" style="text-align: center;">管理界面</a></dd>
			 <dd><a href="http://localhost:8101/HuajiBBS/adminOutLogin" style="text-align: center;">注销</a></dd>
        </dl>
      </li>
      </c:when>
      
      <c:when test="${empty sessionScope.user}">
      <!-- 未登入的状态 -->
      <li class="layui-nav-item">
        <a class="iconfont icon-touxiang layui-hide-xs" href="user/login.html"></a>
      </li>
      <li class="layui-nav-item">
        <a href="http://localhost:8101/HuajiBBS/login">登入</a>
      </li>
      <li class="layui-nav-item">
        <a href="http://localhost:8101/HuajiBBS/regist">注册</a>
      </li>
      <li class="layui-nav-item layui-hide-xs">
        <a href="/app/qq/" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>
      </li>
      <li class="layui-nav-item layui-hide-xs">
        <a href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>
      </li>
      </c:when>
      
      
      
      <c:when test="${not empty sessionScope.user}">
      <!-- 登入后的状态 -->
      
        <li class="layui-nav-item">
        <a class="fly-nav-avatar" href="javascript:;">
          <cite class="layui-hide-xs">${sessionScope.user.name}</cite>
          <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
          <i class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i>
          <img src="/HuajiBBS/image/head/${sessionScope.user.head }">
        </a>
        <dl class="layui-nav-child">
          <dd><a href="../user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
          <dd><a href="../user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
          <dd><a href="http://localhost:8101/HuajiBBS/showUserPost?user_id=${sessionScope.user.id }"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
          <hr style="margin: 5px 0;">
          <dd><a href="http://localhost:8101/HuajiBBS/outLogin" style="text-align: center;">注销</a></dd>
        </dl>
      </li>
      </c:when>
      </c:choose>
    </ul>
  </div>
</div>

<div class="fly-home fly-panel" style="background-image: url();">
  <img src="image/head/${posts[1].user.head }" alt="头像">
  <i class="iconfont icon-renzheng" title="Fly社区认证"></i>
  <h1>
   ${posts[1].user.name}
    <i class="iconfont icon-nan"></i>
    <!-- <i class="iconfont icon-nv"></i>  -->
    <i class="layui-badge fly-badge-vip">VIP3</i>
    <!--
    <span style="color:#c00;">（管理员）</span>
    <span style="color:#5FB878;">（社区之光）</span>
    <span>（该号已被封）</span>
    -->
  </h1>

  <p style="padding: 10px 0; color: #5FB878;">邮箱：${posts[1].user.email}</p>

  <p class="fly-home-info">
    <i class="iconfont icon-kiss" title="飞吻"></i><span style="color: #FF7200;">66666 飞吻</span>
    <i class="iconfont icon-shijian"></i><span>2015-6-17 加入</span>
    <i class="iconfont icon-chengshi"></i><span>来自杭州</span>
  </p>

  <p class="fly-home-sign">（人生仿若一场修行）</p>

  <div class="fly-sns" data-user="">
    <a href="javascript:;" class="layui-btn layui-btn-normal fly-imActive" data-type="chat">关注此人</a>
  </div>

</div>

<div class="layui-container">
  <div class="layui-row layui-col-space15">
    <div class="layui-col-md12 fly-home-jie">
      <div class="fly-panel">
        <h3 class="fly-panel-title">最近发帖</h3>
        <ul class="jie-row">
        
        
        
        
 <%--     <li>
            <span class="fly-jing">精</span>
            <a href="${pageContext.request.contextPath}/showUserPost" class="jie-title"> 跳转</a>
            <i>刚刚</i>
            <em class="layui-hide-xs">1136阅/27答</em>
          </li>
          <li>
            <a href="" class="jie-title"> 基于 layui 的极简社区页面模版</a>
            <i>1天前</i>
            <em class="layui-hide-xs">1136阅/27答</em>
          </li>
          <li>
            <a href="" class="jie-title"> 基于 layui 的极简社区页面模版</a>
            <i>2017-10-30</i>
            <em class="layui-hide-xs">1136阅/27答</em>
          </li> --%>
          
     <c:forEach items="${posts}" var="post">

		   <li>
            <a href="http://localhost:8101/HuajiBBS/post?postId=${post.id }" class="jie-title"> ${post.title}</a>
            <i>${post.time }</i>
            <em class="layui-hide-xs">999阅/${fn:length(post.floors)}答</em>
          </li>
	

		
	</c:forEach>
        
          
          
          
          
          <!-- <div class="fly-none" style="min-height: 50px; padding:30px 0; height:auto;"><i style="font-size:14px;">没有发表任何求解</i></div> -->
        </ul>
      </div>
    </div>
    
    <!--<div class="layui-col-md6 fly-home-da">
      <div class="fly-panel">
        <h3 class="fly-panel-title">贤心 感兴趣的板块</h3>
        <ul class="home-jieda">
          <!--<li>
          <p>
          <span>1分钟前</span>
          在<a href="" target="_blank">tips能同时渲染多个吗?</a>中回答：
          </p>
          <div class="home-dacontent">
            尝试给layer.photos加上这个属性试试：
<pre>
full: true         
</pre>
            文档没有提及
          </div>
        </li>
        <li>
          <p>
          <span>5分钟前</span>
          在<a href="" target="_blank">在Fly社区用的是什么系统啊?</a>中回答：
          </p>
          <div class="home-dacontent">
            Fly社区采用的是NodeJS。分享出来的只是前端模版
          </div>
        </li>
        
          <!-- <div class="fly-none" style="min-height: 50px; padding:30px 0; height:auto;"><span>没有回答任何问题</span></div> -->
        <!--</ul>
      </div>
    </div>-->
  </div>
</div>

<div class="fly-footer">
  <p><a href="http://fly.layui.com/" target="_blank">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
  <p>
    <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
    <a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>
    <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
  </p>
</div>

<script src="layui/layui.js"></script>
<script>
layui.cache.page = 'user';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: '../../res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "3.0.0"
  ,base: 'layui/res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>

</body>
</html>
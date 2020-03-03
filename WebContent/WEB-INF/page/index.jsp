<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>HuajiBBS——国内领先的IT论坛</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="layui/css/layui.css">
  <link rel="stylesheet" href="layui/css/global.css">
</head>
<body>

<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="/">
      <img src="image/icon/logo.png" alt="huaji">
    </a>

    <ul class="layui-nav fly-nav-user">
      <c:choose>
      
      <c:when test="${not empty sessionScope.admin.name}">
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

<div class="fly-panel fly-column">
  <div class="layui-container">
    <ul class="layui-clear">
      <!--<li class="layui-hide-xs"><a href="/">首页</a></li> 
      <li class="layui-this"><a href="">提问</a></li> 
      <li><a href="">分享<span class="layui-badge-dot"></span></a></li> 
      <li><a href="">讨论</a></li> 
      <li><a href="">建议</a></li> 
      <li><a href="">公告</a></li> 
      <li><a href="">动态</a></li> -->
      
      <span class="layui-breadcrumb" lay-separator=">">
		  <a href="">首页</a>
		</span>
      
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> 
      
      <!-- 用户登入后显示 -->
      <c:if test="${not empty sessionScope.user.name}">
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="http://localhost:8101/HuajiBBS/showUserPost?user_id=${sessionScope.user.id}">我发表的贴</a></li> 
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="http://localhost:8101/HuajiBBS/showUserPost?user_id=${sessionScope.user.id}">我收藏的贴</a></li> 
      </c:if>
    </ul> 
    
    <div class="fly-column-right layui-hide-xs"> 
      <span class="fly-search"><i class="layui-icon"></i></span> 
    </div> 
    <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> 
      <a href="add.html" class="layui-btn">发表新帖</a> 
    </div> 
  </div>
</div>


<!--主内容-->

<div class="layui-container">
	
	
	
  <div class="layui-row layui-col-space20">
  	
  	
  	
  	
  	
  	
  	
  	
	<div class="layui-col-md8">
	<c:forEach items="${categories}" var="categorie">
			<!--大标题-->
			<div class="section" style="margin-bottom: 20px;">
				<span style="font-size: 24px">${categorie.name}</span>
				<hr class="layui-bg-green">
				
				<div class="layui-row grid-demo">
				<c:forEach items="${categorie.sections}" var="section">
					<!--内容-->
					<div style="float: left; width: 200px; margin: 10px">
					<a href="http://localhost:8101/HuajiBBS/section?sectionId=${section.id }&page=1">
						<%-- <table>
							<th rowspan="3"><img src="image/section/${section.image }" style="height: 50px"></th>
							<tr>
								<td align="center"><strong>${section.name}</strong></td>
							</tr>
							<tr>
								<td align="center">${section.text}</td>
							</tr>						
						</table> --%>			
						<img src="image/section/${section.image }" style="height: 50px; float: left;">		
						<span style="align: center;"><strong>${section.name}</strong></span><br>
						<span style="align: center;">${section.text}</span>
					</a>
					</div>
					</c:forEach>
				</div>
			</div>
			
	</c:forEach>
	</div>
    
    
    
    
    
    
    
    
    
    
    
    <div class="layui-col-md4">
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">本周热议</dt>
        <c:forEach items="${posts }" var="post" end="10">
        <dd>
          <a href="http://localhost:8101/HuajiBBS/post?postId=${post.id }">${post.title }</a>
          <span><i class="iconfont icon-pinglun1"></i> ${fn:length(post.floors) }</span>
        </dd>
		</c:forEach>

        <!-- 无数据时 -->
        <!--
        <div class="fly-none">没有相关数据</div>
        -->
      </dl>

      <div class="fly-panel">
        <div class="fly-panel-title">
          这里可作为广告区域
        </div>
        <div class="fly-panel-main">
          <a href="" target="_blank" class="fly-zanzhu" style="background-color: #393D49;">虚席以待</a>
        </div>
      </div>
      
      <div class="fly-panel fly-link">
        <h3 class="fly-panel-title">友情链接</h3>
        <dl class="fly-panel-main">
          <dd><a href="http://www.layui.com/" target="_blank">layui</a><dd>
          <dd><a href="http://layim.layui.com/" target="_blank">WebIM</a><dd>
          <dd><a href="http://layer.layui.com/" target="_blank">layer</a><dd>
          <dd><a href="http://www.layui.com/laydate/" target="_blank">layDate</a><dd>
          <dd><a href="mailto:xianxin@layui-inc.com?subject=%E7%94%B3%E8%AF%B7Fly%E7%A4%BE%E5%8C%BA%E5%8F%8B%E9%93%BE" class="fly-link">申请友链</a><dd>
        </dl>
      </div>

    </div>
  </div>
</div>

<div class="fly-footer">
  <p><a href="http://fly.layui.com/" target="_blank">滑稽社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">滑稽小组 出品</a></p>
  <p>
    <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
    <a href="http://www.layui.com/template/fly/" target="_blank">滑稽</a>
    <a href="http://fly.layui.com/jie/2461/" target="_blank">滑稽</a>
  </p>
</div>

<script src="layui/layui.js"></script>
<script src="layui/jquery.min.js"></script>
<script>
layui.cache.page = 'jie';
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
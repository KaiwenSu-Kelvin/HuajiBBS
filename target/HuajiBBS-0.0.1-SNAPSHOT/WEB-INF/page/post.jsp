<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

 
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>${post.title }</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="layui/css/layui.css">
  <link rel="stylesheet" href="layui/css/global.css">
</head>

<body>
<% request.setCharacterEncoding("UTF-8"); %>
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

<div class="layui-hide-xs">
  <div class="fly-panel fly-column">
    <div class="layui-container">
      <ul class="layui-clear">
        <span class="layui-breadcrumb" lay-separator=">">
		  <a href="http://localhost:8101/HuajiBBS/index">首页</a>
		  <a href="">${post.section.category.name }</a>
		  <a href="http://localhost:8101/HuajiBBS/section?sectionId=${post.section.id }&page=1">${post.section.name }</a>
		  <a href="">${post.title }</a>
		</span>
        <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> 
        
        <c:if test="${not empty sessionScope.user.name}">
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="http://localhost:8101/HuajiBBS/showUserPost">我发表的贴</a></li> 
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="http://localhost:8101/HuajiBBS/showUserPost">我收藏的贴</a></li> 
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
</div>

<div class="layui-container">
  <div class="layui-row layui-col-space15">
    <div class="layui-col-md8 content detail">
      <div class="fly-panel detail-box">
        <h1>${post.title }</h1>
        <div class="fly-detail-info">
          <!-- <span class="layui-badge">审核中</span> -->
          <!-- <span class="layui-badge layui-bg-green fly-detail-column">动态</span>
          
          <span class="layui-badge" style="background-color: #999;">未结</span> -->
          <!-- <span class="layui-badge" style="background-color: #5FB878;">已结</span> -->
          <c:if test="${post.top_status == 1 }">
          <span class="layui-badge layui-bg-black">置顶</span>
          </c:if>
          <span class="layui-badge layui-bg-red">精帖</span>
          
          <c:if test="${not empty sessionScope.admin }">
          <div class="fly-admin-box" data-id="123">
            <a href="http://localhost:8101/HuajiBBS/ban/banPost_inPost?pid=${post.id }">
            	<span class="layui-btn layui-btn-xs" type="del">删除</span>
            </a>
            
            <c:if test="${post.top_status == 0  }">
            	<a href="http://localhost:8101/HuajiBBS/ban/stickPost_inPost?pid=${post.id }">
            		<span class="layui-btn layui-btn-xs" type="set" field="stick" rank="1">置顶</span> 
            	</a>
            </c:if>
            
            
            <span class="layui-btn layui-btn-xs" type="set" field="status" rank="1">加精</span> 
            <!-- <span class="layui-btn layui-btn-xs jie-admin" type="set" field="status" rank="0" style="background-color:#ccc;">取消加精</span> -->
          </div>
          </c:if>
          <span class="fly-list-nums"> 
            <a href="#comment"><i class="iconfont" title="回答">&#xe60c;</i> ${fn:length(post.floors)}</a>
            <i class="iconfont" title="人气">&#xe60b;</i> 99999
          </span>
        </div>
        <div class="detail-about">
          <a class="fly-avatar" href="http://localhost:8101/HuajiBBS/showUserPost?user_id=${post.user.id }">
            <img src="image/head/${post.user.head }" alt="贤心">
          </a>
          <div class="fly-detail-user">
            <a href="http://localhost:8101/HuajiBBS/showUserPost?user_id=${post.user.id }" class="fly-link">
              <cite>${post.user.name }</cite>
              <i class="iconfont icon-renzheng" title="认证信息：{{ rows.user.approve }}"></i>
              <i class="layui-badge fly-badge-vip">VIP3</i>
            </a>
            <span><fmt:formatDate value="${post.time }" pattern="yyyy-MM-dd HH:mm"/></span>
          </div>
          <div class="detail-hits" id="LAY_jieAdmin" data-id="123">
            <span style="padding-right: 10px; color: #FF7200">悬赏：60飞吻</span>  
            <c:if test="${sessionScopr.user == post.user.name }">
            <span class="layui-btn layui-btn-xs jie-admin" type="edit"><a href="add.html">编辑此贴</a></span>
          	</c:if>
          </div>
        </div>
        
        <!--楼主层-->
      <div class="detail-body photos">
          <pre>
${post.content}
          </pre>
          <p>简单说两句</p>
<pre>
专注互联网技术革新好几年
滑稽+++值得拥有
</pre>
          
          下载<hr>
          <p>
            官网：<a href="http://www.layui.com/template/fly/" target="_blank">http://www.layui.com/template/fly/</a><br>
            码云：<a href="https://gitee.com/sentsin/fly/" target="_blank">https://gitee.com/sentsin/fly/</a><br>
            GitHub：<a href="https://github.com/layui/fly" target="_blank">https://github.com/layui/fly</a>
          </p>
          封面<hr>
          <p>
            <img src="../../res/images/fly.jpg" alt="Fly社区">
          </p>
        </div>
      </div>


<!--回帖展示层-->
      <div class="fly-panel detail-box" id="flyReply">
        <fieldset class="layui-elem-field layui-field-title" style="text-align: center;">
          <legend>回帖</legend>
        </fieldset>

        <ul class="jieda" id="jieda">
          <%-- <li data-id="111" class="jieda-daan">
            <a name="item-1111111111"></a>
            <div class="detail-about detail-about-reply">
              <a class="fly-avatar" href="">
                <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt=" ">
              </a>
              <div class="fly-detail-user">
                <a href="" class="fly-link">
                  <cite>贤心</cite>
                  <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                  <i class="layui-badge fly-badge-vip">VIP3</i>              
                </a>
                
                <span>(楼主)</span>
                <!--
                <span style="color:#5FB878">(管理员)</span>
                <span style="color:#FF9E3F">（社区之光）</span>
                <span style="color:#999">（该号已被封）</span>
                -->
              </div>

              <div class="detail-hits">
                <span>2017-11-30</span>
              </div>

             <!-- <i class="iconfont icon-caina" title="最佳答案"></i>-->
            </div>
            <div class="detail-body jieda-body photos">
              <p>这是一条精彩的回帖</p>
            </div>
            <div class="jieda-reply">
              <span class="jieda-zan zanok" type="zan">
                <i class="iconfont icon-zan"></i>
                <em>66</em>
              </span>
              <span type="reply">
                <i class="iconfont icon-svgmoban53"></i>
                回复
              </span>
              <div class="jieda-admin">
                <span type="edit">编辑</span>
                <span type="del">删除</span>
                <!-- <span class="jieda-accept" type="accept">采纳</span> -->
              </div>
            </div>
          </li> --%>
          <c:forEach items="${floors }" var="floor">
          <li data-id="111">
            <a name="item-1111111111"></a>
            <div class="detail-about detail-about-reply">
              <a class="fly-avatar" href="">
                <img src="image/head/${floor.user.head }" alt=" ">
              </a>
              <div class="fly-detail-user">
                <a href="http://localhost:8101/HuajiBBS/showUserPost?user_id=${floor.user.id }" class="fly-link">
                  <cite>${floor.user.name }</cite>       
                </a>
              </div>
              <div class="detail-hits">
                <span><fmt:formatDate value="${floor.datetime }" pattern="yyyy-MM-dd HH:mm"/></span>
              </div>
            </div>
            <div class="detail-body jieda-body photos">
              <p>${floor.content }</p>
            </div>
            <div class="jieda-reply">
              <span class="jieda-zan" type="zan">
                <i class="iconfont icon-zan"></i>
                <em>0</em>
              </span>
              <span type="reply">
                <i class="iconfont icon-svgmoban53"></i>
                回复
              </span>
              <!-- <div class="jieda-admin">
                <span type="edit">编辑</span>
                <span type="del">删除</span>
                <span class="jieda-accept" type="accept">采纳</span>
              </div> -->
            </div>
          </li>
          </c:forEach>
          
          <!-- 无数据时 -->
          <!-- <li class="fly-none">消灭零回复</li> -->
        </ul>
        
        <!--回帖层-->
        <div class="layui-form layui-form-pane">
          <form action="http://localhost:8101/HuajiBBS/reply?post_id=${post.id }&user_id=${sessionScope.user.id}" method="post">
            <div class="layui-form-item layui-form-text">
              <a name="comment"></a>
              <div class="layui-input-block">
              <c:choose>
              <c:when test="${not empty sessionScope.user }">
                <textarea id="L_content" name="content" required lay-verify="required" placeholder="请输入内容"  class="layui-textarea fly-editor" style="height: 150px;resize:none"></textarea>
                </c:when>
                <c:when test="${empty sessionScope.user }">
	              	<textarea readonly="value" id="L_content" name="content" required lay-verify="required" placeholder="登录后可进行回复"  class="layui-textarea fly-editor" style="height: 150px;resize:none"></textarea>
	             </c:when>
	              </c:choose>
              </div>
            </div>
            <div class="layui-form-item">
              <input type="hidden" name="jid" value="123">
              <c:choose>
	              <c:when test="${not empty sessionScope.user }">
	              	<button class="layui-btn">提交回复</button>
	              </c:when>
              </c:choose>
            </div>
          </form>
        </div>
      </div>
      
      
      
    </div>
    <div class="layui-col-md4">
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">本周热议</dt>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>

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
          <a href="http://layim.layui.com/?from=fly" target="_blank" class="fly-zanzhu" time-limit="2017.09.25-2099.01.01" style="background-color: #5FB878;">LayIM 3.0 - layui 旗舰之作</a>
        </div>
      </div>

      <div class="fly-panel" style="padding: 20px 0; text-align: center;">
        <img src="image/money/WeChat.jpg" style="max-width: 100%;" alt="layui">
        <p style="position: relative; color: #666;">请帮助我们</p>
      </div>

    </div>
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
}).use(['fly', 'face'], function(){
  var $ = layui.$
  ,fly = layui.fly;
  //如果你是采用模版自带的编辑器，你需要开启以下语句来解析。
  /*
  $('.detail-body').each(function(){
    var othis = $(this), html = othis.html();
    othis.html(fly.content(html));
  });
  */
});
</script>

</body>
</html>
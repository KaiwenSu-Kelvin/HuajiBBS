<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>后台管理首页</title>
  <link rel="stylesheet" href="layui/css/layui.css">
  <link rel="stylesheet" href="layui/css/layer.css">
  <link rel="stylesheet" href="layui/css/admin.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">滑稽bbs后台管理</div>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="<%=request.getContextPath()%>/image/manager/${sessionScope.admin.head }" class="layui-nav-img">
          	管理员：${sessionScope.admin.name }
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="http://localhost:8101/HuajiBBS/adminOutLogin">注销</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">所有功能</a>
          <dl class="layui-nav-child">
            <dd><a href="http://localhost:8101/HuajiBBS/managerPage">主页</a></dd>
            <dd><a href="http://localhost:8101/HuajiBBS/manage/post">帖子管理</a></dd>
            <dd><a href="http://localhost:8101/HuajiBBS/manage/user">用户管理</a></dd>
            <dd><a href="http://localhost:8101/HuajiBBS/index">论坛入口</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    	<div class="layui-col-md8">
      <div class="layui-row layui-col-space15">
        <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header">快捷方式</div>
            <div class="layui-card-body">
              
              <div class="layui-carousel layadmin-carousel layadmin-shortcut" lay-anim="" lay-indicator="inside" lay-arrow="none" style="width: 100%; height: 280px;">
                <div carousel-item="">
                  <ul class="layui-row layui-col-space10 layui-this">
                      <li class="layui-col-xs3">
                        <a lay-href="http://localhost:8101/HuajiBBS//back-end/manage/post">
                          <i class="layui-icon layui-icon-console"></i>
                          <cite>帖子</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="http://localhost:8101/HuajiBBS//back-end/manage/user">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite>用户</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="home/homepage2">
                          <i class="layui-icon layui-icon-chart"></i>
                          <cite>主页二</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/layer/list">
                          <i class="layui-icon layui-icon-template-1"></i>
                          <cite>弹层</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="/senior/im/">
                          <i class="layui-icon layui-icon-chat"></i>
                          <cite>聊天</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/progress/index">
                          <i class="layui-icon layui-icon-find-fill"></i>
                          <cite>进度条</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="app/workorder/list">
                          <i class="layui-icon layui-icon-survey"></i>
                          <cite>工单</cite>
                        </a>
                      </li>
                     
                      <li class="layui-col-xs3">
                        <a lay-href="set/system/website">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>设置</cite>
                        </a>
                      </li>
                    </ul>
                    <ul class="layui-row layui-col-space10">
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                    </ul>
                  
                </div>
              <div class="layui-carousel-ind"><ul><li class="layui-this"></li><li></li></ul></div><button class="layui-icon layui-carousel-arrow" lay-type="sub"></button><button class="layui-icon layui-carousel-arrow" lay-type="add"></button></div>
              
            </div>
          </div>
        </div>
        <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header">待办事项</div>
            <div class="layui-card-body">

              <div class="layui-carousel layadmin-carousel layadmin-backlog" lay-anim="" lay-indicator="inside" lay-arrow="none" style="width: 100%; height: 280px;">
                <div carousel-item="">
                  <ul class="layui-row layui-col-space10 layui-this">
                    <li class="layui-col-xs6">
                      <a lay-href="app/content/comment" class="layadmin-backlog-body">
                        <h3>待审评论</h3>
                        <p><cite>66</cite></p>
                      </a>
                    </li>
                    <li class="layui-col-xs6">
                      <a lay-href="app/forum/list" class="layadmin-backlog-body">
                        <h3>待审帖子</h3>
                        <p><cite>12</cite></p>
                      </a>
                    </li>
                    <li class="layui-col-xs6">
                      <a lay-href="template/goodslist" class="layadmin-backlog-body">
                        <h3>待审商品</h3>
                        <p><cite>99</cite></p>
                      </a>
                    </li>
                    <li class="layui-col-xs6">
                      <a href="javascript:;" onclick="layer.tips('不跳转', this, {tips: 3});" class="layadmin-backlog-body">
                        <h3>待发货</h3>
                        <p><cite>20</cite></p>
                      </a>
                    </li>
                  </ul>
                  <ul class="layui-row layui-col-space10">
                    <li class="layui-col-xs6">
                      <a href="javascript:;" class="layadmin-backlog-body">
                        <h3>待审友情链接</h3>
                        <p><cite style="color: #FF5722;">5</cite></p>
                      </a>
                    </li>
                  </ul>
                </div>
              <div class="layui-carousel-ind"><ul><li class="layui-this"></li><li class=""></li></ul></div><button class="layui-icon layui-carousel-arrow" lay-type="sub"></button><button class="layui-icon layui-carousel-arrow" lay-type="add"></button></div>
            </div>
          </div>
        </div>
        <div class="layui-col-md12">
          <div class="layui-card">
            <div class="layui-tab layui-tab-brief layadmin-latestData">
              <ul class="layui-tab-title">
                <li class="layui-this">今日热搜</li>
                <li>今日热帖</li>
              </ul>
              <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                  <table id="LAY-index-topSearch"></table><div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-16" lay-id="LAY-index-topSearch" style=" "><div class="layui-table-box"><div class="layui-table-header"><table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-skin="line"><thead><tr><th data-field="0" data-key="16-0-0" data-unresize="true" class=" layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers"><span></span></div></th><th data-field="keywords" data-key="16-0-1" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><span>关键词</span></div></th><th data-field="frequency" data-key="16-0-2" data-minwidth="120" class=" layui-unselect"><div class="layui-table-cell laytable-cell-16-0-2"><span>搜索次数</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc" title="升序"></i><i class="layui-edge layui-table-sort-desc" title="降序"></i></span></div></th><th data-field="userNums" data-key="16-0-3" class=" layui-unselect"><div class="layui-table-cell laytable-cell-16-0-3"><span>用户数</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc" title="升序"></i><i class="layui-edge layui-table-sort-desc" title="降序"></i></span></div></th></tr></thead></table></div><div class="layui-table-body layui-table-main"><table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-skin="line"><tbody><tr data-index="0"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">1</div></td><td data-field="keywords" data-key="16-0-1" data-content="贤心是男是女" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=贤心是男是女" target="_blank" class="layui-table-link">贤心是男是女</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">8520</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">2216</div></td></tr><tr data-index="1"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">2</div></td><td data-field="keywords" data-key="16-0-1" data-content="Java程序员能找到女朋友吗" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=Java程序员能找到女朋友吗" target="_blank" class="layui-table-link">Java程序员能找到女朋友吗</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr><tr data-index="2"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">3</div></td><td data-field="keywords" data-key="16-0-1" data-content="此表格是静态模拟数据" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=此表格是静态模拟数据" target="_blank" class="layui-table-link">此表格是静态模拟数据</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr><tr data-index="3"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">4</div></td><td data-field="keywords" data-key="16-0-1" data-content="layui官方教程" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=layui官方教程" target="_blank" class="layui-table-link">layui官方教程</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr><tr data-index="4"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">5</div></td><td data-field="keywords" data-key="16-0-1" data-content="layui官方教程" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=layui官方教程" target="_blank" class="layui-table-link">layui官方教程</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr><tr data-index="5"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">6</div></td><td data-field="keywords" data-key="16-0-1" data-content="layui官方教程" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=layui官方教程" target="_blank" class="layui-table-link">layui官方教程</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr><tr data-index="6"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">7</div></td><td data-field="keywords" data-key="16-0-1" data-content="layui官方教程" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=layui官方教程" target="_blank" class="layui-table-link">layui官方教程</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr><tr data-index="7"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">8</div></td><td data-field="keywords" data-key="16-0-1" data-content="layui官方教程" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=layui官方教程" target="_blank" class="layui-table-link">layui官方教程</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr><tr data-index="8"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">9</div></td><td data-field="keywords" data-key="16-0-1" data-content="layui官方教程" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=layui官方教程" target="_blank" class="layui-table-link">layui官方教程</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr><tr data-index="9"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">10</div></td><td data-field="keywords" data-key="16-0-1" data-content="layui官方教程" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-16-0-1"><a href="https://www.baidu.com/s?wd=layui官方教程" target="_blank" class="layui-table-link">layui官方教程</a></div></td><td data-field="frequency" data-key="16-0-2" data-minwidth="120" class=""><div class="layui-table-cell laytable-cell-16-0-2">666</div></td><td data-field="userNums" data-key="16-0-3" class=""><div class="layui-table-cell laytable-cell-16-0-3">333</div></td></tr></tbody></table></div><div class="layui-table-fixed layui-table-fixed-l"><div class="layui-table-header"><table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-skin="line"><thead><tr><th data-field="0" data-key="16-0-0" data-unresize="true" class=" layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers"><span></span></div></th></tr></thead></table></div><div class="layui-table-body" style="height: 384px;"><table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-skin="line"><tbody><tr data-index="0"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">1</div></td></tr><tr data-index="1"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">2</div></td></tr><tr data-index="2"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">3</div></td></tr><tr data-index="3"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">4</div></td></tr><tr data-index="4"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">5</div></td></tr><tr data-index="5"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">6</div></td></tr><tr data-index="6"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">7</div></td></tr><tr data-index="7"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">8</div></td></tr><tr data-index="8"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">9</div></td></tr><tr data-index="9"><td data-field="0" data-key="16-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-16-0-0 laytable-cell-numbers">10</div></td></tr></tbody></table></div></div></div><div class="layui-table-page"><div id="layui-table-page16"><div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-7"><a href="javascript:;" class="layui-laypage-prev layui-disabled" data-page="0"><i class="layui-icon"></i></a><span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span><a href="javascript:;" data-page="2">2</a><a href="javascript:;" data-page="3">3</a><span class="layui-laypage-spr">…</span><a href="javascript:;" class="layui-laypage-last" title="尾页" data-page="10">10</a><a href="javascript:;" class="layui-laypage-next" data-page="2"><i class="layui-icon"></i></a><span class="layui-laypage-skip">到第<input type="text" min="1" value="1" class="layui-input">页<button type="button" class="layui-laypage-btn">确定</button></span><span class="layui-laypage-count">共 100 条</span><span class="layui-laypage-limits"><select lay-ignore=""><option value="10" selected="">10 条/页</option><option value="20">20 条/页</option><option value="30">30 条/页</option><option value="40">40 条/页</option><option value="50">50 条/页</option><option value="60">60 条/页</option><option value="70">70 条/页</option><option value="80">80 条/页</option><option value="90">90 条/页</option></select></span></div></div></div><style>.laytable-cell-16-0-0{ width: 40px; }.laytable-cell-16-0-1{  }.laytable-cell-16-0-2{  }.laytable-cell-16-0-3{  }</style></div>
                </div>
                <div class="layui-tab-item" style="">
                  <table id="LAY-index-topCard"></table><div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-17" lay-id="LAY-index-topCard" style=" "><div class="layui-table-box"><div class="layui-table-header"><table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-skin="line"><thead><tr><th data-field="0" data-key="17-0-0" data-unresize="true" class=" layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers"><span></span></div></th><th data-field="title" data-key="17-0-1" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><span>标题</span></div></th><th data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2"><span>发帖者</span></div></th><th data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3"><span>类别</span></div></th><th data-field="crt" data-key="17-0-4" class=" layui-unselect"><div class="layui-table-cell laytable-cell-17-0-4"><span>点击率</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc" title="升序"></i><i class="layui-edge layui-table-sort-desc" title="降序"></i></span></div></th></tr></thead></table></div><div class="layui-table-body layui-table-main"><table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-skin="line"><tbody><tr data-index="0"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">1</div></td><td data-field="title" data-key="17-0-1" data-content="社区开始接受 “赞助商广告” 投放" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/15697/" target="_blank" class="layui-table-link">社区开始接受 “赞助商广告” 投放</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">贤心</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">公告</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="1"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">2</div></td><td data-field="title" data-key="17-0-1" data-content="layui 一周年" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/16622/" target="_blank" class="layui-table-link">layui 一周年</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">猫吃</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">讨论</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="2"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">3</div></td><td data-field="title" data-key="17-0-1" data-content="四个月的前端" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/16651/" target="_blank" class="layui-table-link">四个月的前端</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">fd</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">分享</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="3"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">4</div></td><td data-field="title" data-key="17-0-1" data-content="如何评价LayUI和他的作者闲心" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/9352/" target="_blank" class="layui-table-link">如何评价LayUI和他的作者闲心</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">纸飞机</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">提问</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="4"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">5</div></td><td data-field="title" data-key="17-0-1" data-content="如何评价LayUI和他的作者闲心" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/9352/" target="_blank" class="layui-table-link">如何评价LayUI和他的作者闲心</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">纸飞机</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">提问</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="5"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">6</div></td><td data-field="title" data-key="17-0-1" data-content="如何评价LayUI和他的作者闲心" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/9352/" target="_blank" class="layui-table-link">如何评价LayUI和他的作者闲心</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">纸飞机</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">提问</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="6"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">7</div></td><td data-field="title" data-key="17-0-1" data-content="如何评价LayUI和他的作者闲心" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/9352/" target="_blank" class="layui-table-link">如何评价LayUI和他的作者闲心</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">纸飞机</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">提问</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="7"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">8</div></td><td data-field="title" data-key="17-0-1" data-content="如何评价LayUI和他的作者闲心" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/9352/" target="_blank" class="layui-table-link">如何评价LayUI和他的作者闲心</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">纸飞机</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">提问</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="8"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">9</div></td><td data-field="title" data-key="17-0-1" data-content="如何评价LayUI和他的作者闲心" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/9352/" target="_blank" class="layui-table-link">如何评价LayUI和他的作者闲心</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">纸飞机</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">提问</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr><tr data-index="9"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">10</div></td><td data-field="title" data-key="17-0-1" data-content="如何评价LayUI和他的作者闲心" data-minwidth="300" class=""><div class="layui-table-cell laytable-cell-17-0-1"><a href="http://fly.layui.com/jie/9352/" target="_blank" class="layui-table-link">如何评价LayUI和他的作者闲心</a></div></td><td data-field="username" data-key="17-0-2" class=""><div class="layui-table-cell laytable-cell-17-0-2">纸飞机</div></td><td data-field="channel" data-key="17-0-3" class=""><div class="layui-table-cell laytable-cell-17-0-3">提问</div></td><td data-field="crt" data-key="17-0-4" class=""><div class="layui-table-cell laytable-cell-17-0-4">61632</div></td></tr></tbody></table></div><div class="layui-table-fixed layui-table-fixed-l"><div class="layui-table-header"><table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-skin="line"><thead><tr><th data-field="0" data-key="17-0-0" data-unresize="true" class=" layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers"><span></span></div></th></tr></thead></table></div><div class="layui-table-body" style="height: 0px;"><table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-skin="line"><tbody><tr data-index="0"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">1</div></td></tr><tr data-index="1"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">2</div></td></tr><tr data-index="2"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">3</div></td></tr><tr data-index="3"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">4</div></td></tr><tr data-index="4"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">5</div></td></tr><tr data-index="5"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">6</div></td></tr><tr data-index="6"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">7</div></td></tr><tr data-index="7"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">8</div></td></tr><tr data-index="8"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">9</div></td></tr><tr data-index="9"><td data-field="0" data-key="17-0-0" class="layui-table-col-special"><div class="layui-table-cell laytable-cell-17-0-0 laytable-cell-numbers">10</div></td></tr></tbody></table></div></div></div><div class="layui-table-page"><div id="layui-table-page17"><div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-8"><a href="javascript:;" class="layui-laypage-prev layui-disabled" data-page="0"><i class="layui-icon"></i></a><span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span><a href="javascript:;" data-page="2">2</a><a href="javascript:;" data-page="3">3</a><span class="layui-laypage-spr">…</span><a href="javascript:;" class="layui-laypage-last" title="尾页" data-page="10">10</a><a href="javascript:;" class="layui-laypage-next" data-page="2"><i class="layui-icon"></i></a><span class="layui-laypage-skip">到第<input type="text" min="1" value="1" class="layui-input">页<button type="button" class="layui-laypage-btn">确定</button></span><span class="layui-laypage-count">共 100 条</span><span class="layui-laypage-limits"><select lay-ignore=""><option value="10" selected="">10 条/页</option><option value="20">20 条/页</option><option value="30">30 条/页</option><option value="40">40 条/页</option><option value="50">50 条/页</option><option value="60">60 条/页</option><option value="70">70 条/页</option><option value="80">80 条/页</option><option value="90">90 条/页</option></select></span></div></div></div><style>.laytable-cell-17-0-0{ width: 40px; }.laytable-cell-17-0-1{  }.laytable-cell-17-0-2{  }.laytable-cell-17-0-3{  }.laytable-cell-17-0-4{  }</style></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>
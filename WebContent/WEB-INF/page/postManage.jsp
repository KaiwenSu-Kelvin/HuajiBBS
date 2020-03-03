<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>帖子管理</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layer.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/admin.css">
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
  	
  		<!--开始了-->
		<div class="layui-container fly-marginTop">
			<div class="fly-panel fly-panel-user" pad20>
				<div class="layui-tab layui-tab-brief" lay-filter="user">
					<ul class="layui-tab-title">
		
						<li>
							<a href="http://localhost:8101/HuajiBBS/manage/user">用户管理</a>
						</li>
						<li class="layui-this">帖子管理</li>
					</ul>
		
					<body layadmin-themealias="default" style="">
		
						<div class="layui-fluid">
							<div class="layui-card">
								<div class="layui-form layui-card-header layuiadmin-card-header-auto">
									<form class="layui-form" action="">
											<div class="layui-form-item">
												<div class="layui-inline">
													<label class="layui-form-label">用户名</label>
													<div class="layui-input-inline">
														<input type="text" name="name" lay-verify="required name" autocomplete="off" placeholder="通过用户名查询" class="layui-input">
													</div>
												</div>
												<div class="layui-inline">
													<label class="layui-form-label">用户id</label>
													<div class="layui-input-inline">
														<input type="text" name="uid" lay-verify="uid" autocomplete="off" placeholder="通过用户ID查询" class="layui-input">
													</div>
												</div>
												<div class="layui-inline">
													<label class="layui-form-label">帖子id</label>
													<div class="layui-input-inline">
														<input type="text" name="pid" lay-verify="pid" autocomplete="off" placeholder="通过帖子ID查询" class="layui-input">
													</div>
												</div>
											</div>
											<div class="layui-form-item">
												<label class="layui-form-label">帖子名称</label>
												<div class="layui-input-block">
													<input type="text" name="pid" lay-verify="pid" autocomplete="off" placeholder="通过帖子名称查询" class="layui-input">
												</div>
											</div>
											<div class="layui-form-item">
												<label class="layui-form-label">所在板块</label>
												<div class="layui-input-block">
													<select name="section" lay-verify="section">	
														<c:forEach items="${sections }" var="section">
														<option>${section.name }</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="layui-form-item">
												<div class="layui-input-block">
													<button class="layui-btn" lay-submit="" lay-filter="demo1">筛选</button>
													<button type="reset" class="layui-btn layui-btn-primary">重置</button>
												</div>
											</div>
									</form>
								</div>
							</div>
		
								<div class="layui-card-body">
									<div style="padding-bottom: 10px;">
										<button class="layui-btn layuiadmin-btn-useradmin" data-type="batchdel">删除</button>
										<button class="layui-btn layuiadmin-btn-useradmin" data-type="add">添加</button>
									</div>
		
									<table id="LAY-user-manage" lay-filter="LAY-user-manage"></table>
									<div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-10" lay-id="LAY-user-manage" style=" height:419px;">
										<div class="layui-table-box">
											<div class="layui-table-header">
												<table cellspacing="0" cellpadding="0" border="0" class="layui-table">
													<thead>
														<tr>
															<th data-field="0" data-key="10-0-0" data-unresize="true" class=" layui-table-col-special">
																
																<!--
                                                                	作者：offline
                                                                	时间：2019-03-03
                                                                	描述：表格全选按钮
                                                                -->
																<div class="layui-table-cell laytable-cell-10-0-0 laytable-cell-checkbox"><input type="checkbox" name="layTableCheckbox" lay-skin="primary" lay-filter="layTableAllChoose">
																	<div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><i class="layui-icon layui-icon-ok"></i></div>
																</div>
															</th>
															<th width="50px" data-field="id" data-key="10-0-1" class=" layui-unselect">
																<div class="layui-table-cell laytable-cell-10-0-1"><span>ID</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc" title="升序"></i><i class="layui-edge layui-table-sort-desc" title="降序"></i></span></div>
															</th>
															<th width="80px" data-field="username" data-key="10-0-2" data-minwidth="100" class="">
																<div class="layui-table-cell laytable-cell-10-0-2"><span>用户名</span></div>
															</th>
															<th width="100px" data-field="avatar" data-key="10-0-3" class="">
																<div class="layui-table-cell laytable-cell-10-0-3"><span>头像</span></div>
															</th>
															<th width="118px" data-field="phone" data-key="10-0-4" class="">
																<div class="layui-table-cell laytable-cell-10-0-4"><span>版块</span></div>
															</th>
															<th width="130px" data-field="email" data-key="10-0-5" class="">
																<div class="layui-table-cell laytable-cell-10-0-5"><span>标题</span></div>
															</th>
															<th width="80px" data-field="sex" data-key="10-0-6" class="">
																<div class="layui-table-cell laytable-cell-10-0-6"><span>回复数</span></div>
															</th>
															<th width="85px" data-field="ip" data-key="10-0-7" class="">
																<div class="layui-table-cell laytable-cell-10-0-7"><span>是否删除</span></div>
															</th>
															<th width="30px" data-field="jointime" data-key="10-0-8" class=" layui-unselect">
																<div class="layui-table-cell laytable-cell-10-0-8"><span>是否置顶</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc" title="升序"></i><i class="layui-edge layui-table-sort-desc" title="降序"></i></span></div>
															</th>
															<th width="150px" data-field="9" data-key="10-0-9" class=" layui-table-col-special">
																<div class="layui-table-cell laytable-cell-10-0-9" align="center"><span>操作</span></div>
															</th>
															<th class="layui-table-patch">
																<div class="layui-table-cell" style="width: 15px;"></div>
															</th>
														</tr>
													
													</thead>
												</table>
											</div>
		
											<div class="layui-table-body layui-table-main" style="height: 337px;">
												<table cellspacing="0" cellpadding="0" border="0" class="layui-table">
													<tbody>
														<c:forEach items="${posts }" var="post" varStatus="idx">
															<tr data-index="${idx.index }" class="">
															<td data-field="0" data-key="10-0-0" class="layui-table-col-special">
																<div class="layui-table-cell laytable-cell-10-0-0 laytable-cell-checkbox"><input type="checkbox" name="layTableCheckbox" lay-skin="primary">
																	<div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><i class="layui-icon layui-icon-ok"></i></div>
																</div>
															</td>
															<td data-field="id" data-key="10-0-1" class="">
																<div class="layui-table-cell laytable-cell-10-0-1">${post.user.id }</div>
															</td>
															<td data-field="username" data-key="10-0-2" data-minwidth="100" class="">
																<div class="layui-table-cell laytable-cell-10-0-2">
																<a href="http://localhost:8101/HuajiBBS/showUserPost?user_id=${post.user.id }">
																	${post.user.name }
																</a>
																
																</div>
															</td>
															<td data-field="avatar" data-key="10-0-3" data-content=".jpg" class="">
																<div class="layui-table-cell laytable-cell-10-0-3"> <img style="display: inline-block; width: 50%; height: 100%;" src="<%=request.getContextPath()%>/image/head/${post.user.head }"> </div>
															</td>
															<td data-field="phone" data-key="10-0-4" class="">
																<div class="layui-table-cell laytable-cell-10-0-4">
																	<a href="http://localhost:8101/HuajiBBS/section?sectionId=${post.section.id }&page=1">
																	${post.section.name }
																	</a>
																	
																</div>
															</td>
															<td data-field="email" data-key="10-0-5" class="">
																<div class="layui-table-cell laytable-cell-10-0-5">
																<a href="http://localhost:8101/HuajiBBS/post?postId=${post.id }">
																	${post.title }
																</a>
																
																</div>
															</td>
															<td data-field="sex" data-key="10-0-6" class="">
																<div class="layui-table-cell laytable-cell-10-0-6">
																	${fn:length(post.floors) }
																</div>
															</td>
															<td data-field="ip" data-key="10-0-7" class="">
																<div class="layui-table-cell laytable-cell-10-0-7">
																	<c:choose>
																			<c:when test="${post.visible == 1}">
																				正常
																				</c:when>
																			<c:when test="${post.visible == 0}">
																				已删除
																				</c:when>
																	</c:choose>
																</div>
															</td>
															<td data-field="jointime" data-key="10-0-8" class="">
																<div class="layui-table-cell laytable-cell-10-0-8">
																	<c:choose>
																			<c:when test="${post.top_status == 1}">
																				置顶
																				</c:when>
																			<c:when test="${post.top_status == 0}">
																				未置顶
																				</c:when>
																		</c:choose>
																</div>
															</td>
															<td data-field="9" data-key="10-0-9" align="center" data-off="true" class="layui-table-col-special">
																<div class="layui-table-cell laytable-cell-10-0-9">
																<c:choose>
																			<c:when test="${post.top_status == 1}">
																				<a
																					href="http://localhost:8101/HuajiBBS/ban/unStickPost?pid=${post.id }"
																					class="layui-btn  layui-btn-xs" lay-event="edit"
																					style="background-color: black;"><i
																					class="layui-icon layui-icon-edit"></i>取顶</a>
																			</c:when>
																			<c:when test="${post.top_status == 0}">
																				<a
																					href="http://localhost:8101/HuajiBBS/ban/stickPost?pid=${post.id }"
																					class="layui-btn layui-btn-normal layui-btn-xs"
																					lay-event="edit"><i
																					class="layui-icon layui-icon-edit"></i>置顶</a>
																			</c:when>
																		</c:choose>
																		<c:choose>
																			<c:when test="${post.visible == 1}">
																				<a
																					href="http://localhost:8101/HuajiBBS/ban/banPost?pid=${post.id }"
																					class="layui-btn  layui-btn-xs" lay-event="del"
																					style="background-color: black;"><i
																					class="layui-icon layui-icon-delete"></i>删除</a>
																			</c:when>
																			<c:when test="${post.visible == 0}">
																				<a
																					href="http://localhost:8101/HuajiBBS/ban/unbanPost?pid=${post.id }"
																					class="layui-btn layui-btn-danger layui-btn-xs"
																					lay-event="del"><i
																					class="layui-icon layui-icon-delete"></i>恢复</a>
																			</c:when>
																		</c:choose>
																</div>
															</td>
														</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
											
											<!--
		                                            	作者：offline
		                                            	时间：2019-03-03
		                                            	描述：多一个选择层从此处开始，意义不明。
		                                            -->
		
											<div class="layui-table-fixed layui-table-fixed-l">
												<div class="layui-table-header">
													<table cellspacing="0" cellpadding="0" border="0" class="layui-table">
														<thead>
															<tr>
																<th data-field="0" data-key="10-0-0" data-unresize="true" class=" layui-table-col-special">
																	<div class="layui-table-cell laytable-cell-10-0-0 laytable-cell-checkbox"><input type="checkbox" name="layTableCheckbox" lay-skin="primary" lay-filter="layTableAllChoose">
																		<div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><i class="layui-icon layui-icon-ok"></i></div>
																	</div>
																</th>
															</tr>
														</thead>
													</table>
												</div>
		
											</div>
		
										</div>
										<div class="layui-table-page">
											<div id="layui-table-page10">
												<div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-18">
													<a href="javascript:;" class="layui-laypage-prev layui-disabled" data-page="0"><i class="layui-icon"></i></a><span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span>
													<a href="javascript:;" data-page="2">2</a>
													<a href="javascript:;" data-page="3">3</a>
													<a href="javascript:;" class="layui-laypage-last" title="尾页" data-page="4">4</a>
													<a href="javascript:;" class="layui-laypage-next" data-page="2"><i class="layui-icon"></i></a><span class="layui-laypage-skip">到第<input type="text" min="1" value="1" class="layui-input">页<button type="button" class="layui-laypage-btn">确定</button></span><span class="layui-laypage-count">共 100 条</span><span class="layui-laypage-limits"><select lay-ignore=""><option value="10">10 条/页</option><option value="20">20 条/页</option><option value="30" selected="">30 条/页</option><option value="40">40 条/页</option><option value="50">50 条/页</option><option value="60">60 条/页</option><option value="70">70 条/页</option><option value="80">80 条/页</option><option value="90">90 条/页</option></select></span></div>
											</div>
										</div>
									
									<style>
											.laytable-cell-10-0-0 {
												width: 50px;
												 overflow:auto;
											}
											
											.laytable-cell-10-0-1 {
												width: 50px;
												overflow: auto;
											}
											
											.laytable-cell-10-0-2 {
												overflow:auto;
												width: 100px;
											}
											
											.laytable-cell-10-0-3 {
												width: 80px;
												overflow:auto;
											}
											
											.laytable-cell-10-0-4 {
												overflow:auto;
												width: 150px;
											}
											
											.laytable-cell-10-0-5 {
												width: 150px;
												/* overflow:auto; */
											}
											
											.laytable-cell-10-0-6 {
												width: 80px;
												overflow:auto;
											}
											
											.laytable-cell-10-0-7 {
												width: 100px;
												overflow:auto;
											}
											
											.laytable-cell-10-0-8 {
												width: 140px;
												overflow:auto;
											}
											
											.laytable-cell-10-0-9 {
												width: 150px;
												/* overflow:auto; */
											}
										</style>
									
										
									</div>
									<script type="text/html" id="imgTpl">
										<img style="display: inline-block; width: 50%; height: 100%;" src={ { d.avatar }}>
									</script>
									<script type="text/html" id="table-useradmin-webuser">
										<a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>
										<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon layui-icon-delete"></i>删除</a>
									</script>
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>
		
		<!--结束了-->
  </div>
  
  <div class="../../layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="<%=request.getContextPath()%>/layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
<script src="<%=request.getContextPath()%>/layui/layui.all.js"></script>
						<script>
							layui.config({
								base: '<%=request.getContextPath()%>/layui/res/' //静态资源所在路径
							}).extend({
								index: 'mods/index' //主入口模块
							}).use(['index', 'useradmin', 'table'], function() {
								var $ = layui.$,
									form = layui.form,
									table = layui.table;
					
								//监听搜索
								form.on('submit(LAY-user-front-search)', function(data) {
									var field = data.field;
					
									//执行重载
									table.reload('LAY-user-manage', {
										where: field
									});
								});
					
								//事件
								var active = {
									batchdel: function() {
										var checkStatus = table.checkStatus('LAY-user-manage'),
											checkData = checkStatus.data; //得到选中的数据
					
										if(checkData.length === 0) {
											return layer.msg('请选择数据');
										}
					
										layer.prompt({
											formType: 1,
											title: '敏感操作，请验证口令'
										}, function(value, index) {
											layer.close(index);
					
											layer.confirm('确定删除吗？', function(index) {
					
												//执行 Ajax 后重载
												/*
												admin.req({
												  url: 'xxx'
												  //,……
												});
												*/
												table.reload('LAY-user-manage');
												layer.msg('已删除');
											});
										});
									},
									add: function() {
										layer.open({
											type: 2,
											title: '添加用户',
											content: 'userform.html',
											maxmin: true,
											area: ['500px', '450px'],
											btn: ['确定', '取消'],
											yes: function(index, layero) {
												var iframeWindow = window['layui-layer-iframe' + index],
													submitID = 'LAY-user-front-submit',
													submit = layero.find('iframe').contents().find('#' + submitID);
					
												//监听提交
												iframeWindow.layui.form.on('submit(' + submitID + ')', function(data) {
													var field = data.field; //获取提交的字段
					
													//提交 Ajax 成功后，静态更新表格中的数据
													//$.ajax({});
													table.reload('LAY-user-front-submit'); //数据刷新
													layer.close(index); //关闭弹层
												});
					
												submit.trigger('click');
											}
										});
									}
								};
					
								$('.layui-btn.layuiadmin-btn-useradmin').on('click', function() {
									var type = $(this).data('type');
									active[type] ? active[type].call(this) : '';
								});
							});
						</script>
					
						<style id="LAY_layadmin_theme">
							.layui-side-menu,
							.layadmin-pagetabs .layui-tab-title li:after,
							.layadmin-pagetabs .layui-tab-title li.layui-this:after,
							.layui-layer-admin .layui-layer-title,
							.layadmin-side-shrink .layui-side-menu .layui-nav>.layui-nav-item>.layui-nav-child {
								background-color: #20222A !important;
							}
							
							.layui-nav-tree .layui-this,
							.layui-nav-tree .layui-this>a,
							.layui-nav-tree .layui-nav-child dd.layui-this,
							.layui-nav-tree .layui-nav-child dd.layui-this a {
								background-color: #009688 !important;
							}
							
							.layui-layout-admin .layui-logo {
								background-color: #20222A !important;
							}
						</style>
</body>
</html>
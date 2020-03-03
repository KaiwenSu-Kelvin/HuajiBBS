<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>注册</title>
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
      <!-- 未登入的状态 -->
      <li class="layui-nav-item">
        <a class="iconfont icon-touxiang layui-hide-xs" href="LOG.jsp"></a>
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
    </ul>
  </div>
</div>

<div class="layui-container fly-marginTop">
  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief" lay-filter="user">
      <ul class="layui-tab-title">
        <li><a href="http://localhost:8101/HuajiBBS/login">登入</a></li>
        <li class="layui-this">注册</li>
        <li ><a href="http://localhost:8101/HuajiBBS/adminLogin">管理员登陆</a></li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
          
            <form method="post" action="${pageContext.request.contextPath}/doRegist" enctype="multipart/form-data" onsubmit="return toVaild()">
              <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                  <input type="text" id="name" name="name" required lay-verify="email" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">将会成为您唯一的登入名</div>
              </div>
              <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="password" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              
         <!--    <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="repass" name="repass" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              
              -->
              
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">性别</label>
                <div class="layui-input-inline">
                  <input type="text" id="gender" name="gender" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux"></div>
              </div>
              
                            
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                  <input type="text" id="email" name="email" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux"></div>
                
              </div>
              
            <div class="layui-form-item"> 
                <label for="L_pass" class="layui-form-label">头像</label>
                <div class="layui-input-inline">
                
                </div>
                <div class="layui-form-mid layui-word-aux">
                <input type="file" name="file" >
                </div>
                
          </div>
              

              <div class="layui-form-item">
                <label for="L_vercode" class="layui-form-label">人类验证</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid">
                  <span style="color: #c00;">1+1=?</span>
                </div>
              </div>
              <div class="layui-form-item">
                <button class="layui-btn" lay-filter="*" lay-submit>立即注册</button>
              </div>
              <div class="layui-form-item fly-form-app">
                <span>或者直接使用社交账号快捷注册</span>
                <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
                <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>

<div class="fly-footer">
  <p><a href="http://fly.layui.com/" target="_blank">滑稽IT社区</a> 2019 &copy; <a href="http://www.layui.com/" target="_blank">Huaji+++小组 出品</a></p>
  <p>
    <a href="http://fly.layui.com/jie/3147/" target="_blank">滑稽</a>
    <a href="http://www.layui.com/template/fly/" target="_blank">滑稽</a>
    <a href="http://fly.layui.com/jie/2461/" target="_blank">滑稽</a>
  </p>
</div>

<script src="layui/layui.js"></script>
<!--<script>
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
  ,base: '../../res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>-->

<script language="javascript">
            function toVaild(){
                var val = document.getElementById("L_vercode").value;
                alert(val);
                if(val == 2){
                    alert("校验成功，之后进行提交");
                    return true;
                }
                else{
                    alert("校验失败，不进行提交");
                    return false;
                }
            }
    </script>

</body>
</html>

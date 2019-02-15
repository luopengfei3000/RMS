<%--
  Created by IntelliJ IDEA.
  User: yongfeng.L
  Date: 2018/12/29
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>后台首页</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" type="text/css" href="${path}/static/layui/css/layui.css">
    <link rel="stylesheet" href="${path}/static/css/main.css">
</head>
<body>
<div class="layui-fluid">
    <div class="larry-container animated fadeIn">
        <div style="margin-top: 30px;margin-bottom: 30px" >
            欢迎您： <span class="x-red"><shiro:principal property="name"></shiro:principal></span> 先生/女士
        </div>
        <fieldset class="layui-elem-field">
            <legend>源码下载(<span style="color:red;font-size: 14px;font-weight: bold">点击相应位置即可跳转</span>)</legend>
            <div class="layui-field-box">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body">
                            <div class="layui-carousel x-admin-carousel x-admin-backlog"
                                 lay-anim="" lay-indicator="inside" lay-arrow="none"
                                 style="width: 100%; height: 90px;">
                                <div carousel-item="">
                                    <ul class="layui-row layui-col-space10 layui-this">
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>下载链接</h3>
                                                <p><cite>码云</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>下载链接</h3>
                                                <p><cite>最代码</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=bf418a4d94a13cdb17921b077eb4bfd55c5b6fa52ede4c389d2cb32cc8ef88c7" alt="BM技术交流" title="BM技术交流" class="x-admin-backlog-body">
                                                <h3>下载链接</h3>
                                                <p><cite>企鹅群</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>下载链接</h3>
                                                <p><cite>...</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>下载链接</h3>
                                                <p><cite>...</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>上次登陆时间</h3>
                                                <p><cite>...</cite></p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <fieldset class="layui-elem-field">
            <legend>技术及系统更新群</legend>
            <div class="layui-field-box changHeight">
                <table class="layui-table" lay-skin="line">
                    &nbsp;&nbsp;&nbsp;
                    <span style="line-height: 38px;font-size: 16px;color: black;font-weight: bold">
                        群号：<span style="font-size: 20px;color: red;font-weight: bold">876014073</span>
                    </span>
                    &nbsp;&nbsp;&nbsp;
                    <span>
                        <a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=bf418a4d94a13cdb17921b077eb4bfd55c5b6fa52ede4c389d2cb32cc8ef88c7">
                            <img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="BM技术交流" title="BM技术交流">
                        </a>（添加时请注明来源，如：“码云”、“Github”、“最代码”等）
                    </span>
                </table>
            </div>
        </fieldset>

        <!-- 系统信息 -->
        <fieldset class="layui-elem-field">
            <legend>更新日志</legend>
            <div class="layui-elem-quote layui-quote-nm">
                <ul class="layui-timeline">
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis" style="color: rgb(47,143,250);">&#xe756;</i>
                        <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title">
                                <h3 class="layui-inline">初始版本，提供一些简单的功能&nbsp;&nbsp;</h3>
                                <span class="layui-badge-rim">2019-01-22</span>
                            </div>
                            <ul></ul>
                        </div>
                    </li>
                </ul>
            </div>
        </fieldset>
    </div>

    <!-- 开发团队 -->
    <fieldset class="layui-elem-field">
        <legend>开发团队</legend>
        <div class="layui-field-box">
            <table class="layui-table">
                <tbody>
                <tr>
                    <th>版权所有</th>
                    <td>B-M科技</td>
                </tr>
                <tr>
                    <th>开发者</th>
                    <td>Design by yongfeng.L</td>
                </tr>
                </tbody>
            </table>
        </div>
    </fieldset>
</div>
</body>
</html>

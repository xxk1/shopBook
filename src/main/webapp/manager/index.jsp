<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico">
    <link rel="stylesheet" href="lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="css/layuimini.css" media="all">
    <link rel="stylesheet" href="css/public.css" media="all">
    <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <style id="layuimini-bg-color">
    </style>
</head>
<body class="layui-layout-body layuimini-all">
<div class="layui-layout layui-layout-admin">

    <div class="layui-header header">
        <div class="layui-logo">
        </div>
        <a>
            <div class="layuimini-tool"><i title="展开" class="fa fa-outdent" data-side-fold="1"></i></div>
        </a>

        <ul class="layui-nav layui-layout-left layui-header-menu layui-header-pc-menu mobile layui-hide-xs">
        </ul>
        <ul class="layui-nav layui-layout-left layui-header-menu mobile layui-hide-sm">
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="fa fa-list-ul"></i> 选择模块</a>
                <dl class="layui-nav-child layui-header-mini-menu">
                </dl>
            </li>
        </ul>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item" lay-unselect>
                <a href="javascript:;" data-refresh="刷新"><i class="fa fa-refresh"></i></a>
            </li>
            <li class="layui-nav-item" lay-unselect>
                <a href="javascript:;" data-clear="清理" class="layuimini-clear"><i class="fa fa-trash-o"></i></a>
            </li>
            <li class="layui-nav-item mobile layui-hide-xs" lay-unselect>
                <a href="javascript:;" data-check-screen="full"><i class="fa fa-arrows-alt"></i></a>
            </li>
            <li class="layui-nav-item layuimini-setting">
                <a href="javascript:;">${sessionScope.user.getUserName()}</a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="javascript:;"  data-title="基本资料" data-content-href="page/user-look.jsp" data-icon="fa fa-gears">基本资料</a>
                    </dd>
                    <dd>
                        <a href="javascript:;" data-content-href="page/user-password.jsp" data-title="修改密码" data-icon="fa fa-gears">修改密码</a>
                    </dd>
                    <dd>
                        <a href="LogoutAction" class="login-out">退出登录</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item layuimini-select-bgcolor mobile layui-hide-xs">
                <a href="javascript:;" data-bgcolor="配色方案"><i class="fa fa-ellipsis-v"></i></a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll layui-left-menu">
        </div>
    </div>

    <div class="layui-body">
        <div class="layui-card layuimini-page-header layui-hide-xs layui-hide">
            <div class="layui-breadcrumb" id="layuimini-page-header">
                <a><cite>菜单管理</cite></a>
            </div>
        </div>
        <div class="layuimini-content-page">
        </div>
    </div>

</div>
<script type="text/javascript" src="js/area.js"></script>
<script src="lib/layui-v2.5.5/layui.js?v=1.0.4" charset="utf-8"></script>
<script src="js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script>
    layui.use(['element', 'layer', 'layuimini'], function () {
        var $ = layui.jquery,
            element = layui.element,
            layer = layui.layer,
            layuimini = layui.layuimini;

        layuimini.init('api/init.json');

        $('.login-out').on("click", function () {
            layer.msg('退出登录成功', function () {
                window.location = 'loginout';
            });
        });

        layuimini.listen();

    });
</script>
</body>
</html>

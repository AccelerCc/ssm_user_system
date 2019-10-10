<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html lang="en" >
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>注册</title>
    <meta name="description" content="" />

    <!--Google font-->
    <link href="https://fonts.googleapis.com/css?family=K2D:300,400,500,700,800" rel="stylesheet">

    <!-- Bootstrap CSS / Color Scheme -->
    <link rel="stylesheet" href="${ctx}/css/bootstrap.min.css"/>

    <script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/regist-feather.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/regist-scripts.js"></script>
<%--    <script type="text/javascript" src="${ctx}/jss/jquery-3.4.1.js"></script>--%>

    <script type="text/javascript">
        function checkName() {
            var theid=$("#userid").val();
            $.ajax({
                type:"POST",
                url:"${ctx}/idCheck?userid="+theid,//提交地址
                // data:"userid="+userid,//提交数据
                data:{},
                // dataType:"json",//返回json格式
                //contentType:"application/json;charset=utf-8",
                success:function(data){
                    if (data == "yes") {
                        $("#warnMes").text("");
                        $("#warnMes").attr("style","color:#5f9ea0");
                        $("#warnMes").append("用户名可以使用");
                    }else {
                        $("#warnMes").text("");
                        $("#warnMes").attr("style","color:#5f9ea0");
                        $("#warnMes").text("用户已被使用");
                    }
                }

            });
        }
    </script>
</head>
<body background="img/su02.jpg"  >

    <!--navigation-->
    <section class="bh-white py-3" >
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 text-center" >
                    <a class="btn btn-sm" href="${ctx}/index.jsp" >Blog</a>
                </div>
            </div>
        </div>
    </section>


    <!-- header-->
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-7 my-md-auto">
                    <h1 class="text-center text-md-left">
                       生活
                    </h1>
                    <div class="row feature-grid">
                        <div class="col-sm-6">
                            <div class="media">
                                <div class="icon-box">
                                    <div class="icon-box-inner">
                                        <span data-feather="unlock" width="28" height="28"></span>
                                    </div>
                                </div>
                                <div class="media-body">
                                    自由

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="media">
                                <div class="icon-box">
                                    <div class="icon-box-inner">
                                        <span data-feather="briefcase" width="28" height="28"></span>
                                    </div>
                                </div>
                                <div class="media-body">
                                    工作
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="media">
                                <div class="icon-box">
                                    <div class="icon-box-inner">
                                        <span data-feather="gift" width="28" height="28"></span>
                                    </div>
                                </div>
                                <div class="media-body">
                                   挑战
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="media">
                                <div class="icon-box">
                                    <div class="icon-box-inner">
                                        <span data-feather="users" width="28" height="28"></span>
                                    </div>
                                </div>
                                <div class="media-body">
                                    清闲
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 pl-md-5 ">
                    <div class="card">
                        <div class="card-body py-md-4">
                            <h2>注册并开始你的博客</h2>
                            <p class="lead text-muted">填写你的信息</p>
                            <form  action="userRegister" method="get">
                                <div class="form-group">
                                    <div id="warnMes" ></div>
                                    <div id="warnMes02" ></div>
                                    <label for="userid"></label><input type="text" class="form-control" id="userid" name="userid" placeholder="用户名" onkeyup="checkName()" >
                                </div>
                                <div class="form-group">
                                <label for="email"></label><input type="email" class="form-control" id="email" name="email" placeholder="Email" onkeyup="checkEmail()">
                                </div>
                                <div class="form-group">
                                    <label for="password"></label><input type="password" class="form-control" id="password" name="password" placeholder="密码">
                                </div>
                                <div>
                                    <label for="phone"></label><input type="text" class="form-control" id="phone" name="phone" placeholder="手机" >
                                </div>
                                <br>
                                <div class="d-flex flex-row align-items-center justify-content-between">
                                    <button class="btn btn-primary">创建账户</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<%--    <!--footer-->--%>
<%--    <footer>--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col-12 text-center">--%>
<%--                    <ul class="list-inline">--%>
<%--                        <li class="list-inline-item"><a href="#">关于</a></li>--%>
<%--                        <li class="list-inline-item"><a href="#">隐私</a></li>--%>
<%--                        <li class="list-inline-item"><a href="#">团队</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--         --%>
<%--        </div>--%>
<%--    </footer>--%>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

</body>
</html>


<script type="text/javascript">
    function checkEmail() {
        var themail=$("#email").val();
        $.ajax({
            type:"POST",
            url:"${ctx}/idCheck02?email="+themail,//提交地址
            // data:"userid="+userid,//提交数据
            data:{},
            // dataType:"json",//返回json格式
            //contentType:"application/json;charset=utf-8",
            success:function(data){
                if (data == "yes") {
                    $("#warnMes02").text("");
                    $("#warnMes02").attr("style","color:#cd5c5c");
                    $("#warnMes02").append("该邮箱已被使用");
                }else {
                    $("#warnMes02").text("");
                    $("#warnMes02").attr("style","color:#cd5c5c");
                }
            }

        });
    }
</script>
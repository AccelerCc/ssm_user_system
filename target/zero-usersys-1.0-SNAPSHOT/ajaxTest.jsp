<%--
  Created by IntelliJ IDEA.
  User: accelerccc
  Date: 2019/10/10/0010
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<head>
    <title>Title</title>
</head>
<body>
<span id="warnMes" color="red"></span><br>
<input type="text" id="userid" name="username" onkeyup="checkName()"><br>
<input type="text" id="userid02" name="username02" onkeyup="checkName02()">

</body>
</html>

<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    function checkName() {
        var name = document.getElementById("userid").value;
        var url = "${ctx}/idCheck02?userid="+name;

        xmlhttp =new XMLHttpRequest();
        xmlhttp.onreadystatechange=checkResult; //响应函数
        xmlhttp.open("GET",url,true);   //设置访问的页面
        xmlhttp.send(null);  //执行访问
    }

    function checkResult(){
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
            document.getElementById('checkResult').innerHTML=xmlhttp.responseText;
    }
</script>
<script type="text/javascript">
    function checkName02() {
        var theid=$("#userid02").val();
        var idd= document.getElementById('userid02')
        $.ajax({
            type:"GET",
            url:"${ctx}/idCheck02?userid="+theid,//提交地址
            // data:"userid="+userid,//提交数据
            data:{},
            dataType:"json",//返回json格式
            //contentType:"application/json;charset=utf-8",
            success:function(data){
                if ("no" == data.msg) {//后端传来的msg的值是no,不能注册。反之。
                    $("#warnMes").html("<color='red'>抱歉，该用户已被注册，请更换！</font>");
                }if("yes" == data.msg){
                    $("#warnMes").html("")//如果没有被注册，将提示语清空。
                }
            }
        });
    }
</script>

<%--
  Created by IntelliJ IDEA.
  User: dream
  Date: 2016/12/19
  Time: 13:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<html>
<head>
    <title>客服邮箱及客服电话</title>
    <style type="text/css">
        .a {
            color: #f78b1e;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div style="font-family:'Microsoft YaHei UI'">
    <%@ include file="/WEB-INF/views/modules/cms/front/themes/basic/layouts/default.jsp" %>
    <div id="banner" style=" width:1920px; height:400px">
        <img src="http://192.168.0.10:8085/1482802974519.png" />
    </div>
    <div id="center" style=" width:1200px; height:573px; margin:0 auto">
        <div id="hang" style=" width:1200px; height:80px; border-bottom:1px solid #e3e3e3">
            <div style="font-size:18px; color:#343434; float:left; margin-top:46px">技术支持&gt;</div>
            <div style="font-size:18px; color:#0068b7; float:left; margin-top:46px">客服邮箱及客服电话</div>
        </div>
        <div id="top" style=" height:74px; font-size:26px; color:#343434; padding-top:31px ; ">客服邮箱&gt;客服电话</div>
    <c:forEach items="${cusEmlAndPhes}" var="cusEmlAndPhe">
        <div style="width:383px; height:352px; border:1px solid #e3e3e3; float:left;margin-right:15px">
            <div style="width:auto; height:190px; border:1px solid #FFF;">
                <a href="#">
                    <div style="width:270px; height:150px; margin:0 auto; margin-top:15px;"><img src="${cusEmlAndPhe.picPath}" /></div>
                </a>
            </div>
            <div style="width:383px; height:135px; background-color:#fbfbfb; padding-top:25px">
                <div style="width:240px; height:20px; text-align: center; font-size:20px;  margin:0 auto;">
                    <a class="a" href="#">${cusEmlAndPhe.companyName}</a>
                </div>

                <div style="width:265px; height:20px; margin:0 auto; margin-top:25px; margin-bottom:15px">
                    <div style="font-weight:bold; float:left">客服邮箱：</div>
                    <div style=" float:left">${cusEmlAndPhe.email}</div>
                </div>
                <div style="width:185px; height:20px; margin:0 auto">
                    <div style="font-weight:bold; float:left">客户电话：</div>
                    <div style=" float:left">${cusEmlAndPhe.phone}</div>
                </div>

            </div>
        </div>
    </c:forEach>
    </div>
</div>
<%@ include file="/WEB-INF/views/modules/cms/front/themes/basic/footer.jsp" %>
</body>
</html>

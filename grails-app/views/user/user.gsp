<%--
  Created by IntelliJ IDEA.
  User: raibnod
  Date: 7/3/16
  Time: 9:11 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <title>Online Exam System</title>
    <meta charset="utf-8">

    <asset:stylesheet href="reset.css"/>
    <asset:stylesheet href="libs/font-awesome-4.5.0/css/font-awesome.min.css"/>
    <asset:stylesheet href="style.css"/>
    <asset:stylesheet href="tab.css"/>
    <asset:stylesheet href="table.css"/>
    <asset:stylesheet href="libs/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>

    <asset:javascript src="libs/jquery/jquery-1.11.3.min.js"/>
    <asset:javascript src="script.js"/>
    <asset:javascript src="default_script.js"/>
    <asset:javascript src="user_validation.js"/>
</head>

<body>
<div class="wrapper" id="wrapper">
    <g:render template='/layouts/sidebar'/>
    <!--sidebar-wrapper-->
    <div class="page-content-wrapper">
        <g:render template='/layouts/header'/>
        <ol class="bradcrumb-menu">DashBoard</ol>

        <div class="content-wrapper">
            <div class="content-wrapper-content">
                <div id="user_list">
                    <g:render template="userList" model="[userList: userList]"/>
                </div>
            </div>
        </div>
    </div>
</div>
<!--body-wrapper-->
</body>
</html>

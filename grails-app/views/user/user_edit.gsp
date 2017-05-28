<%--
  Created by IntelliJ IDEA.
  User: raibnod
  Date: 7/7/16
  Time: 8:14 AM
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
    <asset:stylesheet href="libs/jquery/jquery-1.11.3.min.js"/>
    <asset:stylesheet href="libs/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>

    <asset:javascript src="libs/jquery/jquery-1.11.3.min.js"/>
    <asset:javascript src="script.js"/>
    <asset:javascript src="default_script.js"/>
    <asset:javascript src="user_validation.js"/>
    <asset:javascript src="libs/js/moment-with-locales.js"/>
    <asset:javascript src="libs/js/bootstrap-datetimepicker.min.js"/>
    <asset:javascript src="libs/js/bootstrap.min.js"/>

</head>

<body>
<div class="wrapper" id="wrapper">
    <g:render template="/layouts/sidebar"/>
    <!--sidebar-wrapper-->
    <div class="page-content-wrapper">
        <g:render template="/layouts/header"/>
        <!--header-->
        <ol class="bradcrumb-menu"></ol>

        <div class="content-wrapper">
            <ul class="tab">
                <li><a href="javascript:void(0)" id="demographics_tab" class="tablinks active"
                       onclick="openCity(event, 'demographics')">Demographics</a>
                </li>
                <li><a href="javascript:void(0)" id="address_tab" class="tablinks"
                       onclick="openCity(event, 'address')">Address</a>
                </li>
                <li><a href="javascript:void(0)" id="education_tab" class="tablinks"
                       onclick="openCity(event, 'education')">Education</a>
                </li>

                <form style="height: 100%" action="userAdd">
                    <div id="demographics" class="tabcontent clear" style="display: block">
                        <div class="tabcontent-content" id="demographics-tabcontent-content">
                            <g:render template="demographics"/>
                            <!--here we populate _demographics.gsp-->
                        </div>
                    </div>

                    <div id="address" class="tabcontent clear">
                        <div class="tabcontent-content" id="address-tabcontent-content">
                            <g:render template="address"/>
                            <!--here we populate _address.gsp-->
                        </div>
                    </div>

                    <div id="education" class="tabcontent clear">
                        <div class="tabcontent-content" id="education-tabcontent-content">
                            <g:render template="education"/>
                            <!--here we populate _education.gsp-->
                        </div>
                    </div>
                </form>
            </ul>
        </div>
        <!--content-wrapper-->
    </div>
    <!--page-content-wrapper-->
</div>
</body>
</html>

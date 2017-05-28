<%--
  Created by IntelliJ IDEA.
  User: raibnod
  Date: 7/7/16
  Time: 9:23 AM
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
    %{--<script type="application/javascript">--}%

    %{--$(document).ready(function () {--}%
    %{--document.title = 'Add question';--}%
    %{--});--}%

    %{--</script>--}%
</head>

<body>
<div class="wrapper" id="wrapper">
    <g:render template='/layouts/sidebar'/>
    <!--sidebar-wrapper-->
    <div class="page-content-wrapper">
        <g:render template='/layouts/header'/>
        <ol class="bradcrumb-menu">Add Question</ol>

        <div class="content-wrapper">
            <div class="content-wrapper-content">
                <div class="main-content">
                    <form role="form">
                        <input type="text" style="width: 45%; height: 25px; margin: 2px 5px 0 0; padding: 2px"
                               placeholder="Question Topic">
                        <input type="text" style="width: 45%; height: 25px; margin: 2px 5px 0 0; padding: 2px"
                               placeholder="Set your time">

                        <div class="input_fields_wrap">
                            <button class="add_more_question">Add More Question</button>
                            <input type="text" id="total_answers" style="margin-bottom: 10px"/>
                        </div>
                    </form>

                </div>

            </div>

            <div style="float: right; margin: 0 10px"><input id="submit" type="button" value="Submit"
                                                             class="btn btn-success btn-block btn-lg"></div>

            <div style="float: right"><input type="submit" value="Clear"
                                             class="btn btn-primary btn-block btn-lg"></div>
        </div>
    </div>
</div>
<!--body-wrapper-->
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: raibnod
  Date: 7/22/16
  Time: 10:50 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Details of user</title>
    <meta charset="utf-8">
    <asset:stylesheet href="reset.css"/>
    <asset:stylesheet href="libs/font-awesome-4.5.0/css/font-awesome.min.css"/>
    <asset:stylesheet href="style.css"/>
    <asset:stylesheet href="tab.css"/>
    <asset:stylesheet href="table.css"/>
    <asset:stylesheet href="libs/jquery/jquery-1.11.3.min.js"/>
    <asset:stylesheet href="libs/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>

    <asset:javascript src="libs/jquery/jquery-1.11.3.min.js"/>
    <asset:javascript src="default_script.js"/>
</head>

<body>
<div class="wrapper" id="wrapper">
    <g:render template="/layouts/sidebar"/>
    <!--sidebar-wrapper-->
    <div class="page-content-wrapper">
        <g:render template="/layouts/header"/>
        <!--header-->
        <ol class="bradcrumb-menu"><b>Details</b></ol>

        <div class="content-wrapper">
            <div class="content-wrapper-content">
                <table>
                    <tr>
                        <td class="item">User Name</td>
                        <td class="item">${user?.userName}</td>
                    </tr>
                    <tr>
                        <td class="item">PassWord</td>
                        <td class="item">${user?.userName}</td>
                    </tr>

                    <tr>
                        <td class="item">Name</td>
                        <td class="item">${user?.userDemographics?.firstName} ${user?.userDemographics?.middleName} ${user?.userDemographics?.lastName}</td>
                    </tr>
                    <tr>
                        <td class="item">Date of Birth</td>
                        <td class="item">${user?.userDemographics?.dob}</td>
                    </tr>
                    <tr>
                        <td class="item">Phone</td>
                        <td class="item">${user?.userDemographics?.phoneNumber}</td>
                    </tr>
                    <tr>
                        <td class="item">Email</td>
                        <td class="item">${user?.userDemographics?.emailId}</td>
                    </tr>
                    <tr>
                        <td class="item">Gender</td>
                        <td class="item">${user?.userDemographics?.gender}</td>
                    </tr>
                    <tr>
                        <td class="item">Marital Status</td>
                        <td class="item">${user?.userDemographics?.maritalStatus}</td>
                    </tr>
                    <tr>
                        <td class="item">Nationality</td>
                        <td class="item">${user?.userDemographics?.nationality}</td>
                    </tr>

                    <tr>
                        <td class="item">Current Address</td>
                        <td class="item">${user?.userAddress?.tempTole}-${user?.userAddress?.tempWardNo}, ${user?.userAddress?.tempDistrict},${user?.userAddress?.tempZone} </td>
                    </tr>
                    <tr>
                        <td class="item">Permanent Address</td>
                        <td class="item">${user?.userAddress?.pemTole}-${user?.userAddress?.pemWardNo}, ${user?.userAddress?.pemDistrict},${user?.userAddress?.pemZone} </td>
                    </tr>
                    <tr>
                        <td class="item">SLC School</td>
                        <td class="item">${user?.userEducation?.slcSchool}</td>
                    </tr>

                    <tr>
                        <td class="item">SLC Percentage</td>
                        <td class="item">${user?.userEducation?.slcPercentage}</td>
                    </tr>
                    <tr>
                        <td class="item">+2 School</td>
                        <td class="item">${user?.userEducation?.plus2School}</td>
                    </tr>
                    <tr>
                        <td class="item">+2 Percentage</td>
                        <td class="item">${user?.userEducation?.plus2Percentage}</td>
                    </tr>

                    <tr>
                        <td class="item">Bachelors Collage</td>
                        <td class="item">${user?.userEducation?.bachelorCollage}</td>
                    </tr>
                    <tr>
                        <td class="item">Bachelors Percentage</td>
                        <td class="item">${user?.userEducation?.bachelorPercentage}</td>
                    </tr>
                </table>
            </div>

            <div style="float: right; margin: 0 10px"><input id="submit" type="button" value="Close"
                                                             class="btn btn-success btn-block btn-lg"></div>

            <div style="float: right"><g:form action="edit">
                <g:hiddenField name="id" value="${user.id}"/>
                <g:submitButton name="submit"  value="Edit"/>
            </g:form></div>
        </div>
        <!--content-wrapper-->
    </div>
    <!--page-content-wrapper-->
</div>
</body>
</html>
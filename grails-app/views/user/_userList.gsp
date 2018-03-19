<table>
    <thead>
    <tr>
        <th class="item">Name</th>
        <th class="item">Username</th>
        <th class="item">Date of Birth</th>
        <th class="item">Phone</th>
        <th class="item">Email</th>
        <th class="item-center">View</th>
        <th class="item-center">Edit</th>
        <th class="item-center">Delete</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${userList}" var="user">
        <tr>
            <th class="item">${user?.userDemographics?.firstName} ${user?.userDemographics?.middleName} ${user?.userDemographics?.lastName}</th>
            <th class="item">${user?.userName}</th>
            <th class="item">${user?.userDemographics?.dob}</th>
            <th class="item">${user?.userDemographics?.phoneNumber}</th>
            <th class="item">${user?.userDemographics?.emailId}</th>
            <th class="item-center"><g:form action="userView">
                <g:hiddenField name="id" value="${user.id}"/>
                <a href="" onclick="parentNode.submit();
                return false;">
                    <i class="fa fa-suitcase fa-2x"></i>
                </a>
            </g:form></th>
            <th class="item-center"><g:form action="edit">
                <g:hiddenField name="id" value="${user.id}"/>
                <a href="" onclick="parentNode.submit();
                return false;">
                    <i class="fa fa-edit fa-2x"></i>
                </a>
            </g:form></th>
            <th class="item-center"><g:form action="delete">
                <g:hiddenField name="id" value="${user.id}"/>
                <a href="" onclick="parentNode.submit();
                return false;">
                    <i class="fa fa-trash fa-2x icon-delete"></i>
                </a>
            </g:form></th>
        </tr>
    </g:each>
    </tbody>
</table>


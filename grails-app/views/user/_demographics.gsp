<div class="main-content">
    <h3><i class="fa fa-edit"></i>Demographics</h3>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div id="user_first_name" class="form-group">
                <input type="text" name="firstName" value="${user?.userDemographics?.firstName}" id="first_name" class="form-control input-md"
                       placeholder="First Name" oninput="validate('first_name', event)">
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <input type="text" name="middleName"  value="${user?.userDemographics?.middleName}" id="middle_name"
                       class="form-control input-md form-control-success"
                       placeholder="Middle Name">
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div id="user_last_name" class="form-group">
                <input type="text" name="lastName" value="${user?.userDemographics?.lastName}" id="last_name" class="form-control input-md"
                       placeholder="Last Name" oninput="validate('last_name', event)">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div id='datetimepicker-dob' class="input-group date">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                    <input type="text" id="dob" name="dob"  value="${user?.userDemographics?.dob}" class="form-control" placeholder="Date of Birth"
                           oninput="validate('dob', event)"/>
                </div>
                <span class="help-block col-sm-8">Format: yyyy-MM-dd</span>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <div id="user_phone" class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                        <input type="text" id="phone" name="phoneNumber" value="${user?.userDemographics?.phoneNumber}" class="form-control" placeholder="Phone Number"
                               oninput="validate('phone', event)">
                    </div>
                    <span class="help-block col-sm-8">ex. 98499*****</span>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div id="user_email" class="input-group">
                    <span class="input-group-addon">@</span>
                    <input input type="email" id="email" name="emailId" value="${user?.userDemographics?.emailId}" class="form-control" placeholder="Email Address"
                           oninput="validate('email', event)"/>
                </div>
                <span class="help-block col-sm-8">ex. abc@xyz.com</span>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-male"></i></span>
                        <select class="form-control" name="gender" value="${user?.userDemographics?.gender}" style="width:100%;" data-rel="chosen">
                            <option>Male</option>
                            <option>Female</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <select class="form-control" name="maritalStatus" value="${user?.userDemographics?.maritalStatus}" style="width:100%;" data-rel="chosen">
                            <option>Married</option>
                            <option>Unmarried</option>
                            <option>Divorced</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <input type="text" id="nationality" value="${user?.userDemographics?.nationality}" name="nationality" class="form-control input-md"
                       placeholder="Nationality">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <input type="text" name="userName" value="${user?.userName}" id="username" class="form-control input-md"
                       placeholder="Username">
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <input type="text" name="password" value="${user?.password}" id="password"
                       class="form-control input-md form-control-success"
                       placeholder="Password">
            </div>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <input type="text" name="userRole" value="${user?.userRole}" id="role"
                       class="form-control input-md form-control-success"
                       placeholder="user role">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            By clicking <strong class="label label-primary">Clear</strong>, you will clear the data and made original
        one.
        </div>
    </div>
    <hr class="colorgraph">

    <div class="row">
        <div class="col-xs-6 col-md-6"><input type="submit" value="Clear"
                                              class="btn btn-primary btn-block btn-lg"></div>

        <div class="col-xs-6 col-md-6"><a href="javascript:void(0)"
                                          class="btn btn-success btn-block btn-lg"
                                          onclick="openCity(event, 'address')">Next</a>
        </div>
    </div>
</div>
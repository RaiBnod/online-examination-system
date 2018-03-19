<div class="main-content">
    <h3><i class="fa fa-edit"></i>Education</h3>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <select class="form-control" name='level' style="width:100%;" data-rel="chosen">
                        <option>SLC</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <input type="text" name="slcSchool" value="${user?.userEducation?.slcSchool}" id="college_name1" class="form-control input-md"
                       placeholder="College Name">
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div id="user_percentage" class="form-group">
                <input type="text" name="slcPercentage" value="${user?.userEducation?.slcPercentage}" id="percentage1" class="form-control input-md"
                       placeholder="Percentage" oninput="validate('percentage', event)">
            </div>
            <span class="help-block col-sm-8">ex. xx.xx%</span>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <select class="form-control" style="width:100%;" data-rel="chosen">
                        <option>+2/Equivalent</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <input type="text" name="plus2School" value="${user?.userEducation?.plus2School}" id="college_name2" class="form-control input-md"
                       placeholder="College Name">
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div id="user_percentage2" class="form-group">
                <input type="text" name="plus2Percentage" value="${user?.userEducation?.plus2Percentage}" id="percentage2" class="form-control input-md"
                       placeholder="Percentage" oninput="validate('percentage', event)">
            </div>
            <span class="help-block col-sm-8">ex. xx.xx%</span>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <select class="form-control" style="width:100%;" data-rel="chosen">
                        <option>Bachelors</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <input type="text" name="bachelorCollage" value="${user?.userEducation?.bachelorCollage}" id="college_name3" class="form-control input-md"
                       placeholder="College Name">
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div id="user_percentage3" class="form-group">
                <input type="text" name="bachelorPercentage" value="${user?.userEducation?.bachelorPercentage}"  id="percentage3" class="form-control input-md"
                       placeholder="Percentage" oninput="validate('percentage', event)">
            </div>
            <span class="help-block col-sm-8">ex. xx.xx%</span>
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
        <div class="col-xs-4 col-md-4"><input type="submit" value="Clear"
                                              class="btn btn-primary btn-block btn-lg"></div>

        <div class="col-xs-4 col-md-4"><a href="javascript:void(0)"
                                          class="btn btn-warning btn-block btn-lg"
                                          onclick="openCity(event, 'address')">Back</a>
        </div>
         <g:hiddenField name="originalId" value="${user?.id}"/>
        <div class="col-xs-4 col-md-4"><g:submitButton value="submit" name="sub" class="btn btn-success btn-block btn-lg"/></div>
    </div>
</div>
</div>
/**
 * Created by raibnod on 6/9/16.
 */
function validate(field_name, event) {
    console.log('outside');
    if (field_name === "first_name") {
        var element = $("#user_first_name");
        var value = $('#first_name').val();
        if (value.length === 0) {
            element.removeClass("has-success").removeClass("has-feedback");
            element.children('span').remove();
            element.addClass("has-error").addClass("has-feedback");
            element.append('<span class="glyphicon glyphicon-remove form-control-feedback"></span>');
        } else {
            element.removeClass("has-error").removeClass("has-feedback");
            element.children('span').remove();
            element.addClass("has-success").addClass("has-feedback");
            element.append('<span class="glyphicon glyphicon-ok form-control-feedback"></span>');
        }
    } else if (field_name === "last_name") {
        element = $("#user_last_name");
        value = $('#last_name').val();
        if (value.length === 0) {
            element.removeClass("has-success").removeClass("has-feedback");
            element.children('span').remove();
            element.addClass("has-error").addClass("has-feedback");
            element.append('<span class="glyphicon glyphicon-remove form-control-feedback"></span>');
        } else {
            element.removeClass("has-error").removeClass("has-feedback");
            element.children('span').remove();
            element.addClass("has-success").addClass("has-feedback");
            element.append('<span class="glyphicon glyphicon-ok form-control-feedback"></span>');
        }
    } else if (field_name === "dob") {
        element = $("#user_dob");
        var content_id = $('#dob');
        value = content_id.val().replace(/-/, ''); // Removing '-' form the output value
        value = value.replace(/[^0-9]/, ''); // Removing non-numeric characters
        var output = value;
        if (value.length > 6) {
            output = value.substr(0, 4) + '-' + value.substr(4, 2) + '-' + value.substr(6, 2);
        } else if (value.length > 4) {
            output = value.substr(0, 4) + '-' + value.substr(4, 2);
        }
        if (output.length !== 10) {
            element.removeClass("has-warning").removeClass("has-feedback");
            element.addClass("has-error").addClass("has-feedback");
        } else {
            element.removeClass("has-warning").removeClass("has-feedback");
            element.removeClass("has-error").addClass("has-feedback");
            element.addClass("has-success").addClass("has-feedback");
            var month = parseInt(output.substr(5, 2));
            var date = parseInt(output.substr(8, 2));
            if (!(month >= 1 && month <= 12) || !(date >= 1 && date <= 31)) {
                element.removeClass("has-success").addClass("has-feedback");
                element.addClass("has-warning").addClass("has-feedback");
            }
        }
        content_id.val(output);
    } else if (field_name === "phone") {
        element = $("#user_phone");
        content_id = $("#phone");
        value = content_id.val().replace(/[^0-9]/, ''); // Removing non-numeric characters
        if (value.length < 9) {
            element.removeClass("has-success").addClass("has-feedback");
            element.addClass("has-warning").removeClass("has-feedback");
        } else {
            element.removeClass("has-warning").removeClass("has-feedback");
            element.addClass("has-success").addClass("has-feedback");
        }
        content_id.val(value);
    } else if (field_name === "email") {
        element = $("#user_email");
        value = $("#email").val();
        var regex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if (!value.match(regex)) {
            element.removeClass("has-success").addClass("has-feedback");
            element.addClass("has-warning").removeClass("has-feedback");
        } else {
            element.removeClass("has-warning").removeClass("has-feedback");
            element.addClass("has-success").addClass("has-feedback");
        }
    } else if (field_name === "ward_no") {
        content_id = $("#ward_no");
        value = content_id.val().replace(/[^0-9]/, '');
        content_id.val(value);
    } else if (field_name === "ward_no2") {
        content_id = $("#ward_no2");
        value = content_id.val().replace(/[^0-9]/, '');
        content_id.val(value);
    } else if (field_name === "percentage") {
        content_id = $("#percentage");
        value = content_id.val().replace(/[^0-9.]/, '');
        content_id.val(value);
        element = $("#user_percentage");
        regex = /^(100(\.0{1,2})?|([0-9]{1,2}(\.[0-9]{1,2})?))$/;
        if (!value.match(regex)) {
            element.removeClass("has-success").removeClass("has-feedback");
            element.children('span').remove();
            element.addClass("has-error").addClass("has-feedback");
            element.append('<span class="glyphicon glyphicon-remove form-control-feedback"></span>');
        } else {
            element.removeClass("has-error").removeClass("has-feedback");
            element.children('span').remove();
            element.addClass("has-success").addClass("has-feedback");
            element.append('<span class="glyphicon glyphicon-ok form-control-feedback"></span>');
        }
    }
}
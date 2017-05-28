function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tabcontent.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    document.getElementById(cityName + '_tab').className += " active";
}

$(document).ready(function () {
    $('#datetimepicker-dob').datetimepicker({
        format: 'YYYY-MM-DD'
    });
    var questions = '{"questions": []}';
    var answers = '{"answers": []}';

    var max_fields = 10; //maximum input boxes allowed
    var wrapper = $(".input_fields_wrap"); //Fields wrapper
    var add_more_question = $(".add_more_question"); //Add button ID

    var x = 0; //initial text box count
    $(add_more_question).click(function (e) { //on add input button click
        e.preventDefault();
        if (x < max_fields) { //max input box allowed
            $(wrapper).append(
                '<div id="question_id' + x + '"><b>Question ' + parseInt(x + 1) + '</b></div>'
            );
            $(wrapper).append(
                '<div id="id' + x + '"><input type="text" placeholder="Insert question topic/name" class="form-control question"><a href="#" class="remove_field">Remove</a><br></div>'
            ); //add input box
            //Adding questions
            for (var i = 0; i < parseInt($('#total_answers').val()); i++) {
                if (i % 2 == 0) {
                    $("#id" + x).append('<input type="text" style="width: 49%; height: 25px; background-color: #cecfd5; color: #000; margin: 2px 2% 0 0; padding: 2px; border: 0" placeholder="answer" class="answer' + i + '">')
                } else {
                    $("#id" + x).append('<input type="text" style="width: 49%; height: 25px; background-color: #cecfd5; color: #000; margin: 2px 0 0 0; padding: 2px; border: 0" placeholder="answer" class="answer' + i + '">')
                }
            }
            $("#id" + x).append('<hr class="colorgraph red">')
        }
        x++; //text box increment
    });

    $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text
        e.preventDefault();
        var current_pos = parseInt($(this).parent('div').attr('id').substr(2));
        $('#question_id' + current_pos).remove();
        // alert(i);
        for (var i = current_pos + 1; i < x; i++) {
            //setting id less than one of before while removing
            $('#id' + i).attr('id', 'id' + parseInt(i - 1));
            $('#question_id' + i).attr('id', 'question_id' + parseInt(i - 1));
            //todo question number
            $('#question_id' + i).html('Question ' + parseInt(i - 1));
            console.log('Question ' + parseInt(i - 1))
        }
        $(this).parent('div').remove();
        x--;
        for (var i = 0; i < x; i++) {
            console.log('#id' + parseInt(i));
            console.log($('#id' + i).children(".question").val());
        }
    });

    $('#submit').click(function () {
        for (var i = 0; i < x; i++) {
            for (var j = 0; j < parseInt($('#total_answers').val()); j++) {
                console.log($('#id' + i).children(".question").val() + 'RaiBnod');
                var parse_answers = JSON.parse(answers);
                parse_answers['answers'].push({
                    "questions": $('#id' + i).children(".question").val(),
                    "answers": $('#id' + i).children(".answer" + j).val()
                });
                answers = JSON.stringify(parse_answers);
            }

            var parse_obj = JSON.parse(questions);
            parse_obj['questions'].push({
                "questions": $('#id' + i).children(".question").val()
            });
            questions = JSON.stringify(parse_obj);
        }

        console.log(questions);
        console.log(answers);

        $.get(
            "${createLink(controller: 'question', action: 'save')}",
            {
                question: $("#question").val(),
                time: $("#time").val(),

            }
        );
    });
});
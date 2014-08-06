var checkCourseCodeFlag=false
function semesterList() {
    var courseType= $('#programType').val()
    if(courseType){
    }

    $('#multiSelectTab tbody tr').remove()
    for (var j = 1; j <= $('#noOfTerms').val(); j++) {
        $('#multiSelectTab tbody').append('<tr><td style="width:40% "></div> <label>All Course <span class="university-obligatory">*</span></label><select style="width: 60%" name="allsubjectList' + j + '" id="allsubjectList' + j + '"  multiple="true"  /></td>' +
            ' <td style="width:20% "> <button type="button" class="multiSelect-buttons-button" onclick="addToList(' + j + ')" name="add' + j + '"  id="add' + j + '">Add</button>' +
            '  <button type="button" class="multiSelect-buttons-button" onclick="removeFromList(' + j + ')" name="remove' + j + '"  id="remove' + j + '">Remove</button> </td>' +
            '<td style="width:40%;"><select class="select-to" style="width: 50%"  name="semester' + j + '" id="semester' + j + '"  multiple="true"  />' +
//            '<div id="upload-syllabus" style="width: 30%;float:right;">' +
//            '<input type="button" style="float: right; margin-top:20%" id="Syllabus_link" value="Syllabus" onclick="syllabusUpload(' + j + ')" /></div>' +

            '<div id="error-select-' + j + '"></div></div></td></tr>')

        if ($('#modeName option:selected').text().toLowerCase() == "annual") {
            $("<div>Term-" + j + "</div>").insertBefore($('#semester' + j))
        }
        else if (($('#modeName option:selected').text().toLowerCase() == "semester")) {
            $("<div>Semester-" + j + "</div>").insertBefore($('#semester' + j))
        }


        for (var i = 0; i < subjectList.length; i++) {

            $("#allsubjectList" + j).append('<option value="' + subjectList[i].id + '">' + subjectList[i].subjectName + '</option>')
        }

    }

}


function viewSemesterList() {
    $('#multiSelectTab tr').remove()
    for (var j = 1; j <= $('#noOfTerms').html(); j++) {
        $('#multiSelectTab').append('<tr><td style="width: 40%"><label>Term - ' + j + ' Course</label></td>' +
            '<td style="width: 60%"><select class="select-to university-size-2-3" readonly="readonly" style="width: 75%;border: 0px;margin: 0px" name="semester' + j + '" id="semester' + j + '"  multiple="true" /></td></tr>')

    }

}


function makeJson(list) {
    subjectList = jQuery.parseJSON(list.replace(/&quot;/g, '"'))

}
function addToList(j) {
    var selectedValues = [];
    var nonSelected = [];
    var inList2;
    $('#allsubjectList' + j + ' :selected').each(function (l, list1Selected) {
        selectedValues[l] = $(list1Selected).val();
        inList2 = false;
        $('#semester' + j + ' option').each(function (m, list2Selected) {
            nonSelected[m] = $(list2Selected).val();
            if (selectedValues[l] == nonSelected[m]) {
                inList2 = true;
            }
        });

        if (inList2 != true) {
            $('#semester' + j).append("<option value='" + selectedValues[l] + "'>" + $(list1Selected).text() + "</option>");

            var text1 = $(list1Selected).val()
//            alert(text1);
//            $('#semester'+j+' option').filter(function() {
//                //may want to use $.trim in here
//                return $(this).val() == text1;
//            }).attr('selected', true);
            $('#allsubjectList' + j + ' option:selected').each(function (n, allsubSelected) {
                var text3 = $(allsubSelected).val()
                $('#allsubjectList' + j + ' option').filter(function () {
                    return $(this).val() == text3;
                }).attr('selected', false);
            });
        }

    });
    validateLength(j);
}

function removeFromList(j) {
    $('#semester' + j + ' option:selected').each(function () {
        $(this).remove();
        $('#semester' + j + ' option:not(selected)').each(function (k, semSelected) {
            var text2 = $(semSelected).val()
//        $('#semester'+j+' option').filter(function() {
//            return $(this).val() == text2;
//        }).attr('selected', true);
            $('#allsubjectList' + j + ' option:selected').each(function (n, allsubSelected) {
                var text3 = $(allsubSelected).val()
                $('#allsubjectList' + j + ' option').filter(function () {
                    return $(this).val() == text3;
                }).attr('selected', false);
            });
        });
    });
    validateLength(j);
}
function validateLength(j) {
    var validate;
    var length = document.getElementById('semester' + j).options.length;
    if (length == 0) {
        $('#error-select-' + j).html("<label style='margin-left: 4px; color: #cd0a0a; '>Please choose course for semesters</label>");
        validate = false;
    } else {
        $('#error-select-' + j).html("");
        validate = true;
    }

    return validate;
}

function updateInfo(obj) {

    var courseDetailJson = jQuery.parseJSON(obj.replace(/&quot;/g, '"'))
    $('#courseName').val(courseDetailJson['course'].courseName)
    $('#modeName option[value=' + courseDetailJson['course'].courseMode.id + ']').attr("selected", "selected");
    $('#courseTypeName option[value=' + courseDetailJson['course'].courseType.id + ']').attr("selected", "selected");
    $('#programType option[value=' + courseDetailJson['course'].programType.id+ ']').attr("selected", "selected");
    $('#noOfTerms').val(courseDetailJson['course'].noOfTerms)
    $('#courseCode').val(courseDetailJson['course'].courseCode)
    $('#noOfAcademicYears').val(courseDetailJson['course'].noOfAcademicYears)
    $('#totalMarks').val(courseDetailJson['course'].totalMarks)
    $('#marksPerPaper').val(courseDetailJson['course'].marksPerPaper)
    $('#totalCreditPoints').val(courseDetailJson['course'].totalCreditPoints)
    $('#noOfPapers').val(courseDetailJson['course'].noOfPapers)
    $('#courseId').val(courseDetailJson['course'].id)
    $('#session option[value=' + courseDetailJson['sessionOfCourse']+']').attr("selected", "selected");

    if($("#session option:selected").text()==courseDetailJson['sessionOfCourse'].toString()){
             $('#session option[value=' + courseDetailJson['sessionOfCourse']+']').attr("selected", "selected");
    }
    else{
        $('#session').prepend('<option value="'+courseDetailJson['sessionOfCourse']+'">'+ courseDetailJson['sessionOfCourse']+'</option>');
        $('#session option[value=' + courseDetailJson['sessionOfCourse']+']').attr("selected", "selected");
    }
    semesterList()
    for (var i = 1; i <= $('#noOfTerms').val(); i++) {

        for (var j = 0; j < courseDetailJson['semesterList'][i].length; j++) {

            $('#semester' + i).append('<option value="' + courseDetailJson['semesterList'][i][j].id + '">' + courseDetailJson['semesterList'][i][j].subjectName + '</option> ')
        }

    }
}
function enableNoOfSem(t) {
//    alert($(t).val())
    if ($('#modeName').val() == 1 || $('#modeName').val() == 2) {
        $('#noOfTerms').prop('readonly', false);
    }
    else {
        $('#noOfTerms').val('');
        $('#noOfTerms').prop('readonly', true);
    }
}

function viewCourseInfo(obj) {

    var courseDetailJson = jQuery.parseJSON(obj.replace(/&quot;/g, '"'))
     $('#courseName').html(courseDetailJson['course'].courseName)
    //$('#modeName option[value='+courseDetailJson['course'].courseMode.id+']').attr("selected", "selected");
    $('#modeName').html(courseDetailJson['courseMode'])
    $('#courseTypeName').html(courseDetailJson['courseType'])
    $('#courseCategory').html(courseDetailJson['ProgramType'])
    $('#noOfTerms').html(courseDetailJson['course'].noOfTerms)
    $('#courseCode').html(courseDetailJson['course'].courseCode)
    $('#noOfAcademicYears').html(courseDetailJson['course'].noOfAcademicYears)
    $('#totalMarks').html(courseDetailJson['course'].totalMarks)
    $('#marksPerPaper').html(courseDetailJson['course'].marksPerPaper)
    $('#totalCreditPoints').html(courseDetailJson['course'].totalCreditPoints)
    $('#noOfPapers').html(courseDetailJson['course'].noOfPapers)
    $('#courseId').html(courseDetailJson['course'].id)
    viewSemesterList()
    for (var i = 1; i <= courseDetailJson['course'].noOfTerms; i++) {

        for (var j = 0; j < courseDetailJson['semesterList'][i].length; j++) {

            $('#semester' + i).append('<option value="' + courseDetailJson['semesterList'][i][j].id + '">' + courseDetailJson['semesterList'][i][j].subjectName + '</option> ')
        }

    }

}

function fireMultiValidate() {
    var validate = true;
    for (var i = 1; i <= $("#noOfTerms").val(); i++) {
        if (!validateLength(i)) {
            validate = false;
//            return false;
        }

    }

    return validate;
}


function ConvertFormToJSON(form) {
    var array = jQuery(form).serializeArray();
    var json = {};
    var finalList = new Array();
    var i = 0;

    jQuery.each(array, function () {
        json[this.name] = this.value || '';
//        alert(this.name)
        i++;
    });
    json['uploadSyllabus'] = $('#uploadSyllabus').val() || '';
    var semesterList = {};

    for (var j = 1; j <= $('#noOfTerms').val(); j++) {

        var subList = []
        $('#semester' + j + ' option').each(function () {


            subList.push($(this).val() || '');
            console.log(subList)
            semesterList["semester" + j] = subList;
            console.log(semesterList)
        })

    }
    finalList.push(semesterList);

    json["semesterList"] = finalList;

    return json
}

function clearField() {

    for (var i = 1; i <= $('#noOfTerms').val(); i++) {
        $('#semester' + i).empty();
    }
    $('#createCourse').each(function () {
        this.reset();
    });
//    $("html, body").animate({ scrollTop: 0 }, "slow");
}
function save() {
    validate();
    var status = $("#createCourse").valid();
    if (!fireMultiValidate()) {
        return;
    }
    if (status && $("#errorMsg").text().length==0) {
        var formObj = $("#createCourse");
        var data = ConvertFormToJSON(formObj);

        $.ajax({
            type: "post",
            url: url('course', 'saveCourse', ''),
            data: JSON.stringify(data),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {
                if (data.response1=='updated') {
                    document.getElementById("statusMessage").style.display = "block";
                }
                else if(data.response1=='Created'){
                    document.getElementById("statusMessage").style.display = "block";
                    clearField()
                }
                $("html, body").animate({ scrollTop: 0 }, "slow");
            }
        });
    }
}
function syllabusUpload() {
    if ($('#courseName').val()!= "") {

    }
    else {
        alert("Enter The Programme Name First.");
    }
}


function checkCourseCode() {

    var data = $('#courseCode').val();
    $.ajax({
        type: "post",
        url: url('course', 'checkCourseCode', ''),
        data: {courseCode: data},
        success: function (data) {
            if (data.courseCode == "true") {
                $('#errorMsg').text("Programme Code is already registered")
                $('#errorMsg').attr('display', true)
                return false
            }
            else {
                $('#errorMsg').text("")
                return true
            }

        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        }
    });
}
function checkFileType(e){

        var file_list = e.target.files;

        for (var i = 0, file; file = file_list[i]; i++) {
            var sFileName = file.name;
            var sFileExtension = sFileName.split('.')[sFileName.split('.').length - 1].toLowerCase();
            var iFileSize = file.size;
            var iConvert = (file.size / 10485760).toFixed(2);

            if (!(sFileExtension === "pdf" || sFileExtension === "doc" || sFileExtension === "docx") || iFileSize > 10485760) {
                txt = "File type : " + sFileExtension + "\n\n";
                txt += "Size: " + iConvert + " MB \n\n";
                txt += "Please make sure your file is in pdf or doc format and less than 10 MB.\n\n";
//                alert(txt);
            }
            else{
                return false;
            }
        }
}
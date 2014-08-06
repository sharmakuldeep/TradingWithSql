<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">

<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>

<div id="main">
    <fieldset class="form">
        <div id="create-user" class="content scaffold-create" role="main">
            <h3><g:message code="default.create.label" args="[entityName]"/></h3>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${userInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form url="[resource: userInstance, action: 'save']">
                <fieldset class="form">
                    <div class="myclass"><%@ page import="examinationproject.StudyCenter; com.university.Role; com.university.UserRole; myproject.User" %>



                        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
                            <div class="university-size-1-4"><label for="username">
                                <g:message code="user.username.label" default="Username"/>
                                <span class="required-indicator">*</span>
                            </label></div>

                            <div class="university-size-1-3"><g:textField class="university-size-2-3" name="username"
                                                                          required=""
                                                                          value="${userInstance?.username}"/></div>
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', '')} required">
                            <div class="university-size-1-4"><label for="password">
                                <g:message code="user.password.label" default="Password"/>
                                <span class="required-indicator">*</span>
                            </label></div>

                            <div class="university-size-1-3"><g:passwordField name="password"
                                                                              class="university-size-2-3" required=""
                                                                              value="${userInstance?.password}"/></div>
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">

                            <div class="university-size-1-4"><label for="email">
                                <g:message code="user.email.label" default="Email"/></label>
                                <span class="required-indicator">*</span></div>

                            <div class="university-size-1-3"><g:textField name="email" class="university-size-2-3"
                                                                          required=""
                                                                          value="${userInstance?.email}"/></div>

                        </div>


                        %{--<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">--}%

                        %{--<div><label for="role">--}%
                        %{--<g:message code="user.role.label" default="Role"/></label>--}%
                        %{--<span class="required-indicator">*</span></div>--}%
                        %{--<div class="university-size-1-3"> <g:select from="${Role.list()}" class="university-size-2-3" optionKey="authority" optionValue="authority" value="" name="userRole"  noSelection="['':'-Choose role-']"/></div>--}%

                        %{--</div>--}%

                        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
                            <div class="university-size-1-4"><label for="accountExpired">
                                <g:message code="user.accountExpired.label" default="Account Expired"/>

                            </label></div>

                            <div class="university-size-1-3"><g:checkBox name="accountExpired"
                                                                         value="${userInstance?.accountExpired}"/></div>
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
                            <div class="university-size-1-4"><label for="accountLocked">
                                <g:message code="user.accountLocked.label" default="Account Locked"/>

                            </label></div>

                            <div class="university-size-1-3"><g:checkBox name="accountLocked"
                                                                         value="${userInstance?.accountLocked}"/></div>
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
                            <div class="university-size-1-4"><label for="enabled">
                                <g:message code="user.enabled.label" default="Enabled"/>

                            </label></div>

                            <div class="university-size-1-3"><g:checkBox name="enabled"
                                                                         value="${userInstance?.enabled}"/></div>
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
                            <div class="university-size-1-4"><label for="passwordExpired">
                                <g:message code="user.passwordExpired.label" default="Password Expired"/>

                            </label></div>

                            <div class="university-size-1-3"><g:checkBox name="passwordExpired"
                                                                         value="${userInstance?.passwordExpired}"/></div>
                        </div>

                    </div>
                </fieldset>
                <fieldset class='roleFieldSet'>
                           <legend>
                            Please Select Roles
                           </legend>
            %{--<table class='rolesTable'>--}%
            %{--<tbody>--}%
                <g:each in="${roles}" status="i" var='roleInstance'>

                %{--<tr class="prop">--}%

                %{--<td valign="middle" class="name">--}%
                %{--<label> ${fieldValue(bean: roleInstance, field: "authority")} </label>--}%
                %{--</td>--}%
                %{--<td valign="middle">--}%
                %{--<g:checkBox name="myCheckbox" value="${roleInstance.id}" checked=""/>--}%
                %{--</td>--}%

                %{--</tr>--}%
                    <div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'authority', 'error')} ">
                        <div class="university-size-1-4" >
                            <label>${fieldValue(bean: roleInstance, field: "authority")}</label>
                        </div>

                        <div class="university-size-1-3" ><g:checkBox name="myCheckbox" value="${roleInstance.id}"
                                                                     checked=""/></div>
                        <g:if test="${roleInstance.authority=='TABULATOR1' || roleInstance.authority=='TABULATOR2'}">
                        <div class="university-size-1-3" style="width: 10%">
                        <button onclick='assignCourses(this)' id="${roleInstance.id}">Assign Courses</button>
                        </div>
                        </g:if>
                    </div>
                </g:each>


            %{--</tbody>--}%
            %{--</table>--}%
                <fieldset class="buttons">
                    <div class="university-size-1-3"></div>

                    <div class="university-size-1-3"><g:submitButton name="create" class="save university-button"
                                                                     value="${message(code: 'default.button.create.label', default: 'Save')}"/>
                        <g:link controller="user" action="index"><input type="button" name="create"
                                                                        class="save university-button"
                                                                        value="${message(code: 'default.button.cancel', default: 'Cancel')}"/></g:link>
                    </div>
                </fieldset>
            </g:form>
        </div>
    </fieldset>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        document.getElementById("studyCentreId").multiple = false;
    })
    $('input[name="myCheckbox"]').change(function () {
        if ($(this).is(':checked')) {
            if ($(this).val() == 3) {
                document.getElementById("studyCentreDiv").style.visibility = "visible";
                $('#studyCentreId').prop('disabled', false);
                $('#studyCentreId').prop('required', true);
            }

        }
        else{
            if ($(this).val() == 3) {
                document.getElementById("studyCentreDiv").style.visibility = "hidden";
                $('#studyCentreId').prop('disabled', true);
                $('#studyCentreId').prop('required', false);
            }
        }
    })
    function assignCourses(val){
//        alert('helo kuldeep'+val.id)
        window.open("/UniversityProject/user/assignCourse?userId="+val.id,'_self', false)
    }
</script>
</body>

</html>

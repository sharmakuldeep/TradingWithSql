

<div id="header-Menu" style="display:inline-block">
    <ul id="menu">
        <li>
            %{--<g:link controller="strategy" action="butterfly"><g:message code="default.mainMenu1"/></g:link>--}%
            <button class="myButton" onclick="openStrategyPopup()">Add</button>
        </li>
        <li>
            %{--<g:link controller="strategy" action="synthetic"><g:message code="default.mainMenu2"/></g:link>--}%
            <button class="myButton" onclick="stopStrategy()">STOP</button>

        </li>
        <li>
            %{--<g:link controller="strategy" action="calenderSpread"><g:message code="default.mainMenu3"/></g:link>--}%
            <button class="myButton" onclick="deleteStrategy()">DELETE</button>

        </li>
        <li>
            %{--<g:link controller="strategy" action="calenderSpread"><g:message code="default.mainMenu3"/></g:link>--}%
            <button class="myButton" onclick="stopAllStrategy()">STOP ALL</button>

        </li>
    </ul>

    <div class="header-parts" name="logout" style="width: 40%; float: right">
        <sec:ifLoggedIn>
            <div class="university-session-management">
                <sec:username/> || <g:link controller="logout">Logout</g:link>
                <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_SUPERVISOR">
                    ||<g:link controller="user" action="index">Manage User</g:link>
                </sec:ifAnyGranted>
            </div>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <div class="university-session-management">
                |<g:link controller="login" action="auth">Login</g:link>|
            </div>
        </sec:ifNotLoggedIn>
    </div>
</div>







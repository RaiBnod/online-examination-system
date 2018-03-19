<div class="header">
    <div class="nav-toggle-button">
        <a id="menu-toggle" href=""><i class="fa fa-bars"></i></a>
    </div>

    <div class="main-menu-wrapper">
        <div class="module">
            <g:form action="edit">
            %{--<g:link action="edit" >AddUser</g:link>--}%
                <a href="javascript:void(0)" onclick="parentNode.submit();
                return false;" id="add" class="ui-btn">
                <div class="module-icon">
                    <i class="fa fa-plus-circle"></i>
                </div>

                <div class="module-text">
                    Create
                </div>
            </a>
            </g:form>
        </div>

        <div class="module">
            <a href="javascript:void(0)" id="reload" class="ui-btn">
                <div class="module-icon">
                    <i class="fa fa-refresh"></i>
                </div>

                <div class="module-text">
                    Reload
                </div>
            </a>
        </div>

        <div class="module">
            <a href="javascript:void(0)" id="help" class="ui-btn">
                <div class="module-icon">
                    <i class="fa fa-question-circle"></i>
                </div>

                <div class="module-text">
                    Help
                </div>
            </a>
        </div>
    </div>
</div>
<!--header-->
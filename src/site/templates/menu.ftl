<!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">MaryTTS</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/index.html">Documentation</a>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" href="#">Documentation<b class="caret"></b></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/history.html">History</a>
                            </li>
                            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/maryxml/index.html">MaryXML</a>
                            </li>
                            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/publications/index.html">Publications</a>
                            </li>
                            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/module-architecture.html">Architecture Walkthrough</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
    <div class="container">
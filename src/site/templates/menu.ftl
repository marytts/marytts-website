<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<!-- Side navigation -->
<div class="sidenav">
    <li class="dropdown-header">NAVIGATION</li>
    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">Introduction</a>
    <a href="http://mary.dfki.de:59125">Online Demo</a>
    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>download/index.html">Download</a>
    <button class="dropdown-btn">Documentation
        <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/index.html">Documentation</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/overview.html">Overview</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/history.html">History</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/maryxml/index.html">MaryXML</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/tibetan.html">Tibetan</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/publications/index.html">Publications</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation/module-architecture.html">Architecture
            Walkthrough</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>pavoque/index.html">PAVOQUE
            Project</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>pavoque/publications/pavoque-publications.html">PAVOQUE Publications</a>
    </div>
    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>faq.html">FAQ</a>
    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>legal-information.html">Legal
        Information</a>
    <li class="dropdown-header">DEVELOPER DOCUMENTATION</li>
    <button class="dropdown-btn">Project Information
        <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>dev-doc/index.html">Overview</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>dev-doc/team.html">Team</a>
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>dev-doc/mail-lists.html">Mailing Lists</a>
    </div>
    <button class="dropdown-btn">Generated Reports
        <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>javadoc">JavaDocs</a>
    </div>
</div>

<script>
    /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;

    for (i = 0; i < dropdown.length; i++) {
        dropdown[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "block";
            }
        });
    }
</script>

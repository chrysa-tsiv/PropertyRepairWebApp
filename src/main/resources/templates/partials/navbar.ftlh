<#assign currentPagePath = springMacroRequestContext.requestUri>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/admin/home">Property Web Application</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item <#if currentPagePath == '/admin/home'> active</#if>">
                <a class="nav-link" href="/admin/home" >Admin Panel</a>
            </li>
            <li>
                <div class="dropdown <#if currentPagePath == '/admin/create-user' || currentPagePath== '/admin/search-user'> active</#if>">
                    <button class="btn nav-link dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Users
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                        <a class="dropdown-item" href="/admin/create-user">Create User</a>
                        <a class="dropdown-item" href="/admin/search-user">Search User</a>
                    </div>
                </div>
            </li>
            <li class="nav-item <#if currentPagePath == '/admin/search-repair'> active</#if>">
                <a class="nav-link" href="/admin/search-repair">Search Repair</a>
            </li>
        </ul>
        <form action="/logout" class="form-inline my-2 my-lg-0">
            <button class="btn btn-outline-danger my-2 my-sm-0 text-uppercase" type="submit">Logout</button>
        </form>
    </div>
</nav>
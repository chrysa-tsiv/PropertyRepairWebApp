<html>

<head>
    <title>Property Web Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>

</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/admin/2">Property Web Application</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/admin/2">Admin Panel</a>
            </li>
            <li>
                <div class="dropdown active">
                    <button class="btn nav-link dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                        Owners <span class="sr-only">(current)</span>
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                        <a class="dropdown-item" href="/admin/create">Create Owner</a>
                        <a class="dropdown-item" href="/admin/search">Search Owner</a>
                    </div>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <button class="btn btn-outline-danger my-2 my-sm-0 text-uppercase" type="submit">Logout</button>
        </form>
    </div>
</nav>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/admin/2">Admin Panel</a></li>
        <li class="breadcrumb-item active" aria-current="page">Search User</li>
    </ol>
</nav>

<div style="margin-top:1%;margin-left:2%;margin-right:2%;">
    <form action="/admin/search" method="get">
    <div class="form-group">
        <label for="vat_create">VAT</label>
        <input type="text" class="form-control" id="vat_create" placeholder="VAT" name="vat" value="${vat!""}">
    <div class="form-group">
        <label for="email_create">Email address</label>
        <input type="email" class="form-control" id="email_create" placeholder="Enter email" name ="email" value="${email!""}">
    </div>
</div>
<button type="submit" class="btn btn-primary">Search</button>
</form>
</div>
<!-- table that is only visible when vat or email has value and user has also value.Displays the result user of the search -->
<#if vat?has_content || email?has_content>
    <#if user?has_content>
        <div class="users-table">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">FIRST NAME</th>
                    <th scope="col">LAST NAME</th>
                    <th scope="col">VAT</th>
                    <th scope="col">PHONE</th>
                    <th scope="col">ADDRESS</th>
                    <th scope="col">EMAIL</th>
                    <th scope="col">EDIT</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.vat}</td>
                        <td>${user.phone}</td>
                        <td>${user.address}</td>
                        <td>${user.email}</td>
                        <td><a href="/admin/${user.id}/edit"><span data-feather="tool"></span></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <script>feather.replace()</script>
    <#else>
        <h2>No user found with this value</h2>
    </#if>
</#if>
</body>
</html>
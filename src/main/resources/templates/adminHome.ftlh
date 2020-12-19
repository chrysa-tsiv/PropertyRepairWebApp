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
    <a class="navbar-brand" href="/admin/home">Property Web Application</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/admin/home">Admin Panel <span class="sr-only">(current)</span></a>
            </li>
            <li>
                <div class="dropdown">
                    <button class="btn nav-link dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Owners
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                        <a class="dropdown-item" href="/admin/create-user">Create Owner</a>
                        <a class="dropdown-item" href="/admin/search-user">Search Owner</a>
                    </div>
                </div>
            </li>
        </ul>
        <form action="/logout" class="form-inline my-2 my-lg-0">
            <button class="btn btn-outline-danger my-2 my-sm-0 text-uppercase" type="submit">Logout</button>
        </form>
    </div>
</nav>

<h2>${rdrMsg!""}</h2>

<div class="welcome-msg">
    <h2>Hello Admin</h2>
</div>

<h1>ONGOING REPAIRS</h1>

<div class="repairs-table">
    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">DATE</th>
            <th scope="col">STATUS</th>
            <th scope="col">TYPE</th>
            <th scope="col">COST</th>
            <th scope="col">ADDRESS</th>
            <th scope="col">DESCRIPTION</th>
            <th scope="col">OWNER</th>
            <th scope="col">EDIT/DELETE</th>
        </tr>
        </thead>
        <tbody>
        <#list repairs as repair>
        <tr>
            <th scope="row">${repair?index+1}</th>
            <td>${repair.repairDate}</td>
            <td>${repair.status}</td>
            <td>${repair.repairType}</td>
            <td>${repair.cost}</td>
            <td>${repair.address}</td>
            <td>${repair.description}</td>
            <td><a href="/admin/${repair.user.id}/view-user-info">${repair.user.vat}</a></td>
            <td>
                <ul class="list-group list-group-horizontal">
                    <li class="list-group-item list-group-item-warning"><a href="/admin/${repair.id}/edit-repair"><span data-feather="tool"></span></a></li>
                    <li class="list-group-item list-group-item-danger"><a href="/admin/${repair.id}/delete-repair"><span data-feather="x"></span></a></li>
                </ul>
            </td>
        </tr>
        </#list>
    </tbody>
</table>
</div>

<h1>USERS</h1>

<div class="users-table">
    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">FIRST NAME</th>
            <th scope="col">LAST NAME</th>
            <th scope="col">VAT</th>
            <th scope="col">PHONE</th>
            <th scope="col">ADDRESS</th>
            <th scope="col">EMAIL</th>
            <th scope="col">VIEW/ADD REPAIRS</th>
            <th scope="col">EDIT/DELETE</th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
        <tr data-id="${user.id}">
            <th scope="row">${user?index+1}</th>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.vat}</td>
            <td>${user.phone}</td>
            <td>${user.address}</td>
            <td>${user.email}</td>
            <td>
                <ul class="list-group list-group-horizontal">
                    <li class="list-group-item list-group-item-primary"><a href="/admin/${user.id}/view-user-info"><span data-feather="list"></span></a></li>
                    <li class="list-group-item list-group-item-success"><a href="/admin/${user.id}/create-repair"><span data-feather="plus"></span></a></li>
                </ul>
            </td>
            <td>
                <ul class="list-group list-group-horizontal">
                    <li class="list-group-item list-group-item-warning"><a href="/admin/${user.id}/edit-user"><span data-feather="tool"></span></a></li>
                    <li class="list-group-item list-group-item-danger"><a href="/admin/${user.id}/delete-user"><span data-feather="x"></span></a></li>
                </ul>
            </td>
        </tr>
        </#list>
    </tbody>
</table>
</div>

<script>
  feather.replace()
</script>


        </body>

        </html>
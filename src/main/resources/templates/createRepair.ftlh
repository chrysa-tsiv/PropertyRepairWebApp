<html>

<head>
    <title>Property Web Application</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
<!-- navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/admin/home">Property Web Application</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/admin/home">Admin Panel </a>
            </li>
            <li>
                <div class="dropdown active">
                    <button class="btn nav-link dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                        Owners <span class="sr-only">(current)</span>
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

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/admin/2">Admin Panel</a></li>
        <li class="breadcrumb-item active" aria-current="page">Search User</li>
    </ol>
</nav>

<#import "/spring.ftl" as spring />

<!-- table that is only visible when vat or email has value and user has also value.Displays the result user of the search -->
<form action="/admin/${id}/create-repair"method="post"/>
    <div class="form-group m-3 col-6">
        <label>Date</label>
        <@spring.bind "repairForm.repairDate"/>
        <input type="date" class="form-control" name="repairDate" id="repairDate" >
        <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
    </div>
    <div class="form-group m-3 col-6">
        <label>Status</label>
        <@spring.bind "repairForm.status"/>
        <select class="form-control" name="status" id="status">
            <option>PENDING</option>
            <option>ONGOING</option>
            <option>COMPLETED</option>
        </select>
        <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
    </div>
    <div class="form-group m-3 col-6">
        <label>cost</label>
        <@spring.bind "repairForm.cost"/>
        <input type="text" class="form-control" name="cost" id="cost">
        <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
    </div>
    <div class="form-group m-3 col-6">
        <label>address</label>
        <@spring.bind "repairForm.address"/>
        <input type="text" class="form-control" name="address" id="address">
        <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
    </div>
    <div class="form-group m-3 col-6">
        <label>description</label>
        <@spring.bind "repairForm.description"/>
        <input type="text" class="form-control" name="description" id="description">
        <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
    </div>
    <div class="form-group m-3 col-6">
        <label>RepairType</label>
        <@spring.bind "repairForm.repairType"/>
        <select class="form-control" name="repairType" id="repairType">
            <option>PAINTING</option>
            <option>INSULATION</option>
            <option>FRAMES</option>
            <option>PLUMBING</option>
            <option>ELECTRICAL_WORKS</option>
        </select>
        <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
    </div>
<input type="submit" name="create" />

    <script>feather.replace()</script>

</body>
</html>
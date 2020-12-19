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
<!-- breadcrumb -->
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/admin/home">Admin Panel</a></li>
        <li class="breadcrumb-item active" aria-current="page">Create User</li>
    </ol>
</nav>

<#import "/spring.ftl" as spring />

<!-- form -->
<div style="margin-top:1%;margin-left:2%;margin-right:2%;">
    <form action="/admin/create-user" name="userForm" method="post">
    <div class="form-group" >
        <label for="vat_create">VAT</label>
        <@spring.bind "userForm.vat"/>
        <input type="text" class="form-control" id="vat_create" placeholder="Enter VAT" name="vat" value="${userForm.vat!''}">
            <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                <li style="color: #dc3545">${error}</li>
            </#list>
        </ul>
    </#if>
</div>
<div class="form-group">
    <label for="firstName_create">First Name</label>
    <@spring.bind "userForm.firstName"/>
    <input type="text" class="form-control" id="firstName_create" placeholder="Enter First Name" name="firstName" value="${userForm.firstName!''}">
        <#if spring.status.error>
        <ul>
            <#list spring.status.errorMessages as error>
            <li style="color: #dc3545">${error}</li>
        </#list>
    </ul>
</#if>
</div>
<div class="form-group">
    <label for="lastName_create">Last Name</label>
    <@spring.bind "userForm.lastName"/>
    <input type="text" class="form-control" id="lastName_create" placeholder="Enter Last Name" name="lastName" value="${userForm.lastName!''}">
        <#if spring.status.error>
        <ul>
            <#list spring.status.errorMessages as error>
            <li style="color: #dc3545">${error}</li>
        </#list>
    </ul>
</#if>
</div>
<div class="form-group">
<label for="address_create">Address</label>
<@spring.bind "userForm.address"/>
<input type="text" class="form-control" id="address_create" placeholder="Enter Address" name="address" value="${userForm.address!''}">
    <#if spring.status.error>
    <ul>
        <#list spring.status.errorMessages as error>
        <li style="color: #dc3545">${error}</li>
    </#list>
</ul>
</#if>
        </div>
<div class="form-group">
<label for="phone_create">Phone</label>
<@spring.bind "userForm.phone"/>
<input type="text" class="form-control" id="phone_create" placeholder="Enter Phone" name="phone" value="${userForm.phone!''}">
    <#if spring.status.error>
    <ul>
        <#list spring.status.errorMessages as error>
        <li style="color: #dc3545">${error}</li>
    </#list>
</ul>
</#if>
        </div>
<div class="form-group">
<label for="email_create">Email address</label>
<@spring.bind "userForm.email"/>
<input type="email" class="form-control" id="email_create" placeholder="Enter email" name="email" value="${userForm.email!''}">
    <#if spring.status.error>
    <ul>
        <#list spring.status.errorMessages as error>
        <li style="color: #dc3545">${error}</li>
    </#list>
</ul>
</#if>
        </div>
<div class="form-group">
<label for="password_create">Password</label>
<@spring.bind "userForm.password"/>
<input type="password" class="form-control" id="password_create" placeholder="Enter Password" name="password" value="${userForm.password!''}">
    <#if spring.status.error>
    <ul>
        <#list spring.status.errorMessages as error>
        <li style="color: #dc3545">${error}</li>
    </#list>
</ul>
</#if>
        </div>
<div class="form-group">
<label for="propertyType_create">Property Type</label>
<@spring.bind "userForm.propertyType"/>
<select class="form-control" id="propertyType_create" name="propertyType">
    <#list propertyTypes as propertyType>
    <option value="${propertyType}" <#if userForm.propertyType??><#if userForm.propertyType == propertyType> selected</#if></#if>>${propertyType}</option>
        </#list>
        </select>
<#if spring.status.error>
<ul>
<#list spring.status.errorMessages as error>
<li style="color: #dc3545">${error}</li>
</#list>
        </ul>
        </#if>
        </div>
<button type="submit" class="btn btn-primary">Submit</button>
        </form>
        </div>
        </body>
        </html>
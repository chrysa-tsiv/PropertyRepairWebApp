<#import "/spring.ftl" as spring />
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
            <li class="breadcrumb-item active" aria-current="page">Edit User</li>
        </ol>
    </nav>

    <div class="container-fluid">
        <div class="row">
                    <div class="col-md-12 order-md-1">
                        <form action="/admin/user/edit" method="post">

                            <input type="hidden" name="id" value="${userModel.id}">

                            <div class="mb-3">
                                <label for="firstName">VAT</label>
                                <div class="input-group">
                                    <@spring.bind "userModel.vat"/>
                                    <input type="text" class="form-control" id="vat" name="vat" value="${userModel.vat}">
                                    <#if spring.status.error>
                                        <ul>
                                            <#list spring.status.errorMessages as error>
                                                <li style="color: #dc3545">${error}</li>
                                            </#list>
                                        </ul>
                                    </#if>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="firstName">First Name</label>
                                <div class="input-group">
                                    <@spring.bind "userModel.firstName"/>
                                    <input type="text" class="form-control" id="firstName" name="firstName" value="${userModel.firstName}">
                                    <#if spring.status.error>
                                        <ul>
                                            <#list spring.status.errorMessages as error>
                                                <li style="color: #dc3545">${error}</li>
                                            </#list>
                                        </ul>
                                    </#if>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="firstName">Last Name</label>
                                <div class="input-group">
                                    <@spring.bind "userModel.lastName"/>
                                    <input type="text" class="form-control" id="lastName" name="lastName" value="${userModel.lastName}">
                                    <#if spring.status.error>
                                        <ul>
                                            <#list spring.status.errorMessages as error>
                                                <li style="color: #dc3545">${error}</li>
                                            </#list>
                                        </ul>
                                    </#if>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="firstName">Address</label>
                                <div class="input-group">
                                    <@spring.bind "userModel.address"/>
                                    <input type="text" class="form-control" id="address" name="address" value="${userModel.address}">
                                    <#if spring.status.error>
                                        <ul>
                                            <#list spring.status.errorMessages as error>
                                                <li style="color: #dc3545">${error}</li>
                                            </#list>
                                        </ul>
                                    </#if>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="firstName">Phone</label>
                                <div class="input-group">
                                    <@spring.bind "userModel.phone"/>
                                    <input type="text" class="form-control" id="phone" name="phone" value="${userModel.phone}">
                                    <#if spring.status.error>
                                        <ul>
                                            <#list spring.status.errorMessages as error>
                                                <li style="color: #dc3545">${error}</li>
                                            </#list>
                                        </ul>
                                    </#if>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="firstName">Email</label>
                                <div class="input-group">
                                    <@spring.bind "userModel.email"/>
                                    <input type="text" class="form-control" id="email" name="email" value="${userModel.email}">
                                    <#if spring.status.error>
                                        <ul>
                                            <#list spring.status.errorMessages as error>
                                                <li style="color: #dc3545">${error}</li>
                                            </#list>
                                        </ul>
                                    </#if>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="category">Property Type</label>
                                <div class="input-group">
                                    <@spring.bind "userModel.propertyType"/>
                                    <select class="custom-select d-block w-100" id="propertyType" name="propertyType">
                                        <#if propertyTypes??>
                                            <#list propertyTypes as propertyType>
                                                <option value="${propertyType}"<#if userModel.propertyType == propertyType> selected</#if>>${propertyType}</option>
                                            </#list>
                                        </#if>
                                    </select>
                                </div>
                            </div>

                            <button class="btn btn-primary btn-lg mt-4" type="submit">Update</button>
                        </form>
                    </div>
        </div>
    </div>

</body>

</html>
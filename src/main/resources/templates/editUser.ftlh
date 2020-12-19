<#import "/spring.ftl" as spring />
<html>
<head>
    <#include "partials/headers.ftlh">

</head>

<body>
    <!-- navbar -->
    <#include "partials/navbar.ftlh">
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
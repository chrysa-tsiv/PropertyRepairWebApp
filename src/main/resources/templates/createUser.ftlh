<html>

<head>
    <#include "partials/headers.ftlh">
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
    <style>
        label.error {
            color: red;
        }
    </style>
</head>

<body>
<!-- navbar -->
<#include "partials/navbar.ftlh">
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
    <form id="create-user" action="/admin/create-user" name="userForm" method="post">
    <div class="form-group col-md-6" >
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
<div class="form-group col-md-6">
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
<div class="form-group col-md-6">
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
<div class="form-group col-md-6">
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
<div class="form-group col-md-6">
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
<div class="form-group col-md-6">
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
<div class="form-group col-md-6">
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
<div class="form-group col-md-6">
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
<script>
    jQuery(function ($)
    {$('#create-user').validate(
        {
            rules:
                {
                    vat: {
                        minlength: 9,maxlength: 9,digits: true
                    },
                    firstName: {
                        required: true
                    },
                    lastName: {
                        required: true
                    },
                    address: {
                        required: true
                    },
                    phone: {
                        minlength: 10,maxlength: 14,required: true
                    },
                    email: {
                        email: true
                    },
                    propertyType:{
                        required: true
                    }
                },
            messages:
                {
                    vat: {
                        minlength: 'VAT should be exactly 9 digits',
                        maxlength: 'VAT should be exactly 9 digits',
                        digits: 'VAT should contain only digits'
                    },
                    firstName: {
                        required: 'First Name is required'
                    },
                    lastName: {
                        required: 'Last Name is required'
                    },
                    address: {
                        required: 'Address is required'
                    },
                    phone: {
                        required: 'Phone is required'
                    },
                    email: {
                        email: 'Email format required'
                    },
                    propertyType:{
                        required: 'Property Type is required'
                    }
                }
        });
    });
</script>
        </body>
        </html>
<html>

<head>
    <#include "partials/headers.ftlh">

    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
    <style>
        .error {
            color: red;
        }
    </style>
</head>

<body>
<#include "partials/navbar.ftlh">

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/admin/home">Admin Panel</a></li>
        <li class="breadcrumb-item active" aria-current="page">Search User</li>
    </ol>
</nav>

<div style="margin-top:1%;margin-left:2%;margin-right:2%;">
    <form id="search-user" action="/admin/search-user" method="get">
    <div class="form-group col-md-6">
        <label for="vat">VAT</label>
        <input type="text" class="form-control" id="vat" placeholder="VAT" name="vat" value="${vat!""}">
    </div>
    <div class="form-group col-md-6">
        <label for="email_create">Email address</label>
        <input type="email" class="form-control" id="email_create" placeholder="Enter email" name ="email" value="${email!""}">
    </div>
    <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>
<!-- table that is only visible when vat or email has value and user has also value.Displays the result user of the search -->
<#if vat?has_content || email?has_content>
    <#if user?has_content>
        <div class="users-table">
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                <tr>
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
                    <tr data-id="${user.id}">
                        <td id="${user.id}-fname">${user.firstName}</td>
                        <td id="${user.id}-lname">${user.lastName}</td>
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
                                <li class="list-group-item list-group-item-danger"><a href="#" data-toggle="modal" data-target="#removeUser"><span data-feather="x"></span></a></li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
<#include "partials/feather-script.ftlh">
    <#else>
        <div class="alert alert-danger" role="alert">
            No user found with this <#if vat?has_content && email?has_content>vat,email combination<#elseif email?has_content>email<#else> vat</#if>
        </div>
    </#if>
</#if>

<#include "partials/userModal.ftlh">

<script>
jQuery(function ($)
{$('#search-user').validate(
{rules:
{vat: {minlength: 9,maxlength: 9,digits: true}},
messages:
{vat: {minlength: 'ID should be more than 9 digits',maxlength: 'ID should be more than 9 digits',digits: 'ID should contain only digits'}}
});
});
</script>
</body>
</html>
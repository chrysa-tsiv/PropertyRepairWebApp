<html>

<head>
    <#include "partials/headers.ftlh">

</head>

<body>
<#include "partials/navbar.ftlh">

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/admin/home">Admin Panel</a></li>
        <li class="breadcrumb-item active" aria-current="page">User Info Page</li>
    </ol>
</nav>

<div class="welcome-msg">
    <h2>User ${user.firstName} ${user.lastName}</h2>
</div>

<h1>USER INFO</h1>
<ul class="list-group list-group-horizontal ">
    <li class="list-group-item" style="border:none"><a href="/admin/${user.id}/edit-user" role="button" class="btn btn-warning">EDIT</a></li>
    <li class="list-group-item" style="border:none"><a href="/admin/${user.id}/delete-user" role="button" class="btn btn-danger">DELETE</a></li>
</ul>
<div class="user-table">
    <table class="table table-striped table-bordered ">
        <thead class="thead-dark">
        <tr>
            <th scope="col">FIRST NAME</th>
            <th scope="col">LAST NAME</th>
            <th scope="col">VAT</th>
            <th scope="col">PHONE</th>
            <th scope="col">ADDRESS</th>
            <th scope="col">EMAIL</th>
            <th scope="col">PROPERTY TYPE</th>
        </tr>
        </thead>
        <tbody>
        <tr data-id="${user.id}">
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.vat}</td>
            <td>${user.phone}</td>
            <td>${user.address}</td>
            <td>${user.email}</td>
            <td>${user.propertyType}</td>
        </tr>
    </tbody>
</table>
</div>

<div>
<h1>REPAIRS</h1>
<a href="/admin/${user.id}/create-repair" role="button" class="btn btn-success">CREATE REPAIR</a>
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
</div>
<#include "partials/feather-script.ftlh">


        </body>

        </html>
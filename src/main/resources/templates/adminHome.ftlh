<html>

<head>
    <#include "partials/headers.ftlh">

</head>

<body>
<#include "partials/navbar.ftlh">

<h2>${rdrMsg!""}</h2>

<div class="welcome-msg">
    <h2>Hello ${loggedInUser.firstName} ${loggedInUser.lastName}</h2>
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

<#include "partials/feather-script.ftlh">

        </body>

        </html>
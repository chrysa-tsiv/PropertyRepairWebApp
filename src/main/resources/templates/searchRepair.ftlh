<html>

<head>
    <#include "partials/headers.ftlh">

</head>

<body>
<#import "/spring.ftl" as spring />
<#include "partials/navbar.ftlh">

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/admin/home">Admin Panel</a></li>
        <li class="breadcrumb-item active" aria-current="page">Search Repair</li>
    </ol>
</nav>

<div style="margin-top:1%;margin-left:2%;margin-right:2%;">
    <form action="/admin/search-repair" method="get">
        <div class="form-group">
            <label for="vat_search">VAT</label>
            <input type="text" class="form-control" id="vat_search" placeholder="VAT" name="vat" value="${vat!''}">
        </div>
        <div class="form-group">
            <label>From Date</label>
            <input type="date" class="form-control" name="fromRepairDate" id="fromRepairDate" value="${fromRepairDate!''}">
        </div>
        <div class="form-group">
            <label>To Date</label>
            <input type="date" class="form-control" name="toRepairDate" id="toRepairDate" value="${toRepairDate!''}">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>
<!-- table that is only visible when vat or email has value and repair has also value.Displays the result repair of the search -->
    <#if vat?has_content || fromRepairDate?has_content || toRepairDate?has_content>
        <#if repairs?has_content>

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
                                    <td>
                                        <a href="/admin/${repair.user.id}/view-user-info">${repair.user.vat}</a>
                                    </td>
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
<#include "partials/feather-script.ftlh">

<#else>
<div class="alert alert-danger" role="alert">
No repairs found
</div>
</#if>
    </#if>

</body>
</html>
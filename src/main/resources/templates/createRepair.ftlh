<html xmlns="http://www.w3.org/1999/html">

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>



    <script src="/js/validators.js"></script>




</head>

<body>
<!-- navbar -->
<#include "partials/navbar.ftlh">

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/admin/home">Admin Panel</a></li>
        <li class="breadcrumb-item active" aria-current="page">Create Repair</li>
    </ol>
</nav>

<#import "/spring.ftl" as spring />

<!-- table that is only visible when vat or email has value and user has also value.Displays the result user of the search -->
<form action="/admin/${id}/create-repair" method="post" id="create-repair" />
    <div class="form-group m-3 col-6">
        <label for="repairDate">Date</label>
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
        <label for="status">Status</label>
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
        <label for="cost">cost</label>
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
        <label for="address">address</label>
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
        <label for="description">description</label>
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
        <label for="repairType">RepairType</label>
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

<#include "partials/feather-script.ftlh">

</body>
</html>
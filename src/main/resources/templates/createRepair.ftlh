<html>

<head>
    <#include "partials/headers.ftlh">

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
<div style="margin-top:1%;margin-left:2%;margin-right:2%;">
    <form action="/admin/${id}/create-repair" method="post" />
    <div class="form-group col-md-6">
        <label>Date</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><span data-feather="calendar"></span></span>
            </div>
            <@spring.bind "repairForm.repairDate" />
            <input type="date" class="form-control" name="repairDate" id="repairDate">
                <#if spring.status.error>
                <ul>
                    <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
        </div>
    </div>
    <div class="form-group col-md-6">
    <label>Status</label>
    <@spring.bind "repairForm.status" />
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
    <div class="form-group col-md-6">
    <label>cost</label>
    <@spring.bind "repairForm.cost" />
    <input type="text" class="form-control" name="cost" id="cost">
    <#if spring.status.error>
    <ul>
        <#list spring.status.errorMessages as error>
        <li style="color: #dc3545">${error}</li>
    </#list>
    </ul>
    </#if>
    </div>
    <div class="form-group col-md-6">
    <label>address</label>
    <@spring.bind "repairForm.address" />
    <input type="text" class="form-control" name="address" id="address">
    <#if spring.status.error>
    <ul>
        <#list spring.status.errorMessages as error>
        <li style="color: #dc3545">${error}</li>
    </#list>
    </ul>
    </#if>
    </div>
    <div class="form-group col-md-6">
    <label>description</label>
    <@spring.bind "repairForm.description" />
    <input type="text" class="form-control" name="description" id="description">
    <#if spring.status.error>
    <ul>
        <#list spring.status.errorMessages as error>
        <li style="color: #dc3545">${error}</li>
    </#list>
    </ul>
    </#if>
    </div>
    <div class="form-group col-md-6">
    <label>RepairType</label>
    <@spring.bind "repairForm.repairType" />
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
    <input type="submit" class="btn btn-primary" name="create" />
    </form>

</div>

<#include "partials/feather-script.ftlh">

</body>

</html>
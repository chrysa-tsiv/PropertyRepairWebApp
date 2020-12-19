<html>

<head>

<!--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
<!--    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
<!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>-->
<!--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>-->

    <#include "partials/headers.ftlh">
    <#include "partials/datepicker-head.ftlh">

<!--    <#&#45;&#45;    <script src="/js/main.js"></script>&ndash;&gt;-->
</head>

<body>
<!-- navbar -->
<#include "partials/navbar.ftlh">

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/admin/home">Admin Panel</a></li>
        <li class="breadcrumb-item active" aria-current="page">Edit Repair</li>
    </ol>
</nav>

<#import "/spring.ftl" as spring />

<!-- table that is only visible when vat or email has value and user has also value.Displays the result user of the search -->
<form action="/admin/edit-repair"method="post"/>
<#setting date_format="MM/dd/yyyy">
<div class="form-group m-3 col-6">
    <input type="hidden" name="id" value="${repairModel.id}">
</div>

<div class="mb-3">
    <label for="datepicker">Date</label>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text"><span data-feather="calendar"></span></span>
        </div>
        <@spring.bind "repairModel.repairDate"/>
        <input type="date" class="form-control" id="datepicker" name="repairDate" value="${repairModel.repairDate}">
        <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
    </div>
</div>

<div class="form-group m-3 col-6">
    <label>Status</label>
    <@spring.bind "repairModel.status"/>
    <select class="form-control" name="status" id="status">
        <#if status??>
            <#list status as currentStatu>
                <option value="${currentStatu}"<#if repairModel.status == currentStatu> selected</#if>>${currentStatu}</option>
            </#list>
        </#if>
        <#if !status??>
            <option value="${repairModel.status}"></option>
        </#if>
        <#if spring.status.error>
            <ul>
                <#list spring.status.errorMessages as error>
                    <li style="color: #dc3545">${error}</li>
                </#list>
            </ul>
        </#if>
    </select>
</div>

<div class="form-group m-3 col-6">
    <label>cost</label>
    <@spring.bind "repairModel.cost"/>
    <input type="text" class="form-control" name="cost" id="cost" value="${repairModel.cost}">
    <#if spring.status.error>
        <ul>
            <#list spring.status.errorMessages as error>
                <li style="color: #dc3545">${error}</li>
            </#list>
        </ul>
    </#if>
</div>

<div class="form-group m-3 col-6">
    <label>address</label>
    <@spring.bind "repairModel.address"/>
    <input type="text" class="form-control" name="address" id="address"value="${repairModel.address}">
    <#if spring.status.error>
        <ul>
            <#list spring.status.errorMessages as error>
                <li style="color: #dc3545">${error}</li>
            </#list>
        </ul>
    </#if>
</div>

<div class="form-group m-3 col-6">
    <label>description</label>
    <@spring.bind "repairModel.description"/>
    <input type="text" class="form-control" name="description" id="description" value="${repairModel.description}">
    <#if spring.status.error>
        <ul>
            <#list spring.status.errorMessages as error>
                <li style="color: #dc3545">${error}</li>
            </#list>
        </ul>
    </#if>
</div>

<div class="form-group m-3 col-6">
    <label>RepairType</label>
    <@spring.bind "repairModel.repairType"/>
    <select class="form-control" name="repairType" id="repairType">
        <#if repairTypes??>
            <#list repairTypes as repairType>
                <option value="${repairType}"<#if repairModel.repairType == repairType> selected</#if>>${repairType}</option>
            </#list>
        </#if>
<#--        <&lt;#&ndash;#if spring.status.error>-->
<#--            <ul>-->
<#--                <#list spring.status.errorMessages as error>-->
<#--                    <li style="color: #dc3545">${error}</li>-->
<#--                </#list>-->
<#--            </ul>-->
<#--        </#if>&ndash;&gt;-->
    </select>
</div>

<input type="submit" name="update">

<#include "partials/feather-script.ftlh">

</body>
</html>
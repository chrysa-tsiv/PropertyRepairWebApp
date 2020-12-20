<html>

<head>
    <#include "partials/headers.ftlh">
    <#include "partials/datepicker-head.ftlh">
    <style>
        label.error {
            color: red;
        }
    </style>
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
<div style="margin-top:1%;margin-left:2%;margin-right:2%;">
<form action="/admin/edit-repair"method="post"/>
<#setting date_format="MM/dd/yyyy">
<div class="form-group">
    <input type="hidden" name="id" value="${repairModel.id}">
</div>

<div class="form-group col-md-6">
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

<div class="form-group col-md-6">
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

<div class="form-group col-md-6">
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

<div class="form-group col-md-6">
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

<div class="form-group col-md-6">
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

<div class="form-group col-md-6">
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

<input type="submit" class="btn btn-primary" name="update"/>

</form>
</div>

<#include "partials/feather-script.ftlh">
<script>
    jQuery(function ($)
    {$('#create-user').validate(
        {
            rules:
                {
                    repairDate: {
                        required: true
                    },
                    status: {
                        required: true
                    },
                    cost: {
                        required: true
                    },
                    address: {
                        required: true
                    },
                    description: {
                        required: true
                    },
                },
            messages:
                {
                    repairDate: {
                        required: 'Repair Date is required'
                    },
                    status: {
                        required: 'Status is required'
                    },
                    cost: {
                        required: 'Cost is required'
                    },
                    address: {
                        required: 'Address is required'
                    },
                    description: {
                        required: 'Description is required'
                    },
                }
        });
    });
</script>
</body>
</html>
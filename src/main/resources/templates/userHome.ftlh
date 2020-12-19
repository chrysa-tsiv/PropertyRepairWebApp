<html>

<head>
    <#include "partials/headers.ftlh">

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/user/home">Property Web Application</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form action="/logout" class="form-inline my-2 my-lg-0 ml-auto p-2" >
                <button class="btn btn-outline-danger my-2 my-sm-0 text-uppercase" type="submit">Logout</button>
            </form>
        </div>
    </nav>

    <div class="welcome-msg">
        <h2>Hello ${loggedInUser.firstName} ${loggedInUser.lastName}</h2>
    </div>

    <div class="repairs-table">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">DATE</th>
                    <th scope="col">STATUS</th>
                    <th scope="col">TYPE</th>
                    <th scope="col">COST</th>
                    <th scope="col">ADDRESS</th>
                    <th scope="col">DESCRIPTION</th>
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
                    </tr>
                </#list>
            </tbody>
        </table>
    </div>


</body>

</html>
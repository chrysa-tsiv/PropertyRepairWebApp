<!doctype html>
<html lang="en">

  <head>

      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Property Repair Web App | Sign In</title>
    <link rel="stylesheet" href="/css/login.css">
  </head>

  <body class="text-center">

    <div class="container">
        <div class="align-self-center">
            <h1><b>Welcome to the Property Repair Web App</b></h1>
        </div>

        <div class="align-self-center">
            <h3>Sign In</h3>
        </div>

        <div class="row">
            <form class="form-signin" action="/login" method="post">

              <label for="email" class="sr-only">Email address</label>
              <input type="email" id="email" name="email" class="form-control" placeholder="Email address" required autofocus>

              <label for="password" class="sr-only">Password</label>
              <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>

              <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>

            </form>
        </div>
    </div>
  </body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>User Registration</title>
    <style>
      body {
        background-color: #f8f9fa;
      }

      .container {
        margin-top: 50px;
      }

      .bggrad {
        background-image:
          linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
      }
    </style>
  </head>

  <body>

    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="card  bggrad">
            <div class="card-header">
              <h2 class="text-center">User Registration</h2>
            </div>
            <div class="card-body">
              <form method="POST" action="/addUser" id="registrationForm" onsubmit="return validateForm()">
                <div class="form-group">
                  <label for="name">Name:</label>
                  <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                  <label for="username">Username:</label>
                  <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                  <label for="email">Email:</label>
                  <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                  <label for="mobile">Mobile:</label>
                  <input type="tel" class="form-control" id="mobile" name="mobile" required>
                </div>
                <div class="form-group">
                  <label for="role">Role:</label>
                  <select class="form-control" id="role" name="role" required>
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="password">Password:</label>
                  <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="form-group">
                  <label for="cpassword">Confirm Password:</label>
                  <input type="password" class="form-control" id="cpassword" name="cpassword" required>
                </div>
                <button type="submit" id="register" class="btn btn-primary btn-block">Register</button>
              </form>
              <p class="mt-2">Already Registered?? <a href="/login">Login here</a> </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script>

      function validateForm() {
        // Basic client-side validation
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("cpassword").value;

        if (password !== confirmPassword) {
          swal("Try again!", "Passwords must be same", "error");
          return false;
        }
        swal("Registration successful!", "Welcome", "success");
        return true;

      }
    </script>

  </body>

  </html>
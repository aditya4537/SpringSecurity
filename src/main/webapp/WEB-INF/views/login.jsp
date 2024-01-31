<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>Login</title>
        <style>
            body {
                background-color: #f8f9fa;
            }

            .container {
                margin-top: 100px;
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
                <div class="col-md-4">
                    <div class="card bggrad">
                        <div class="card-header">
                            <h2 class="text-center">Login</h2>
                        </div>
                        <div class="card-body">
                            <form action="/login" method="POST" id="loginForm" onsubmit="return validateForm()">
                                <div class="form-group">
                                    <label for="username">Username:</label>
                                    <input type="text" class="form-control" id="username" name="username" required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password:</label>
                                    <input type="password" class="form-control" id="password" name="password" required>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember-me" value=""
                                        id="form2Example31" checked />
                                    <label class="form-check-label mb-2" for="form2Example31"> Remember me </label>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Login</button>
                            </form>
                            <p class="mt-2">Not Registered? <a href="/register">Register here</a> </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function validateForm() {
                // Basic client-side validation
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;

                if (username === "" || password === "") {
                    alert("Please enter both username and password");
                    return false;
                }

                return true;
            }
        </script>

    </body>

    </html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>Index</title>
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

            .navgrad {
                background-image: linear-gradient(135deg, #fdfcfb 0%, #e2d1c3 100%);
            }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light navgrad">
            <a class="navbar-brand" href="/home">Spring</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile/${user}">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Settings</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="jumbotron text-center bggrad">
                <h1>Welcome to Our Website!</h1>
                <h3>${user}</h3>
                <p>This is a simple homepage.</p>
            </div>
        </div>

        <script>
            function logout() {
                // Perform logout actions, e.g., redirect to the login page or clear session data
                alert("Logged out successfully");
                // You may redirect to the login page using window.location.href = "login.html";
            }
        </script>

    </body>

    </html>
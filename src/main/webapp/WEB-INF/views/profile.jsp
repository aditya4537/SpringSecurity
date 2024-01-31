<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>User Profile</title>
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
                        <a class="nav-link" href="#">Edit Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="card  bggrad">
                <div class="card-header">
                    <h2 class="text-center">User Profile</h2>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" value="${userdata.name}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" class="form-control" id="username" value="${userdata.username}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" value="${userdata.email}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="mobile">Mobile:</label>
                        <input type="tel" class="form-control" id="mobile" value="${userdata.mobile}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="role">Role:</label>
                        <input type="text" class="form-control" id="role" value="${userdata.role}" readonly>
                    </div>
                </div>
            </div>
        </div>

    </body>

    </html>
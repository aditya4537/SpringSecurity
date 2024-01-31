<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>Home</title>
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
            <div class="jumbotron text-center bggrad">
                <h1>Welcome to Our Website!</h1>
                <p>This is the indexpage.</p>
                <div class="btn-group" role="group">
                    <a href="/login" class="btn btn-primary">Login</a>
                    <a href="/register" class="btn btn-success">Register</a>
                </div>
            </div>
        </div>

    </body>

    </html>
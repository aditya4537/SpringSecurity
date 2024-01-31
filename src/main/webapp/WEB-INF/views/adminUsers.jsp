<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            <title>Admin | Users</title>
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
                            <a class="nav-link" href="#">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/users">Users</a>
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
                <h2 class="mt-4">User Table</h2>
                <table class="table table-bordered bggrad">
                    <thead>
                        <tr>
                            <th>UserId</th>
                            <th>Name</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Role</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${users}">
                            <tr>
                                <td>${user.userId}</td>
                                <td>${user.name}</td>
                                <td>${user.username}</td>
                                <td>${user.email}</td>
                                <td>${user.mobile}</td>
                                <td>${user.role}</td>
                            </tr>
                        </c:forEach>

                        <!-- Add more rows as needed -->
                    </tbody>
                </table>
            </div>

            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        </body>

        </html>
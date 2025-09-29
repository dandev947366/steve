<%--

    SteVe - SteckdosenVerwaltung - https://github.com/steve-community/steve
    Copyright (C) 2013-2025 SteVe Community Team
    All Rights Reserved.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

--%>
<%@ page contentType="text/html" pageEncoding="utf-8" language="java" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%@ include file="00-context.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${ctxPath}/static/css/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>SteVe - Steckdosenverwaltung</title>
</head>
<body>

<div class="main">

    <!-- Top Banner with Logo -->
    <div class="top-banner shadow-sm py-3 mb-4">
        <div class="container text-center">
            <a href="${ctxPath}/manager/home">
                <img src="${ctxPath}/static/images/logo2.png" height="80" alt="Apollo GS Logo">
            </a>
        </div>
    </div>

<!-- Main Wrapper -->
<div class="main-wrapper">
    <div class="container d-flex justify-content-center align-items-center" style="min-height: 60vh;">
        <div class="card shadow-sm p-4" style="max-width: 400px; width: 100%; border-radius: 12px;">

            <!-- Error Message -->
            <c:if test="${param.error != null}">
                <div class="alert alert-danger text-center" role="alert">
                    Your name or password is incorrect.
                </div>
            </c:if>

            <!-- Sign In Form -->
            <h3 class="text-center fw-bold mb-4" style="color: #3E44B4;">Sign In</h3>
            <form method="POST" action="${ctxPath}/manager/signin">
                <div class="d-grid gap-3">

                    <!-- Name -->
                    <div class="form-group">
                        <label for="username" class="form-label">Name</label>
                        <input type="text" class="form-control w-100" name="username" id="username" required>
                    </div>

                    <!-- Password -->
                    <div class="form-group">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control w-100" name="password" id="password" required>
                    </div>

                    <!-- Sign In Button -->
                    <button type="submit" class="btn fw-bold w-100" style="background-color: #3E44B4; color: #ffffff;">Sign In</button>

                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>

        </div>
    </div>
</div>
   
<%@ include file="00-footer.jsp" %>

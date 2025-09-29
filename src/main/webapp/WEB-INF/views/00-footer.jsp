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
<footer class="shadow-sm py-5 border-top">
    <div class="container">
        <div class="row">

            <!-- Brand / About -->
            <div class="col-md-4 mb-4 mb-md-0 text-center text-md-start">
                <h5 class="fw-bold" style="color: #3E44B4;">Apollo GS</h5>
                <p class="small text-dark-emphasis mb-0">Smart management system for charge points, users, and transactions.</p>
            </div>

            <!-- Quick Links -->
            <div class="col-md-4 mb-4 mb-md-0 text-center">
                <h6 class="fw-bold mb-3" style="color: #3E44B4;">Quick Links</h6>
                <ul class="list-unstyled">
                    <li><a href="${ctxPath}/manager/chargepoints" class="text-decoration-none" style="color: #3E44B4;">Charge Points</a></li>
                    <li><a href="${ctxPath}/manager/users" class="text-decoration-none" style="color: #3E44B4;">Users</a></li>
                    <li><a href="${ctxPath}/manager/reservations" class="text-decoration-none" style="color: #3E44B4;">Reservations</a></li>
                    <li><a href="${ctxPath}/manager/transactions" class="text-decoration-none" style="color: #3E44B4;">Transactions</a></li>
                </ul>
            </div>

            <!-- Contact Info -->
            <div class="col-md-4 text-center text-md-end">
                <h6 class="fw-bold mb-3" style="color: #3E44B4;">Contact Us</h6>
                <p class="small mb-1">Email: <a href="mailto:support@apollo-gs.com" class="text-decoration-none" style="color: #3E44B4;">support@apollo-gs.com</a></p>
                <p class="mb-0">
                    Current Server Time: 
                    <span id="current-time" class="fs-6 text-danger">
                        <%
                            java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("EEEE, MMMM d, yyyy 'at' h:mm:ss a z");
                            formatter.setTimeZone(java.util.TimeZone.getDefault()); // or specify a fixed zone if needed
                            out.print(formatter.format(new java.util.Date()));
                        %>
                    </span>
                </p>
            </div>

        </div>
    </div>
</footer>


</body>
</html>
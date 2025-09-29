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
<%@ include file="00-header.jsp" %>
<div class="content">
    <div class="container">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">

            <div class="col">
                <a href="${ctxPath}/manager/chargepoints" class="text-decoration-none">
                    <div class="card h-100 shadow-sm border-0 bg-primary-subtle text-primary-emphasis">
                        <div class="card-body text-center">
                            <h5 class="card-title fw-bold">Charge Points</h5>
                            <p class="card-text display-6 fw-bold">${stats.numChargeBoxes}</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="${ctxPath}/manager/ocppTags" class="text-decoration-none">
                    <div class="card h-100 shadow-sm border-0 bg-success-subtle text-success-emphasis">
                        <div class="card-body text-center">
                            <h5 class="card-title fw-bold">OCPP Tags</h5>
                            <p class="card-text display-6 fw-bold">${stats.numOcppTags}</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="${ctxPath}/manager/users" class="text-decoration-none">
                    <div class="card h-100 shadow-sm border-0 bg-info-subtle text-info-emphasis">
                        <div class="card-body text-center">
                            <h5 class="card-title fw-bold">Users</h5>
                            <p class="card-text display-6 fw-bold">${stats.numUsers}</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="${ctxPath}/manager/reservations" class="text-decoration-none">
                    <div class="card h-100 shadow-sm border-0 bg-warning-subtle text-warning-emphasis">
                        <div class="card-body text-center">
                            <h5 class="card-title fw-bold">Active Reservations</h5>
                            <p class="card-text display-6 fw-bold">${stats.numReservations}</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="${ctxPath}/manager/transactions" class="text-decoration-none">
                    <div class="card h-100 shadow-sm border-0 bg-danger-subtle text-danger-emphasis">
                        <div class="card-body text-center">
                            <h5 class="card-title fw-bold">Active Transactions</h5>
                            <p class="card-text display-6 fw-bold">${stats.numTransactions}</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="${ctxPath}/manager/home/ocppJsonStatus" class="text-decoration-none">
                    <div class="card h-100 shadow-sm border-0 bg-light-subtle text-dark-emphasis">
                        <div class="card-body">
                            <h5 class="card-title fw-bold text-primary text-center">Connected JSON Charge Points</h5>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    OCPP 1.2
                                    <span class="badge bg-primary rounded-pill">${stats.numOcpp12JChargeBoxes}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    OCPP 1.5
                                    <span class="badge bg-primary rounded-pill">${stats.numOcpp15JChargeBoxes}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    OCPP 1.6
                                    <span class="badge bg-primary rounded-pill">${stats.numOcpp16JChargeBoxes}</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="${ctxPath}/manager/chargepoints" class="text-decoration-none">
                    <div class="card h-100 shadow-sm border-0 bg-light-subtle text-dark-emphasis">
                        <div class="card-body">
                            <h5 class="card-title fw-bold text-primary text-center">Received Heartbeats</h5>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Today
                                    <span class="badge bg-primary rounded-pill">${stats.heartbeatToday}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Yesterday
                                    <span class="badge bg-primary rounded-pill">${stats.heartbeatYesterday}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Earlier
                                    <span class="badge bg-primary rounded-pill">${stats.heartbeatEarlier}</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="${ctxPath}/manager/home/connectorStatus" class="text-decoration-none">
                    <div class="card h-100 shadow-sm border-0 text-dark-emphasis">
                        <div class="card-body">
                            <h5 class="card-title fw-bold text-primary text-center">Connector Status</h5>
                            <ul class="list-group list-group-flush">
                                <c:forEach items="${stats.statusCountMap}" var="it">
                                    <li class="list-group-item d-flex justify-content-between align-items-center">
                                        ${it.key}
                                        <span class="badge bg-primary rounded-pill">${it.value}</span>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>
</div>
       </div>
    </div>
</div>
<%@ include file="00-footer.jsp" %>
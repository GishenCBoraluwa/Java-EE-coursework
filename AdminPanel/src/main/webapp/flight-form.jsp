<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Flight Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #8E1D4BE8">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> Phoenix Airline Dashboard </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Flights</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${flight != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${flight == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${flight != null}">
            			Edit Flight
            		</c:if>
						<c:if test="${flight == null}">
            			Add New Flight
            		</c:if>
					</h2>
				</caption>

				<c:if test="${flight != null}">
					<input type="hidden" name="id" value="<c:out value='${flight.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Start</label> <input type="text"
						value="<c:out value='${flight.start}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Finish</label> <input type="text"
						value="<c:out value='${flight.finish}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Date</label> <input type="date"
						value="<c:out value='${flight.date}' />" class="form-control"
						name="country">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Time</label> <input type="time"
						value="<c:out value='${flight.time}' />" class="form-control"
						name="country">
				</fieldset>

				<button type="submit" class="btn btn-success btn-lg"><i class="fas fa-database"></i>  Save</button>
				</form>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<!DOCTYPE >

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<style type="text/css">
img {
	max-width: 100%;
}

.portalLink {
	margin-bottom: 10px;
	padding: 5px;
	border: 1px solid gray;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 100px 2px;
    cursor: pointer;
}
</style>
</style>

<body class="container">
	<h1>Books</h1>

	<a href="<c:url value="/books/add" />">Add Books</a>

	<div>
		<c:if test="${not empty books}">

			<c:forEach var="book" items="${books}">

				<div class="portalLink row">

					<div class="icon col-md-4">
						<img src="${book.imgUrl}" />
					</div>

					<div class="description col-md-8">
						<b> Title: </b>
						<c:out value="${book.title}" />
						<br> <b>Author: </b>
						<c:out value="${book.author}" />
						<br> <b>Rating: </b>
						<c:out value="${book.rating}" />
						<br> <b>Status: </b>
						<c:out value="${book.status}" />
						<br> <b>Date Added: </b>
						<c:out value="${book.dateAdded}" />
						<br>
						
					
						
					</div>

				</div>
			</c:forEach>
		</c:if>
	</div>
</body>
</html>
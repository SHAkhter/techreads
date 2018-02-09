<!DOCTYPE>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<body>
	<h1>Add a Book</h1>

	<!-- Hyperlink not working currently -->
	<a href="<c:url value="/books/" />">Return to Books</a>

	<form:form method="post" modelAttribute="bookForm"
		action="${pageContext.request.contextPath }/books">

		<label for="title">Book Title</label>
		<form:input path="title" type="text" />
		<div>
			<label for="author">Author Name</label>
			<form:input path="author" type="text" />
		</div>

		<div>
			<label for="rating">Rating</label> <select name="rating">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>

		</div>

		<div>
			<label for="status">Status:</label><br /> <input type="radio"
				name="status" value="Read">Read</input><br /> <input type="radio"
				name="status" value="Unread">Unread</input><br /> <input
				type="radio" name="status" value="Completed">Completed</input><br />
		</div>

		<div>
			<label for="imgUrl">Image URL</label>
			<form:input path="imgUrl" type="text" />
		</div>
		
		<div>
			<label for="dateAdded">Date Added</label>
			<form:input path="dateAdded" type="date"/>
		</div>


		<button type="submit">Add</button>
	</form:form>

</body>
</html>
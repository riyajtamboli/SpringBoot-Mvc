<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report</title>
</head>
<body>
	<h2>Show All Books</h2>
	
		<table>
			<thead>
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Category</th>
						<th>Price</th>
						<th>Publisher</th>
						<th>Publish Date</th>
						<th>Quantity</th>
					</tr>
			</thead>
			
			<tbody>
				<c:choose>
					<c:when test="${not empty book}">
						<c:forEach var="book" items="${book}">
							<tr>
								<td>${book}</td>
							</tr>
							
						</c:forEach>
					</c:when>
				</c:choose>
			
			</tbody>
		</table>
	

</body>
</html>
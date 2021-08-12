<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hiển Thị Thông Tin Học Viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="search-container">
    <form action="/find" method="post">
        <input type="text" placeholder="Search In Here" name="findName">
        <button type="submit" class="btn btn-warning">SEARCH</button>
    </form>
</div>
<div class="container">
    <h2>THÔNG TIN</h2>
    <a href="/create">CREATE</a>
    <form>
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>ADDRESS</td>
                <td>PHONE</td>
                <td>EMAIL</td>
                <td>CLASSROOM</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="hv" varStatus="loop">
                <tr>
                    <td>${hv.name}</td>
                    <td>${hv.date}</td>
                    <td>${hv.address}</td>
                    <td>${hv.phone}</td>
                    <td>${hv.email}</td>
                    <td>${hv.classroom}</td>
                    <td><a href="/edit?index=${loop.index}">EDIT</a></td>
                    <td><a href="/delete?index=${loop.index}">DELETE</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>
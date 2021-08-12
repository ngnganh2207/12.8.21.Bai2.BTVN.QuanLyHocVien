<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>THÊM HỌC VIÊN</h2>
    <form action="/create" method="post">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <td>Name</td>
                <td>date</td>
                <td>address</td>
                <td>phone</td>
                <td>email</td>
                <td>classroom</td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" name="name" placeholder="nhap name"></td>
                <td><input type="text" name="date" placeholder="nhap date"></td>
                <td><input type="text" name="address" placeholder="nhap address"></td>
                <td><input type="text" name="phone" placeholder="nhap phone"></td>
                <td><input type="text" name="email" placeholder="nhap email"></td>
                <td><input type="text" name="classroom" placeholder="nhap Classroom"></td>
                <td><button type="submit">Create</button></td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>
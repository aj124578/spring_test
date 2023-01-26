<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

    <div class="center_box">
        <h1>회원가입 페이지</h1>    
    </div>
    <hr>
    <%@ include file="../layout/loginButton.jsp" %>
<div class="center_box">
    <div class="table">
    <form action="/join" method="post">
    <table border="1">
        <tr>
            <th>유저네임</th>
            <td><input type="text" name="username" placeholder="Enter username" required></td>
        </tr>
        <tr>
            <th>패스워드</th>
            <td><input type="password" name="password" placeholder="Enter password" required></td>
        </tr>
        <tr>
            <th>이메일</th>
            <td><input type="email" name="email" placeholder="Enter email" required></td>
        </tr>
    </table>
    <button type="submit">회원가입완료</button>
    </form>
    </div>
</div>

    <%@ include file="../layout/footer.jsp" %>
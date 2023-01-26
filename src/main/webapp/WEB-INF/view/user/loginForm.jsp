<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


    <%@ include file="../layout/header.jsp" %>
        <div class="center_box">
        <h1>로그인 페이지</h1>    
        </div>
        <hr>
    <%@ include file="../layout/loginButton.jsp" %>

<div class="center_box">
    <div class="table">
        <form action="/login" method="post">
        <table border="1">
            <tr>
                <th>유저네임</th>
                <td><input type="text" name="username" placeholder="Enter username" required></td>
            </tr>
            <tr>
                <th>패스워드</th>
                <td><input type="password" name="password" placeholder="Enter password" required></td>
            </tr>
        </table>
        <button type="submit">로그인</button>
        </form>
    </div>
</div>

    <%@ include file="../layout/footer.jsp" %>
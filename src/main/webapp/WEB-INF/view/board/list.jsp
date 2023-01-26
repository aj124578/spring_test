<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>
        <div class="center_box">
        <h1>게시글 목록 페이지</h1>
        </div>
        <hr />
        <%@ include file="../layout/loginButton.jsp" %>
<div class="center_box">
    <div class="table">
        <table border="1">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성일</th>
            </tr>

            <c:forEach items="${boardList}" var="board">
            
            <tr>
                <td>${board.id}</td>
                <td><a href="">${board.title}</a></td>
                <td>${board.createdAt}</td>
            </tr>
            </c:forEach>
        </table>
        </div>
    </div>
    <br>
    <div class="center_box">
    <a href="">글쓰기</a>
    </div>

        <%@ include file="../layout/footer.jsp" %>
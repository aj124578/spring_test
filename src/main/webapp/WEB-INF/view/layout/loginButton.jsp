<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
               <c:choose>
                    <c:when test="${principal == null}">
                    <div class="center_box">
                        <div class="login_button" >
                            <a href="/loginForm">로그인</a>
                        </div>
                        <div class="join_button">
                            <a href="/joinForm">회원가입</a>
                        </div>
                    </div>
                    </c:when>


                    <c:otherwise>
                    <div class="center_box">
                        <div class="user_info">
                        <a href="/updateForm">회원정보</a>
                        </div>
                        <div class="logout_button">
                        <a href="/logout">로그아웃</a>
                        </div>
                    </div>
                    </c:otherwise>
                </c:choose>
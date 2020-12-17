<%@page import="com.petmet.web.entity.Notice" %>
<%@page import="com.petmet.web.service.NoticeService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width>, initial-scale=1.0">
    <title>관리자 > 커뮤니티 > 공지사항 관리 > 글쓰기</title>
    <link rel="stylesheet" href="../../css/reset.css" type="text/css">
    <!-- <link rel="stylesheet" href="../../css/admin/community/index.css" type="text/css"> -->
    <script src="https://kit.fontawesome.com/b280fc7aa7.js" crossorigin="anonymous"></script>

</head>

<body>
    <header class="header">
        <h1><a href="../index.html">logo</a></h1>

        <nav>
            <h1>헤더 메뉴 목록</h1>

            <ul>
                <li><a href="../user/index.html">User</a></li>
                <li><a href="../feed/index.html">Feed</a></li>
                <li><a href="../index.html">Community</a></li>
                <li><a href="../place/index.html">Place</a></li>
            </ul>
        </nav>

        <nav>
            <h1>바로가기 메뉴</h1>
                <ul>
                    <il><a href>펫멧이동</a></il>

                    <il><a href>로그아웃</a></li>
            
        </nav>
    </header>

    <section class="body">
        <h1>Content Body</h1>

        <aside class="aside">
            <h1>Aside 메뉴</h1>

            <nav>
                <h1>세부 메뉴 목록</h1>

                <ul>
                    <li>
                        <i class="fas fa-bullhorn"></i>
                        <a href="list.html">공지사항관리</a>
                    </li>

                    <li>
                        <i class="fas fa-bullhorn"></i>
                        <a href="../QnA/list.html">QnA 관리</a>
                    </li>

                    <li>
                        <i class="fas fa-clipboard-list"></i>
                        <a href="../category/list.html">카테고리 관리</a>
                    </li>
                    
                    <li>
                        <i class="fas fa-clipboard-list"></i>
                        <a href="../board/list.html">게시글 관리</a>
                    </li>

                    <li>
                        <i class="fas fa-ban"></i>
                        <a href="../board/reported.html">신고된 게시글 관리</a>
                    </li>

                    <li>
                        <i class="fas fa-comment"></i>
                        <a href="../comment/list.html">댓글 관리</a>
                    </li>

                    <li>
                        <i class="fas fa-comment-slash"></i>
                        <a href="../comment/reported.html">신고된 댓글 관리</a>
                    </li>
                </ul>
            </nav>
        </aside>

        <main class = "main">
            <h1>공지사항 상세 내용</h1>

            <table border="1">
                <tr>
                    <td>제목</td>
                    <td colspan="3">${n.title}</td>
                </tr>

                <tr>
                    <td>등록일</td>
                    <td><fmt:formatDate value="${n.regdate}" pattern="yyyy-MM-dd a hh:mm:ss"/></td>
                    <td>공개여부</td>
                    <td><input type="checkbox" checked></td>
                </tr>

                <tr>
                    <td>작성자</td>
                    <td>${n.writerId}</td>
                    <td>조회수</td>
                    <td>${n.hit}</td>
                </tr>

                <tr>
                    <td>첨부파일</td>
                    <td colspan="3">
                      <c:forTokens var="fileName" items="${n.files}" delims="," varStatus = "st">
                        <a download href="/static/notice/2020/${n.id}/${fileName}">${fileName} </a> 
                                      <c:if test = "${st.last==false }">
                                       </c:if>
                                   </c:forTokens></td>
                </tr>

                <tr>
                    <td colspan="4">${n.content}</td>
                </tr>
            </table>

            <section>
                <h1>이벤트 버튼</h1>

        <a href="list"> <input type="button" value="목록"></a> 
        <a href ="edit?id=${n.id}"><input type="button" value="수정"></a>  
           <a href ="del?id=${n.id}"><input type="button" value="삭제"></a>
            </section>
        </main>
    </section>

    <footer class="footer">
        <h1>Footer</h1>
    </footer>

</body>

</html>
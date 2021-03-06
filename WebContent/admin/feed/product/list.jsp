<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/admin/shop/product/list.css">
    <script src="https://kit.fontawesome.com/b280fc7aa7.js" crossorigin="anonymous"></script>
    <title>상품관리</title>
</head>
<body>
    <header class="header">
        <h1><a href="../../index.html">logo</a></h1>

        <nav>
            <h1 class="d-none">메뉴</h1>
            <ul>
                <li>
                    <a href="../../user/index.html">회원관리</a>
                </li>
                <li>
                    <a href="../index.html">쇼핑몰</a>
                </li>
                <li>
                    <a href="../../community/index.html">커뮤니티 게시글관리</a>
                </li>
            </ul>
        </nav>
    </header>


    <div class="body">
        <div class="container">
            <h1 class="d-none">관리인 : 쇼핑몰 관리</h1>
            <aside class="aside">
                <nav>
                    <h1 class="d-none">쇼핑몰관리 목록</h1>
                    <ul>
                        <li>
                            <i class="far fa-list-alt"></i>
                            <a href="../order/index.html">주문관리</a>
                        </li>
                        <li>
                            <i class="fas fa-gift"></i>
                            <a href="../product/list">상품관리</a>
                            <ul>
                                <li><a href="reg">상품등록</a></li>
                            </ul>
                        </li>
                        <li>
                            <i class="fas fa-clipboard-list"></i>
                            <a href="../post/notice.html">게시글 관리</a>
                        </li>
                    </ul>
                </nav>
            </aside>

        <main class="main">
                <section>
                    <table border="1">
                        <tr>
                            <th>검색분류</th>
                            <td>
                            <select>
                                <option>상품명</option>
                                <option>제조사</option>
                            </select>
                            <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>판매가</th>
                            <td>
                            <input type="number"><span>원~</span>
                            <input type="number"><span>원</span>
                            </td>
                        </tr>
                        <tr>
                            <th>진열상태</th>
                            <td>
                            <input type="radio" name="진열상태">전체
                            <input type="radio" name="진열상태">진열
                            <input type="radio" name="진열상태">진열안함
                            </td>
                        </tr>
                        <tr>
                            <th>등록일</th>
                            <td>
                            <input placeholder="날짜를 입력해주세요." type="text"> 
                            ~ <input placeholder="날짜를 입력해주세요." type="text">
                            </td>
                        </tr>
                    </table>
                    <form>
                        <input type="submit" value="검색"></input>
                        <input type="submit" value="초기화"></input>
                    </form>
                </section>

            <section>
                <h1>상품리스트</h1>     
                <table border="1">
                    <thead>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>번호</td>
                            <td>이미지</td>
                            <td>상품명</td>
                            <td>등록일</td>
                            <td>가격</td>
                            <td>재고</td>
                            <td>진열</td>
                            <td>수정</td>
                            <td>삭제</td>
                        </tr>
                    </thead>   
                    <tbody>
                    
                    <c:forEach var ="p" items="${list}">
                        <tr> 
                            <td>
                                <input type="checkbox">
                               
                            </td>
                            <td>${p.id}</td>
                            <td><img src="../../../images/admin/product/${p.imgPath}"></td>
                            <td>${p.name}
                                <select>
                                    <option>사료</option>
                                    <option>용품</option>
                                </select>
                            </td>
                            <td>${p.regdate}</td>
                            <td>${p.price}</td>
                            <td>${p.amount}</td>
                            <td>${p.posted}</td>
                            <td>
                                <a href="modify?id=${p.id}"><input type="button" value="수정"></a>
                            </td>
                            <td>
                                <a href="del?id=${p.id}"><input type="button" value="삭제"></a>
                            </td>
                        </tr>
                      </c:forEach>
                      
                    </tbody>    
                </table>
            </section>	

            <section>
                <h1 class="d-none">페이지요청목록</h1>
                    <div>
                    이전
                        <ul>
                            <li>1</li>
                            <li>2</li>
                        </ul>
                    다음
                    </div>
            </section>
        </main>
        </div>
    </div>
    
    <footer class="footer">
        <h1 class="d-none">Footer</h1>
    </footer>
</body>
</html>
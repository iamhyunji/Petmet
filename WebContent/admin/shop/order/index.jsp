
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Main</title>
    <link href="../../../css/reset.css" type="text/css" rel="stylesheet">
    <link href="../../../css/admin/shop/order/index.css" type="text/css" rel="stylesheet">
</head>
<body>
    <header class="header">
        <h1><a href="../index.html">logo</a></h1>

        <nav class="quick-menu">
            <h1>메뉴</h1>
            <ul>
                <li><a href="../../user/index.html">회원관리</a></li>
                <li><a href="../index.html">쇼핑몰</a></li>
                <li><a href="../../community/index.html">커뮤니티 게시글관리</a></li>
            </ul>
        </nav>
    </header>

    <main class="main">
        <div class="container">
            <h1>관리인 : 주문 관리</h1>
            
            <aside class="aside">
            <nav class = "shop-menu">
                <ul>
                    <li>
                        <a href="index">전체주문목록</a>
                    </li>
                    <li>
                        <a href="delivery.html">배송관리</a>
                    </li>
                    <li>
                        <a href="cancel.html">취소/교환/반품/환불</a>
                    </li>
                </ul>
            </nav>
             </aside>
            <section class = "content-box">
                <div class="contents">
                <h1>전체주문목록</h1>
                <table border="1">
                    <tr>
                        <th class="thead">검색어</th>
                        <td>
                            <select>
                                <option>상품명</option>
                                <option>제조사</option>
                            </select>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <th class="thead">주문상태</th>
                        <td>
                            <input type="checkbox">전체
                            <input type="checkbox">배송준비중
                            <input type="checkbox">배송중
                            <input type="checkbox">배송완료
                        </td>
                    </tr>
                    <tr>
                        <th class="thead">cs주문상태</th>
                        <td>
                            <input type="checkbox">전체
                            <input type="checkbox">취소
                            <input type="checkbox">교환
                            <input type="checkbox">반품
                            <input type="checkbox">환불
                        </td>
                    </tr>
                    <tr>
                        <th class="thead">입금/결제상태</th>
                        <td>
                            <input type="radio" name="결제상태">입금전
                            <input type="radio" name="결제상태">입금완료
                            <input type="radio" name="결제상태">결제완료
                        </td>
                    </tr>
                </table>
                <input type="submit" value="검색">
                <table border="1" class="table-2">
                    <thead>
                        <tr>
                        	<th>주문번호</th>
                            <th>결제일</th>
                            <th>주문자</th>
                            <th>상품명</th>
                            <th>실결제금액</th>
                            <th>결제수단</th>
                            <th>결제상태</th>
                            <th>미배송</th>
                            <th>배송중</th>
                            <th>배송완료</th>
                            <th>취소</th>
                            <th>교환</th>
                            <th>반품</th>
                        </tr>
                        
                    </thead>
                    <tbody>
	                    <tr>
						    	주문일(결제일)   주문번호   주문자 도움말
						        상품명   총 실결제금액   결제수단   결제상태   미배송   배송중   배송완료   취소   교환   반품   메모
						        검색된 주문내역이 없습니다.
					    </tr>
					    <c:forEach var="o" items="${list }">
						    <tr>
						    	<th>${o.id }</th>
	                            <th>${o.payDate }</th>
	                            <th>${o.userId }</th>
	                            <th>${o.productName }</th>
	                            <th>${o.payAmount }</th>
	                            <th>${o.payMethod }</th>
	                            <th>${o.payStatement }</th>
	                            <th>${o.deliveryStatement }</th>
	                            <th>${o.deliveryStatement }</th>
	                            <th>${o.deliveryStatement }</th>
	                            <th>${o.refund }</th>
	                            <th>${o.refund }</th>
	                            <th>${o.refund }</th>
						    </tr>
					    </c:forEach>
				    </tbody>
                </table>
            </div>
            </section>
        </div>
    </main>

    <footer class="footer">
    </footer>
</body>
</html>
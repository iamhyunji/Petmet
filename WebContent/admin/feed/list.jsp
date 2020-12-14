<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../../css/admin/components/table/list.css">
  <script src="https://kit.fontawesome.com/b280fc7aa7.js" crossorigin="anonymous"></script>
  <title>FEED-LIST</title>
</head>
<body>

    <!----------------------------------header--------------------------------------->
  <header id="header" class="header">
    <div class="container">
      <div class="logo">
        <a href="../index.html">
          <i class="fas fa-dog fa-3x"></i>
          <h1>PetMet</h1>
        </a>
      </div>

      <nav>
        <h1 class="d-none">헤더 목록</h1>
        <ul>
          <li><a href="../user/index.html">USER</a></li>
          <li><a href="index.html">FEED</a></li>
          <li><a href="../community/index.html">COMMUNITY</a></li>
          <li><a href="">PLACE</a></li>
        </ul>
      </nav>
    </div>
  </header>

    <!----------------------------------body--------------------------------------->
    <div class="body feed-screen">

      <h1 class="d-none">Feed 관리자 페이지</h1>
      <div class="container">

    <!----------------------------------aside--------------------------------------->
        <aside class="aside">
          <h1 class="d-none">페이지 목록</h1>
          <ul>
            <li><a href="index.html">Report</a></li>
          </ul>
        </aside>

    <!----------------------------------main--------------------------------------->
        <main id="main" class="main feed-list">
          <h1 class="d-none">Feed-list 관리자 페이지</h1>
            
          <section>
            <h1 class="d-none">신고 리스트</h1>
            <table class="list-table" border="1">
              <thead>
                <tr>
                  <th>번호</th>
                  <th>ID(신고자)</th>
                  <th>ID(신고받은자)</th>
                  <th>신고일</th>
                  <th>신고사유</th>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <td>1</td>
                  <td>현지양</td>
                  <td><a href="detail.html">김꼰대</a></td>
                  <td>9090.09.09</td>
                  <td>열정overload</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>민영양</td>
                  <td><a href="detail.html">김꼰대</a></td>
                  <td>9090.09.09</td>
                  <td>열정overload</td>
                </tr>
              </tbody>
            </table>
          </section>
            
          <div class="pager">
            <div>
              <a href="#"><i class="fas fa-angle-double-left"></i></a>
            </div>
            <div>
              <a href="#"><i class="fas fa-angle-left"></i></a>
            </div>
          <ul>
            <li><a href="#"">1</a></li>
            <li><a href="#"">1</a></li>
            <li><a href="#"">1</a></li>
            <li><a href="#"">1</a></li>
          </ul>
          <div>
            <a href="#"><i class="fas fa-angle-right"></i></a>
          </div>
          <div>
            <a href="#"><i class="fas fa-angle-double-right"></i></a>
          </div>
          </div>

        </main>
      </div>
  </div>

    <!----------------------------------footer--------------------------------------->
  <footer id="footer" class="footer">
      <div class="container">
        <h1 class="d-none">Footer</h1>
      </div>
    </footer>
  </body>
</html>
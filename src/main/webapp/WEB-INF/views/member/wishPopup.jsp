<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<head>
<meta charset="UTF-8">
<title>** SCHEDULE INSERT **</title>
<script>
$(function(){
	$(".btn-danger").on('click', function(){
		window.close();
	})
});
</script>
</head>
<body>

<div class="container">          
  <table class="table table-hover">
    <thead>
      <tr>
        <th>캠핑장 등록 번호</th>
      </tr>
    </thead>
    <tbody>
 		<c:forEach items="${listWish}" var = "i">
			<tr>
				<td><a href="/info/detail?contentId=${i }">${i}</a> </td>
			</tr>
		</c:forEach>
    </tbody>
  </table>
</div>

           <div style="text-align:center;">
				<button class="btn btn-danger"> 닫기 </button>
           </div>

</body>
</html>
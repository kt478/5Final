<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce179a320cf4d7ee0e06336563f2a077&libraries=LIBRARY&libraries=services"></script>
<link href="/css/campdetail.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap" rel="stylesheet">
</head>
<style>

#reservebtn {
    width: 100%;
    height: 100%;
    cursor: pointer;
    font-size: 17px;
    border-radius: 28px;
    background-color: #EEEE;
    border-radius: 7px;
    border: 1px solid blcak;
    display: inline-block;
    color: black;
    align-items: center;
    text-align: center;
    vertical-align: middle;
    padding-top: 7%;
}

#wishbox{
    width: 20%;
    float: left;
    margin-right: 3%;
    margin-left: 27%;
	
}

.infotable1 {
	width: 90%;
	border-bottom: solid 3px #BDBDBD;
	border-top: solid 3px #BDBDBD;
	margin: auto;
}

.infotable1 th {
	border-bottom: solid 1.5px #BDBDBD;
	height:45px;
}

.infotable1 td {
	border-bottom: solid 1px #BDBDBD;
	height:45px;
}

#namebox {
    width: 100%;
    height: 100px;
    display: flex;
    align-items: center;
    padding-left: 2%;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 50px;
}

#lineintro {
    width: 100%;
    height: 40px;
    font-size: 20px;
    display: flex;
    align-items: center;
    margin: 1%;
   font-family: 'Do Hyeon', sans-serif;
   font-size: 25px;
}

#camptab li {
    float: left;
    width: 49%;
    font-size: 22px;
    text-align: center;
    background-color: #EAEAEA;
    margin: 0 1px;
    padding: 1% 0;
}

/*????????? ?????????  */     
:root{
    --text-color:#f0f4f5;
    --background-color:#263343;
    --accent-color:steelblue;
}
body {
    margin: 0;
    
}

body{
	background-color:#EAEAEA;
	
}
a{
    text-decoration: none;
    color: white;


}

.navbar{
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #263343;
    padding: 8px 12px;
    z-index:100; 

}


.navbar{
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
   
}


.navbar_logo{
    font-size: 32px;
    color: white;
    font-family: 'Nanum Brush Script';
}

.navbar_logo i {
    color: white;
}

.navbar_menu{
    display: flex;
    list-style: none;
    padding-left: 0;
    margin-bottom:-3px;

}

.navbar_menu li {
    padding: 8px 12px;
}


.navbar_menu li:hover {
    background-color: steelblue;
    border-radius: 4px;
}




.navbar_member {
    list-style: none;
    color: white;
    display: flex;
    padding-left: 0;
	margin-bottom:-3px;
}


.navbar_member li{
    padding: 8px 12px;
}

.navbar_toogleBtn{
    display: none;
    position: absolute;
    right: 32px;
    font-size: 24px;
    
}


@media screen and (max-width: 768px) {
    
    .navbar{
        flex-direction: column;
        align-items: flex-start;
        padding: 8px 24px;
        z-index:100;
    }

    .navbar_menu{
        display: none;
        flex-direction: column;
        align-items: center;
        width: 100%;
    }

    .navbar_menu li {
        width: 100%;
        text-align: center;
    }

    .navbar_member{
        display: none;
        justify-content: center;
        width: 100%;
    }
    .navbar_toogleBtn{
        display: block;
    }

    .navbar_menu.active,
    .navbar_member.active{
        display: flex;
    
    }

}

/*????????? ????????? ???  */   
      		
</style>
<Script>
   $(function(){

	   $("#reservebtn").on("click", function(){
		   reservebtn
	   })
	   
      $(".likeicon").on("click", function(){

         var like = $(".likeicon").attr('id');
         var contentId = $("#contentId").html();
         console.log(like);
         console.log(contentId);
         
         if(like == "dislike"){   
            
            alert("????????? ????????? ???????????????. ????????? ????????????????????? ?????? ???????????????.");
            $(".likeicon").attr("src", "/img/detailimage/like/like.png");
            $(".likeicon").attr('id','like');
            
            $.ajax({
                     url: "/info/wishinsert",
                     data: {contents:"like", contentId:contentId},
                     method:"post",
                     dataType:"application/json"
                  });
            
         }else if(like == "like"){
            alert("???????????? ???????????????.");
            $(".likeicon").attr("src", "/img/detailimage/like/dislike.png");
            $(".likeicon").attr('id','dislike');
            
            $.ajax({
                url: "/info/wishdelete",
                data: {contents:"dislike", contentId:contentId},
                method:"post",
                dataType:"application/json"
             });
         }else if(like = "xlike"){
        	 alert("????????? ?????? ?????? ???????????????.");
         }

      });
      
      //????????????
       $(document).ready(function(
            ){ $('.slick-sample').slick({ 
               dots: true 
               });
            });
      
      //???????????? ?????????
      $('.responsive').slick({ 
         slidesToShow: 4, 
         slidesToScroll: 4, 
         responsive: [ 
            { breakpoint: 600, // ????????? ????????? 600px ????????? ??? 
               settings: { 
                  slidesToShow: 3, 
                  slidesToScroll: 3 
                  }}, 
                  { breakpoint: 320, // ????????? ????????? 320px ????????? ??? 
                     settings: { 
                        slidesToShow: 1, 
                        slidesToScroll: 1 
                        } 
                  } 
                  ] 
      
      }); 
      
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		// ??????-?????? ?????? ????????? ???????????????
		var geocoder = new kakao.maps.services.Geocoder();
		var addr1 = $("#addr1").html();	//??????
		var name = $("#namebox").html();	//????????? ??????
		
		// ????????? ????????? ???????????????
		geocoder.addressSearch(addr1, function(result, status) {
		    // ??????????????? ????????? ??????????????? 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // ??????????????? ?????? ????????? ????????? ???????????????
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // ?????????????????? ????????? ?????? ????????? ???????????????
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">' + name + '</div>'
		        });
		        infowindow.open(map, marker);

		        // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
		        map.setCenter(coords);
		    } 
   })
   
   
})
   
</Script>
<body>
<!--????????? ?????? -->
<c:choose>
<c:when test="${loginID==null }">
<nav class="navbar">
        <div class="navbar_logo">
           
            <a href="/"><img src="/assets/img/background/newLogo_negative.png"style="width:90px;height:auto;margin-right:7px;margin-top:-12px;">????????????????</a>

        </div>
        <ul class="navbar_menu">
            <li><a href="/info/list?index=1">?????????</a></li>
            <li><a href="/CampTipBoard/selectAll">????????????</a></li>
            <li><a href="/products/selectAll?index=1">SHOP</a></li>
            <li><a href="/rep/list?index=1">????????????</a></li>
            <li><a href="/gal/list?cpage=1">????????????</a></li>

        </ul>
        <ul class="navbar_member">
            <li><a href="/member/signPage">????????????</a></li>
            <li><a href="/member/loginPage">?????????</a></li>
        </ul>

        <a href="#" class="navbar_toogleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>

</c:when>
<c:when test="${loginID=='admin'}">
<nav class="navbar">
        <div class="navbar_logo">
           
            <a href="/"><img src="/assets/img/background/newLogo_negative.png"style="width:90px;height:auto;margin-right:7px;margin-top:-12px;">????????????????</a>

        </div>
        <ul class="navbar_menu">
            <li><a href="/info/list?index=1">?????????</a></li>
            <li><a href="/CampTipBoard/selectAll">????????????</a></li>
            <li><a href="/products/selectAll?index=1">SHOP</a></li>
            <li><a href="/rep/list?index=1">????????????</a></li>
            <li><a href="/gal/list?cpage=1">????????????</a></li>

        </ul>
        <ul class="navbar_member">
            <li><a href="/admin/home">??????????????????</a></li>
            <li><a href="/member/logOutProc">????????????</a></li>
        </ul>

        <a href="#" class="navbar_toogleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>

</c:when>
<c:otherwise>
<nav class="navbar">
        <div class="navbar_logo">
           
            <a href="/"><img src="/assets/img/background/newLogo_negative.png"style="width:90px;height:auto;margin-right:7px;margin-top:-12px;">????????????????</a>

        </div>
        <ul class="navbar_menu">
            <li><a href="/info/list?index=1">?????????</a></li>
            <li><a href="/CampTipBoard/selectAll">????????????</a></li>
            <li><a href="/products/selectAll?index=1">SHOP</a></li>
            <li><a href="/rep/list?index=1">????????????</a></li>
            <li><a href="/gal/list?cpage=1">????????????</a></li>

        </ul>
        <ul class="navbar_member">
            <li><a href="/member/myPage?cm_id=${loginID}">???????????????</a></li>
            <li><a href="/member/logOutProc">????????????</a></li>
        </ul>

        <a href="#" class="navbar_toogleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>

</c:otherwise>


</c:choose> 

<!--????????? ???  -->
    <script>
    
    
    const toogleBtn = document.querySelector('.navbar_toogleBtn');
    const menu = document.querySelector('.navbar_menu');
    const member = document.querySelector('navbar_member');


    toogleBtn.addEventListener('click', () => {

        menu.classList.toggle('active');
        member.classList.toggle('active');


    });
    
    </script>

<div id=header>
     <div id="headerimg"></div>  
</div> 
<div class=container>
   <div class=box>
      <div id=onetop class=boxcon>

      <c:forEach var="i" items="${list}">
        <div id=onebox>
        <h1>
         <div id=namebox>
           ${i.facltNm}  
         </div></h1>
         </c:forEach>

         <!-- ???????????? -->
         <div id=slidebox>
            <div class="slick-sample">
             <c:forEach var="i" items="${image}"> 
               <div><img src=" ${i.imageUrl}"></div> 
			</c:forEach>
            </div>
         </div>

 		<c:forEach var="i" items="${list}">
         <!-- ?????? -->
         <div id=infobox>
            <div id=tablebox>
               <table class="infotable1">
                  <tr>
                     <th> ??????</th>
                     <td id="addr1">${i.addr1} ${i.addr2}</td>
                  </tr>
                  <tr>
                     <th> ????????? ??????</th>
                     <td>${i.lctCl}</td>
                  </tr>
                  <tr>
                     <th> ????????? ??????</th>
                     <td>${i.induty}</td>
                  </tr>
                  <tr>
                     <th> ????????????</th>
                     <td>${i.operPdCl}</td>
                  </tr>
                  <tr>
                     <th> ?????????</th>
                     <td>${i.operDeCl}</td>
                  </tr>
                  <tr>
                     <th> ????????????</th>
                     <td>${i.homepage}</td>
                  </tr>
                  <tr>
                     <th> ????????????</th>
                     <td>${i.tel}</td>
                  </tr>
                  <tr>
                     <th> ?????? ?????? ?????? ??????</th>
                     <td>${i.posblFcltyCl}</td>
                  </tr>
                  <tr>
                     <th> Id</th>
                     <td id="contentId">${i.contentId}</td>
                  </tr>
               </table>
            </div>
          </div>
         </div>

         
            <div id=btnbox>
               <!-- ????????? -->	
               <div id=wishbox>   
                 <c:choose>
                 	<c:when test="${contents eq 'like'}">         
			        <h4>?????????</h4> 
			            <div id=wishbox_icon>
			               <img src="/img/detailimage/like/like.png" id="like" class="likeicon">             
			            </div>
			         </c:when>
			         <c:when test="${contents == null}">
			         	<h4>?????????</h4> 
			            <div id=wishbox_icon>
			               <img src="/img/detailimage/like/dislike.png" id="xlike" class="likeicon">             
			            </div>
			         </c:when>
			         <c:otherwise>
			         	<h4>?????????</h4> 
			            <div id=wishbox_icon>
			               <img src="/img/detailimage/like/dislike.png" id="dislike" class="likeicon">             
			            </div>
			         </c:otherwise>
			   	</c:choose>
               </div>

               <!-- ?????? ?????? -->   
               <div id=reservebox> 
                  <a href="${i.resveUrl}" class="myButton" id="reservebtn"><h4>???????????? ??????</h4></a>
               </div>   
             </div>
         </c:forEach>
      </div><!-- onetop --> 
      
   
      <div id=twotop  class=boxcon>
         <div id=camptabbox>
            <ul id=camptab>
               <li id="camp_guide">??????</li>
               <li id="camp_map">??????</li>
            </ul>
         </div>
      </div>
      
      <div id=threetop  class=boxcon>
      <c:forEach var="i" items="${list}">
         <div id=camp_guide_box class="camp_info_box">
            <div id="introbox">   
               <div id="lineintro">
                  ${i.lineIntro}
               </div>   

               <div id="themaEnvrnClbox">
                  <div id="themaEnvrnCl">      </div>
               </div>

               <div id="intro">
                  ${i.intro}
               </div>
            </div>
         <div id="etcbox">
            <div id="sbrsClbox">
               <div id="sbrcClName"> ????????? ?????? ?????? </div>
               <div id="sbrcClCon">
                  ${i.sbrsCl}
               </div>   
            </div>
            <div id="Cobox">
               <div id="Coname"> ?????? ?????? ?????? </div>
               <div id="Cocon">?????? ?????????(${i.gnrlSiteCo}) ??????????????????(${i.autoSiteCo}) ?????????(${i.glampSiteCo}) ?????????(${i.caravSiteCo}) ???????????????(${i.indvdlCaravSiteCo})</div>
            </div>
            <div id="sbrcEtcbox">
               <div id="sbrcEtcName">????????????</div>
               <div id="sbrcEtcCon"> ${i.sbrsEtc} </div>
            </div>
            <div id="brazierClbox">
               <div id="brazierClName">??????</div>
               <div id="brazierClCon">${i.animalCmgCl}</div>
            </div>
            <div id="animalCmgClbox">
               <div id="animalCmgClName">????????????</div>
               <div id="animalCmgClCon">${i.brazierCl}</div>
            </div>
         </div>
         <div id=camp_map_box class="camp_info_box">
         	<h1>??????</h1>
         	<div id="map" style="width:500px;height:400px;"></div>
         </div>
         <div id=camp_review_box class="camp_info_box"></div>            
         </div>         
      </c:forEach>
      </div>   <!-- three -->

      
   </div> <!-- box --> 
</div> <!-- ?????? -->
</body>
</html>
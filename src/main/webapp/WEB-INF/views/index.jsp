<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, viewport-fit=cover">
<meta name="apple-mobile-web-app-capable" content="yes" />

<!-- Page Title -->
<title>별보러갈래?</title>

<!-- Compressed Styles -->
<link href="css/slides.min.css?41331" rel="stylesheet" type="text/css">

<!-- Custom Styles -->
<!-- <link href="css/custom.css" rel="stylesheet" type="text/css"> -->

<!-- jQuery 3.3.1 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Compressed Scripts -->
<script src="js/slides.min.js?41331" type="text/javascript"></script>

<!-- Custom Scripts -->
<!-- <script src="js/custom.js" type="text/javascript"></script> -->

<!-- Fonts and Material Icons -->
<link rel="stylesheet" as="font"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,600,700|Material+Icons" />

<!-- Font-Style -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">


<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}




.star_rating {
	font-size: 0;
	letter-spacing: -4px;
	display: inline-block;
	width:200px;
}

.star_rating a {
	font-size: 35px;
	letter-spacing: 0;
	display: inline-block;
	margin-left: 5px;
	color: #ccc;
	text-decoration: none;
}

.star_rating a:first-child {
	margin-left: 0;
}

.star_rating a.on {
	color: #ffd400;
}
</style>

<script>
  
  $(function() {
		
	
	  $.ajax({
	        url:"/gal/mainList?cpage=1",
	        type:"get",
	        dataType:"json"
	        
	       }).done(function(resp){
	    	  
	    	   
	    	 $("#galImg").attr("src", "/resources/aboutGallery/files/"+resp[0].thumbPath);
	    	 $("#galTitle").text(resp[0].title); 
	    	 $("#galContents").html(resp[0].contents); 
	    	   
	    	/*  $("#writeDate").text(resp[0].write_date);
	    	 
	    	   
	    	 $("#writer").text(resp[0].writer);
	    	    */
	    	   
	    	 
	    	 
	    	   
	     })
  
  })
  
  
  
  
  </script>

</head>

<body class="slides chain simplifiedMobile animated">

	<!-- SVG Library -->
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none">

    <symbol id="logo" viewBox="0 0 106 31">
      <title>Slides Framework</title>
      <path
			d="M17.413 14.04c-.56-5.84-5.6-7-8.52-7-4.6 0-8.6 2.92-8.6 7.52 0 3 2.4 4.88 5.28 5.8 4.24 1.64 5.88 1.84 5.88 3.36 0 1.08-1.2 1.72-2.32 1.72-.28 0-2.24 0-2.52-2.04h-6.6c.6 5.84 5.68 7.36 9.04 7.36 4.92 0 9.04-2.88 9.04-7.76 0-4.8-4-5.92-7.76-6.96-1.76-.52-3.4-1.2-3.4-2.2 0-.6.48-1.48 1.88-1.48 1.96 0 2.04 1.2 2.08 1.68h6.52zm2.222 15.96h6.64v-29.6h-6.64v29.6zm9.662-24.56h6.64v-5.04h-6.64v5.04zm0 24.56h6.64v-22.2h-6.64v22.2zm32.782-29.6h-6.64v9.28c-.72-.72-2.6-2.64-6.52-2.64-5.64 0-11 4.28-11 11.8 0 6.68 4.4 11.88 11.12 11.88 4.48 0 6.08-2.2 6.72-3.12v2.4h6.32v-29.6zm-17.52 18.4c0-2.56 1.8-5.56 5.64-5.56 1.56 0 2.96.56 3.96 1.56 1 .96 1.64 2.32 1.64 3.92.08 1.64-.52 3.08-1.56 4.12s-2.52 1.68-4.12 1.68c-3.12 0-5.56-2.28-5.56-5.68v-.04zm42.502 2.4c.52-4.08-.32-7.64-3.12-10.64-2.08-2.2-5-3.52-8.4-3.52-6.76 0-11.64 5.72-11.64 11.92 0 6.6 5.4 11.76 11.76 11.76 2.28 0 4.48-.68 6.32-2 1.88-1.28 3.44-3.2 4.52-5.68h-6.8c-.8 1.16-1.92 2.08-4.04 2.08-2.6 0-4.84-1.56-5.12-3.92h16.52zm-16.44-5.04c.16-1.04 1.52-3.52 4.96-3.52s4.8 2.48 4.96 3.52h-9.92zm34.502-2.12c-.56-5.84-5.6-7-8.52-7-4.6 0-8.6 2.92-8.6 7.52 0 3 2.4 4.88 5.28 5.8 4.24 1.64 5.88 1.84 5.88 3.36 0 1.08-1.2 1.72-2.32 1.72-.28 0-2.24 0-2.52-2.04h-6.6c.6 5.84 5.68 7.36 9.04 7.36 4.92 0 9.04-2.88 9.04-7.76 0-4.8-4-5.92-7.76-6.96-1.76-.52-3.4-1.2-3.4-2.2 0-.6.48-1.48 1.88-1.48 1.96 0 2.04 1.2 2.08 1.68h6.52z" />
    </symbol>

    <symbol id="logo-icon" viewBox="0 0 50 41">
      <title>Slides Framework</title>
      <path
			d="M4,12h42c2.2,0,4,1.8,4,4v21c0,2.2-1.8,4-4,4H4c-2.2,0-4-1.8-4-4V16C0,13.8,1.8,12,4,12z" />
      <path opacity="0.6"
			d="M45.5,9h-41C3.7,9,3,8.3,3,7.5v0C3,6.7,3.7,6,4.5,6h41C46.3,6,47,6.7,47,7.5v0C47,8.3,46.3,9,45.5,9z" />
      <path opacity="0.4"
			d="M7.5,0h35C43.3,0,44,0.7,44,1.5v0C44,2.3,43.3,3,42.5,3h-35C6.7,3,6,2.3,6,1.5v0C6,0.7,6.7,0,7.5,0z" />
    </symbol>

    <symbol id="close" viewBox="0 0 30 30">
      <path
			d="M15 0c-8.3 0-15 6.7-15 15s6.7 15 15 15 15-6.7 15-15-6.7-15-15-15zm5.7 19.3c.4.4.4 1 0 1.4-.2.2-.4.3-.7.3s-.5-.1-.7-.3l-4.3-4.3-4.3 4.3c-.2.2-.4.3-.7.3s-.5-.1-.7-.3c-.4-.4-.4-1 0-1.4l4.3-4.3-4.3-4.3c-.4-.4-.4-1 0-1.4s1-.4 1.4 0l4.3 4.3 4.3-4.3c.4-.4 1-.4 1.4 0s.4 1 0 1.4l-4.3 4.3 4.3 4.3z" />
    </symbol>

    <symbol id="close-small" viewBox="0 0 11 11">
      <path
			d="M6.914 5.5l3.793-3.793c.391-.391.391-1.023 0-1.414s-1.023-.391-1.414 0l-3.793 3.793-3.793-3.793c-.391-.391-1.023-.391-1.414 0s-.391 1.023 0 1.414l3.793 3.793-3.793 3.793c-.391.391-.391 1.023 0 1.414.195.195.451.293.707.293s.512-.098.707-.293l3.793-3.793 3.793 3.793c.195.195.451.293.707.293s.512-.098.707-.293c.391-.391.391-1.023 0-1.414l-3.793-3.793z" />
    </symbol>

    <symbol id="arrow-left" viewBox="0 0 29 56">
      <path
			d="M28.7.3c.4.4.4 1 0 1.4l-26.3 26.3 26.3 26.3c.4.4.4 1 0 1.4-.4.4-1 .4-1.4 0l-27-27c-.4-.4-.4-1 0-1.4l27-27c.3-.3 1-.4 1.4 0z" />
    </symbol>

    <symbol id="arrow-right" viewBox="0 0 29 56">
      <path
			d="M.3 55.7c-.4-.4-.4-1 0-1.4l26.3-26.3-26.3-26.3c-.4-.4-.4-1 0-1.4.4-.4 1-.4 1.4 0l27 27c.4.4.4 1 0 1.4l-27 27c-.3.3-1 .4-1.4 0z" />
    </symbol>

    <symbol id="back" viewBox="0 0 20 20">
      <path
			d="M2.3 10.7l5 5c.4.4 1 .4 1.4 0s.4-1 0-1.4l-3.3-3.3h11.6c.6 0 1-.4 1-1s-.4-1-1-1h-11.6l3.3-3.3c.4-.4.4-1 0-1.4-.2-.2-.4-.3-.7-.3s-.5.1-.7.3l-5 5c-.2.2-.3.5-.3.7 0 .2.1.5.3.7z" />
    </symbol>

    <symbol id="menu" viewBox="0 0 18 18">
      <path
			d="M16 5h-14c-.6 0-1-.4-1-1 0-.5.4-1 1-1h14c.5 0 1 .4 1 1s-.4 1-1 1zm-14 5h14c.5 0 1-.4 1-1 0-.5-.4-1-1-1h-14c-.6 0-1 .4-1 1s.4 1 1 1zm14 3h-14c-.5 0-1 .4-1 1 0 .5.4 1 1 1h14c.5 0 1-.4 1-1s-.4-1-1-1z" />
    </symbol>

    <symbol id="share" viewBox="0 0 18 18">
      <path
			d="M16 8c-.6 0-1 .4-1 1v6h-12v-6c0-.6-.4-1-1-1s-1 .4-1 1v6c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2v-6c0-.6-.4-1-1-1zm-2.3-2.3c.4-.4.4-1 0-1.4l-4-4c-.4-.4-1-.4-1.4 0l-4 4c-.4.4-.4 1 0 1.4s1 .4 1.4 0l2.3-2.3v7.6c0 .6.4 1 1 1s1-.4 1-1v-7.6l2.3 2.3c.4.4 1 .4 1.4 0z" />
    </symbol>

    <symbol id="arrow-down" viewBox="0 0 24 24">
      <path
			d="M12 18c-.2 0-.5-.1-.7-.3l-11-10c-.4-.4-.4-1-.1-1.4.4-.4 1-.4 1.4-.1l10.4 9.4 10.3-9.4c.4-.4 1-.3 1.4.1.4.4.3 1-.1 1.4l-11 10c-.1.2-.4.3-.6.3z" />
    </symbol>

    <symbol id="arrow-up" viewBox="0 0 24 24">
      <path
			d="M11.9 5.9c.2 0 .5.1.7.3l11 10c.4.4.4 1 .1 1.4-.4.4-1 .4-1.4.1l-10.4-9.4-10.3 9.4c-.4.4-1 .3-1.4-.1-.4-.4-.3-1 .1-1.4l11-10c.1-.2.4-.3.6-.3z" />
    </symbol>

    <symbol id="arrow-top" viewBox="0 0 18 18">
      <path
			d="M15.7 7.3l-6-6c-.4-.4-1-.4-1.4 0l-6 6c-.4.4-.4 1 0 1.4.4.4 1 .4 1.4 0l4.3-4.3v11.6c0 .6.4 1 1 1s1-.4 1-1v-11.6l4.3 4.3c.2.2.4.3.7.3s.5-.1.7-.3c.4-.4.4-1 0-1.4z" />
    </symbol>

    <symbol id="play" viewBox="0 0 30 30">
      <path d="M7 30v-30l22 15z" />
    </symbol>

    <symbol id="chat" viewBox="0 0 18 18">
      <path
			d="M5,17c-0.2,0-0.3,0-0.4-0.1C4.2,16.7,4,16.4,4,16v-2H2c-1.1,0-2-0.9-2-2V3c0-1.1,0.9-2,2-2h14c1.1,0,2,0.9,2,2v9 c0,1.1-0.9,2-2,2H9.3l-3.7,2.8C5.4,16.9,5.2,17,5,17z M2,12h3.5C5.8,12,6,12.2,6,12.5V14l2.4-1.8C8.6,12.1,8.8,12,9,12h7V3H2V12z M13,7H5C4.4,7,4,6.6,4,6s0.4-1,1-1h8c0.6,0,1,0.4,1,1S13.6,7,13,7z M13,10H5c-0.6,0-1-0.4-1-1s0.4-1,1-1h8c0.6,0,1,0.4,1,1 S13.6,10,13,10z" />
    </symbol>

    <symbol id="mail" viewBox="0 0 18 18">
      <path
			d="M16 2h-14c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2v-10c0-1.1-.9-2-2-2zm0 2v.5l-7 4.3-7-4.4v-.4h14zm-14 10v-7.2l6.5 4c.1.1.3.2.5.2s.4-.1.5-.2l6.5-4v7.2h-14z" />
    </symbol>

    <symbol id="sound-on" viewBox="0 0 18 18">
      <path
			d="M8.5,0.1C8.1-0.1,7.7,0,7.4,0.2L3.7,3H2C0.9,3,0,3.9,0,5v6c0,1.1,0.9,2,2,2h1.7l3.7,2.8C7.6,15.9,7.8,16,8,16 c0.2,0,0.3,0,0.4-0.1C8.8,15.7,9,15.4,9,15V1C9,0.6,8.8,0.3,8.5,0.1z M7,13l-2.4-1.8C4.4,11.1,4.2,11,4,11l-2,0l0-6h2 c0.2,0,0.4-0.1,0.6-0.2L7,3V13z M11.7,9.9l0.7,1.9C13.9,11.2,15,9.7,15,8c0-1.7-1.1-3.2-2.7-3.8l-0.7,1.9C12.5,6.4,13,7.2,13,8C13,8.9,12.5,9.6,11.7,9.9z M12.2,1.1l-0.3,2C14.3,3.5,16,5.6,16,8s-1.8,4.5-4.2,4.9l0.3,2C15.6,14.3,18,11.4,18,8C18,4.6,15.6,1.7,12.2,1.1z" />
    </symbol>

    <symbol id="sound-off" viewBox="0 0 18 18">
      <path
			d="M15.9,8l1.8-1.8c0.4-0.4,0.4-1,0-1.4s-1-0.4-1.4,0l-1.8,1.8l-1.8-1.8c-0.4-0.4-1-0.4-1.4,0s-0.4,1,0,1.4L13.1,8l-1.8,1.8 c-0.4,0.4-0.4,1,0,1.4c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3l1.8-1.8l1.8,1.8c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3 c0.4-0.4,0.4-1,0-1.4L15.9,8z M8.5,0.1C8.1-0.1,7.7,0,7.4,0.2L3.7,3H2C0.9,3,0,3.9,0,5v6c0,1.1,0.9,2,2,2h1.7l3.7,2.8C7.6,15.9,7.8,16,8,16 c0.2,0,0.3,0,0.4-0.1C8.8,15.7,9,15.4,9,15V1C9,0.6,8.8,0.3,8.5,0.1z M7,13l-2.4-1.8C4.4,11.1,4.2,11,4,11l-2,0l0-6h2 c0.2,0,0.4-0.1,0.6-0.2L7,3V13z" />
    </symbol>

    <!-- social -->
    <symbol id="apple" viewBox="-1 1 24 24">
      <path
			d="M17.6 13.8c0-3 2.5-4.5 2.6-4.6-1.4-2.1-3.6-2.3-4.4-2.4-1.9-.2-3.6 1.1-4.6 1.1-.9 0-2.4-1.1-4-1-2 0-3.9 1.2-5 3-2.1 3.7-.5 9.1 1.5 12.1 1 1.5 2.2 3.1 3.8 3 1.5-.1 2.1-1 3.9-1s2.4 1 4 1 2.7-1.5 3.7-2.9c1.2-1.7 1.6-3.3 1.7-3.4-.1-.1-3.2-1.3-3.2-4.9zm-3.1-9c.8-1 1.4-2.4 1.2-3.8-1.2 0-2.7.8-3.5 1.8-.8.9-1.5 2.3-1.3 3.7 1.4.1 2.8-.7 3.6-1.7z" />
    </symbol>

    <symbol id="dribbble" viewBox="0 0 24 24">
      <path
			d="M12 0c-6.7 0-12 5.3-12 12s5.3 12 12 12 12-5.3 12-12-5.3-12-12-12zm7.9 5.7c1.3 1.7 2.1 3.9 2.3 6.1-.4-.1-2.4-.4-4.7-.4-.8 0-1.5 0-2.3.1 0-.1-.1-.3-.3-.5l-.7-1.5c3.7-1.4 5.3-3.4 5.7-3.8zm-7.9-3.8c2.5 0 4.9.9 6.7 2.5-.3.4-1.9 2.3-5.2 3.6-1.6-2.9-3.3-5.3-3.7-5.9.6-.1 1.4-.2 2.2-.2zm-4.4 1c.4.6 2.1 3 3.7 5.8-4.4 1.2-8.2 1.2-9.2 1.2h-.1c.8-3.1 2.9-5.6 5.6-7zm-5.7 9.1v-.3h.3c1.2 0 5.6-.1 10.1-1.5l.8 1.6c-.1 0-.3 0-.4.1-5.1 1.6-7.9 6-8.3 6.7-1.6-1.7-2.5-4.1-2.5-6.6zm10.1 10.1c-2.3 0-4.4-.8-6.1-2.1.3-.5 2.4-4.4 7.9-6.3 1.3 3.6 2 6.7 2.1 7.6-1.2.6-2.6.8-3.9.8zm5.7-1.8c-.1-.8-.7-3.6-2-7.1.7-.1 1.3-.1 2-.1 2.1 0 3.7.4 4.1.5-.3 2.8-1.8 5.2-4.1 6.7z" />
    </symbol>

    <symbol id="facebook" viewBox="0 0 24 24">
      <path
			d="M24 1.3v21.3c0 .7-.6 1.3-1.3 1.3h-6.1v-9.3h3.1l.5-3.6h-3.6v-2.2c0-1.1.3-1.8 1.8-1.8h1.9v-3.2c-.3 0-1.5-.1-2.8-.1-2.8 0-4.7 1.7-4.7 4.8v2.7h-3.1v3.6h3.1v9.2h-11.5c-.7 0-1.3-.6-1.3-1.3v-21.4c0-.7.6-1.3 1.3-1.3h21.3c.8 0 1.4.6 1.4 1.3z" />
    </symbol>

    <symbol id="facebook2" viewBox="0 0 512 512">
      <path
			d="M288 176v-64c0-17.664 14.336-32 32-32h32v-80h-64c-53.024 0-96 42.976-96 96v80h-64v80h64v256h96v-256h64l32-80h-96z" />
    </symbol>

    <symbol id="fb-like" viewBox="0 0 20 20">
      <path
			d="M0 8v12h5v-12h-5zm2.5 10.8c-.4 0-.8-.3-.8-.8 0-.4.3-.8.8-.8s.8.3.8.8c0 .4-.4.8-.8.8zm3.5-.8h9.5c1.1 0 1.7-1 1.7-1.7 0-.3-.4-1-.4-1 1.4-.3 1.7-1.2 1.7-1.7-.1-.5-.3-.9-.5-1 1-.4 1.5-1.1 1.4-1.9-.1-.8-1-1.5-1-1.5 1-.6.9-1.5.9-1.5-.3-1.3-1.5-1.7-1.7-1.7h-5.6s.3-.5.3-2.4-1.3-3.6-2.6-3.6c0 0-.7.1-1 .3v3.5l-2.7 4.4v9.8z" />
    </symbol>

    <symbol id="googlePlus" viewBox="0 1 24 24">
      <path
			d="M7.8 13.5h4.6c-.6 2-2.5 3.4-4.6 3.4-2.7 0-4.9-2.2-4.9-4.9s2.2-4.9 4.9-4.9c1.1 0 2.1.3 3 1l1.8-2.4c-1.4-1.1-3-1.6-4.8-1.6-4.3 0-7.9 3.5-7.9 7.9s3.5 7.9 7.9 7.9 7.9-3.5 7.9-7.9v-1.5h-7.9v3zM21.7 11v-2.2h-2v2.2h-2.2v2h2.2v2.2h2v-2.2h2.2v-2z" />
    </symbol>

    <symbol id="instagram" viewBox="0 0 20 20">
      <circle cx="10" cy="10" r="3.3" />
      <path
			d="M13,0H7C2.2,0,0,2.2,0,7v6c0,4.8,2.1,7,7,7h6c4.8,0,7-2.2,7-7V7C20,2.2,17.9,0,13,0z M10,15.1c-2.8,0-5.1-2.3-5.1-5.1 S7.2,4.9,10,4.9s5.1,2.3,5.1,5.1S12.8,15.1,10,15.1z M15.3,5.9c-0.7,0-1.2-0.5-1.2-1.2c0-0.7,0.5-1.2,1.2-1.2s1.2,0.5,1.2,1.2 C16.5,5.3,16,5.9,15.3,5.9z" />
    </symbol>

    <symbol id="behance" viewBox="0 0 511.958 511.958">
      <path
			d="M210.624 240.619c10.624-5.344 18.656-11.296 24.16-17.728 9.792-11.584 14.624-26.944 14.624-45.984 0-18.528-4.832-34.368-14.496-47.648-16.128-21.632-43.424-32.704-82.016-33.28h-152.896v312.096h142.56c16.064 0 30.944-1.376 44.704-4.192 13.76-2.848 25.664-8.064 35.744-15.68 8.96-6.624 16.448-14.848 22.4-24.544 9.408-14.656 14.112-31.264 14.112-49.76 0-17.92-4.128-33.184-12.32-45.728-8.288-12.544-20.448-21.728-36.576-27.552zm-147.552-90.432h68.864c15.136 0 27.616 1.632 37.408 4.864 11.328 4.704 16.992 14.272 16.992 28.864 0 13.088-4.32 22.24-12.864 27.392-8.608 5.152-19.776 7.744-33.472 7.744h-76.928v-68.864zm108.896 198.24c-7.616 3.68-18.336 5.504-32.064 5.504h-76.832v-83.232h77.888c13.568.096 24.128 1.888 31.68 5.248 13.44 6.08 20.128 17.216 20.128 33.504 0 19.2-6.912 32.128-20.8 38.976zM327.168 110.539h135.584v38.848h-135.584zM509.856 263.851c-2.816-18.08-9.024-33.984-18.688-47.712-10.592-15.552-24.032-26.944-40.384-34.144-16.288-7.232-34.624-10.848-55.04-10.816-34.272 0-62.112 10.72-83.648 32-21.472 21.344-32.224 52.032-32.224 92.032 0 42.656 11.872 73.472 35.744 92.384 23.776 18.944 51.232 28.384 82.4 28.384 37.728 0 67.072-11.232 88.032-33.632 13.408-14.144 20.992-28.064 22.656-41.728h-62.464c-3.616 6.752-7.808 12.032-12.608 15.872-8.704 7.04-20.032 10.56-33.92 10.56-13.216 0-24.416-2.912-33.76-8.704-15.424-9.28-23.488-25.536-24.512-48.672h170.464c.256-19.936-.384-35.264-2.048-45.824zm-166.88 5.984c2.24-15.008 7.68-26.912 16.32-35.712 8.64-8.768 20.864-13.184 36.512-13.216 14.432 0 26.496 4.128 36.32 12.416 9.696 8.352 15.168 20.48 16.288 36.512h-105.44z" />
    </symbol>

    <symbol id="linkedin" viewBox="0 0 24 24">
      <path
			d="M5.9 21.9h-4.7v-14.2h4.7v14.2zm-2.3-16.1c-1.6 0-2.6-1.1-2.6-2.5s1-2.5 2.7-2.5c1.6 0 2.6 1 2.6 2.5-.1 1.4-1.2 2.5-2.7 2.5zm19.2 16.1h-4.7v-7.6c0-2-.7-3.3-2.3-3.3-1.3 0-2.1.9-2.5 1.7-.1.3-.1.8-.1 1.2v7.9h-4.7v-14.1h4.7v2c.7-.9 1.7-2.3 4.3-2.3 3.1 0 5.5 2.1 5.5 6.4v8.2h-.2z" />
    </symbol>

    <symbol id="medium" viewBox="0 0 130.8 104">
      <path
			d="M15.5 21.2c.2-1.6-.5-3.2-1.7-4.3l-12.1-14.7v-2.2h38l29.3 64.4 25.8-64.4h36.2v2.2l-10.5 10c-.9.7-1.3 1.8-1.2 2.9v73.7c0 1.1.3 2.2 1.2 2.9l10.2 10v2.2h-51.3v-2.2l10.6-10.2c1-1 1-1.3 1-2.9v-59.6l-29.4 74.7h-4l-34.2-74.7v50.3c0 2.2.4 4.2 1.9 5.7l13.7 16.8v2.2h-39v-2.2l13.8-16.7c1.5-1.5 1.8-3.3 1.8-5.7l-.1-58.2z" />
    </symbol>

    <symbol id="pinterest" viewBox="0 0 24 24">
      <path
			d="M5.9 13.9c1.2-2-.4-2.5-.6-4-1-6.1 7.1-10.2 11.4-6 2.9 2.9 1 12-3.7 11-4.6-.9 2.2-8.1-1.4-9.5-3-1.1-4.6 3.6-3.2 5.9-.8 4-2.5 7.7-1.8 12.7 2.3-1.7 3.1-4.8 3.7-8.1 1.2.7 1.8 1.4 3.3 1.5 5.5.4 8.6-5.4 7.8-10.7-.7-4.7-5.5-7.1-10.6-6.6-4.1.4-8.1 3.7-8.3 8.3-.1 2.8.7 4.9 3.4 5.5z" />
    </symbol>

    <symbol id="stumbleupon" viewBox="0 0 24 24">
      <path
			d="M13.3 9.6l1.6.8 2.5-.8v-1.4c0-3-2.4-5.4-5.4-5.4s-5.4 2.4-5.4 5.4v7.5c0 .7-.6 1.3-1.3 1.3s-1.3-.6-1.3-1.3v-3.2h-4v3.2c0 3 2.4 5.4 5.4 5.4s5.4-2.4 5.4-5.4v-7.5c0-.7.6-1.3 1.3-1.3s1.3.6 1.3 1.3l-.1 1.4zm6.6 2.9v3.2c0 .7-.6 1.3-1.3 1.3s-1.3-.6-1.3-1.3v-3.2l-2.5.8-1.6-.8v3.2c0 3 2.4 5.4 5.4 5.4s5.4-2.4 5.4-5.4v-3.2h-4.1z" />
    </symbol>

    <symbol id="twitter" viewBox="0 1 24 23">
      <path
			d="M21.5 7.6v.6c0 6.6-5 14.1-14 14.1-2.8 0-5.4-.8-7.6-2.2l1.2.1c2.3 0 4.4-.8 6.1-2.1-2.2 0-4-1.5-4.6-3.4.3.1.6.1.9.1.5 0 .9-.1 1.3-.2-2.1-.6-3.8-2.6-3.8-5 .7.4 1.4.6 2.2.6-1.3-.9-2.2-2.4-2.2-4.1 0-.9.2-1.8.7-2.5 2.4 3 6.1 5 10.2 5.2-.1-.4-.1-.7-.1-1.1 0-2.7 2.2-5 4.9-5 1.4 0 2.7.6 3.6 1.6 1-.3 2.1-.7 3-1.3-.4 1.2-1.1 2.1-2.2 2.7 1-.1 1.9-.4 2.8-.8-.6 1.1-1.4 2-2.4 2.7z" />
    </symbol>

    <symbol id="tumblr" viewBox="0 0 23 23">
      <path
			d="M12.573 4.94v-4.94h-3.188c-.072.183-.11.4-.11.622-.034.107-.072.184-.072.293-.328 1.829-1.28 3.11-2.892 3.807-.476.218-.914.253-1.39.218v3.987h2.342c.039 5.603.039 8.493.039 8.64v.332c.294 2.449 1.573 3.914 3.843 4.463.914.257 1.901.366 2.892.366 1.279-.036 2.525-.256 3.771-.659v-4.685c-.731.22-1.395.402-1.977.583-1.135.333-2.087.113-2.857-.619-.073-.11-.183-.257-.221-.403-.106-.586-.178-1.206-.178-1.795v-6.222h5.083v-3.988h-5.085z" />
    </symbol>

    <symbol id="xing" viewBox="0 0 24 24">
      <path
			d="M3.647 4.74c-.208 0-.384.073-.472.216-.091.148-.077.338.02.531l2.34 4.051v.02l-3.678 6.49c-.096.191-.091.383 0 .531.088.142.244.236.452.236h3.461c.518 0 .767-.349.944-.669l3.737-6.608-2.38-4.15c-.172-.307-.433-.649-.964-.649h-3.46zm14.542-4.74c-.517 0-.741.326-.927.659l-7.702 13.658 4.918 9.023c.172.307.437.659.967.659h3.457c.208 0 .371-.079.459-.221.092-.148.09-.343-.007-.535l-4.88-8.915v-.023l7.664-13.551c.096-.191.098-.386.007-.534-.088-.142-.252-.221-.46-.221h-3.496z" />
    </symbol>

    <symbol id="whatsapp" viewBox="0 0 512 512">
      <path
			d="M256.064 0h-.128c-141.152 0-255.936 114.816-255.936 256 0 56 18.048 107.904 48.736 150.048l-31.904 95.104 98.4-31.456c40.48 26.816 88.768 42.304 140.832 42.304 141.152 0 255.936-114.848 255.936-256s-114.784-256-255.936-256zm148.96 361.504c-6.176 17.44-30.688 31.904-50.24 36.128-13.376 2.848-30.848 5.12-89.664-19.264-75.232-31.168-123.68-107.616-127.456-112.576-3.616-4.96-30.4-40.48-30.4-77.216s18.656-54.624 26.176-62.304c6.176-6.304 16.384-9.184 26.176-9.184 3.168 0 6.016.16 8.576.288 7.52.32 11.296.768 16.256 12.64 6.176 14.88 21.216 51.616 23.008 55.392 1.824 3.776 3.648 8.896 1.088 13.856-2.4 5.12-4.512 7.392-8.288 11.744-3.776 4.352-7.36 7.68-11.136 12.352-3.456 4.064-7.36 8.416-3.008 15.936 4.352 7.36 19.392 31.904 41.536 51.616 28.576 25.44 51.744 33.568 60.032 37.024 6.176 2.56 13.536 1.952 18.048-2.848 5.728-6.176 12.8-16.416 20-26.496 5.12-7.232 11.584-8.128 18.368-5.568 6.912 2.4 43.488 20.48 51.008 24.224 7.52 3.776 12.48 5.568 14.304 8.736 1.792 3.168 1.792 18.048-4.384 35.52z" />
    </symbol>

    <symbol id="youtube" viewBox="0 0 24 24">
      <path
			d="M23.6 6.3c-.3-1.2-1.4-2.2-2.6-2.3-3-.3-6-.3-9-.3s-6 0-9 .3c-1.2.1-2.3 1.1-2.6 2.3-.4 1.8-.4 3.8-.4 5.7 0 1.9 0 3.9.4 5.7.3 1.2 1.4 2.2 2.6 2.3 3 .3 6 .3 9 .3s6 0 9-.3c1.3-.1 2.3-1.1 2.6-2.4.4-1.7.4-3.7.4-5.6 0-1.9 0-3.9-.4-5.7zm-14.1 9v-6.6l6.5 3.3-6.5 3.3z" />
    </symbol>

  </svg>

	<!-- Navigation -->
	<nav class="side pole">
		<div class="navigation">
			<ul></ul>
		</div>
	</nav>

	<!-- Panel Top #08 -->
	<c:choose>
		<c:when test="${loginID==null }">

			<nav class="panel top">
				<div class="sections">
					<!--  <div class="left"><a href="/" title="Slides Framework"><img src="assets/img/background/reallogo.png"style="width:180px;height:90px;"> -->
					<div class="left">
						<a href="/" title="Slides Framework"
							style="font-family: 'Nanum Brush Script'; font-size: 40px;"><img
							src="assets/img/background/camp_logo.png"
							style="width: 60px; height: 50px; margin-bottom: -6px; margin-right: -10px;">
							별보러갈래? </a>
					</div>
					<div class="right">
						<span class="button actionButton sidebarTrigger"
							data-sidebar-id="1"><svg>
            <use xmlns:xlink="http://www.w3.org/1999/xlink"
									xlink:href="#menu"></use>
          </svg></span>
					</div>
				</div>
			</nav>

			<!-- Sidebar -->
			<nav class="sidebar" data-sidebar-id="1">
				<div class="close">
					<svg>
        <use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#close"></use>
      </svg>
				</div>
				<div class="content">
					<a href="#" class="logo"><svg width="37" height="30">
          <use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#logo-icon"></use>
        </svg></a>
					<ul class="mainMenu margin-top-3">
						<li><a href="/info/list">캠핑장</a></li>
						<li><a href="">캠핑정보</a></li>
						<li><a href="#">SHOP</a></li>
						<li><a href="/rep/list?index=1">중고장터</a></li>
						<li><a href="/gal/list?cpage=1">갤러리 후기</a></li>
						<!-- <li><a href="#"><img style="width: 30px;height: 30px;" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgNTEyLjAwMSA1MTIuMDAxIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIuMDAxIDUxMi4wMDE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxsaW5lYXJHcmFkaWVudCBpZD0iU1ZHSURfMV8iIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4MT0iMzA3LjQ5MTIiIHkxPSIyMTYuNzA1NCIgeDI9IjU1NC42NTEyIiB5Mj0iLTMwLjQ1NDYiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMS4wMDM5IDAgMCAtMS4wMDM5IDAuMTkyMiA1MTYuNTYwOSkiPg0KCTxzdG9wICBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiNBN0YzQ0UiLz4NCgk8c3RvcCAgb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojNjFEQjk5Ii8+DQo8L2xpbmVhckdyYWRpZW50Pg0KPHBhdGggc3R5bGU9ImZpbGw6dXJsKCNTVkdJRF8xXyk7IiBkPSJNMzQwLjM2NiwxNjQuMTMzYzkzLjQ4OC0xLjQyOCwxNjkuNzkyLDcyLjE1MywxNzEuNjAyLDE2NS42MzQNCgljMC4yNjYsMTMuNzI1LTEuMTA2LDI3LjA4NC0zLjkzMiwzOS44OThjLTQuNzg2LDIxLjY5Ny03LjYzMSw0My43NzYtNy42MzEsNjUuOTk1djQyLjk0OGMwLDYuNTgtNS4zMzQsMTEuOTE0LTExLjkxNCwxMS45MTQNCgloLTQyLjk0OGMtMjIuMjE5LDAtNDQuMjk4LDIuODQ1LTY1Ljk5NSw3LjYzMWMtMTIuODEzLDIuODI2LTI2LjE3Miw0LjE5OC0zOS44OTcsMy45MzINCgljLTkzLjQ4LTEuODA5LTE2Ny4wNjEtNzguMTExLTE2NS42MzUtMTcxLjU5N0MxNzUuNDA3LDIzOS4yMzgsMjQ5LjExNywxNjUuNTI3LDM0MC4zNjYsMTY0LjEzM3oiLz4NCjxsaW5lYXJHcmFkaWVudCBpZD0iU1ZHSURfMl8iIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4MT0iMzg4LjM5ODUiIHkxPSIxMzUuODAyNiIgeDI9IjI4My40MTg1IiB5Mj0iMjQwLjc3MjYiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMS4wMDM5IDAgMCAtMS4wMDM5IDAuMTkyMiA1MTYuNTYwOSkiPg0KCTxzdG9wICBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiM2MURCOTk7c3RvcC1vcGFjaXR5OjAiLz4NCgk8c3RvcCAgb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojMDA5RTc0Ii8+DQo8L2xpbmVhckdyYWRpZW50Pg0KPHBhdGggc3R5bGU9ImZpbGw6dXJsKCNTVkdJRF8yXyk7IiBkPSJNMzQwLjM2NiwxNjQuMTMzYzkzLjQ4OC0xLjQyOCwxNjkuNzkyLDcyLjE1MywxNzEuNjAyLDE2NS42MzQNCgljMC4yNjYsMTMuNzI1LTEuMTA2LDI3LjA4NC0zLjkzMiwzOS44OThjLTQuNzg2LDIxLjY5Ny03LjYzMSw0My43NzYtNy42MzEsNjUuOTk1djQyLjk0OGMwLDYuNTgtNS4zMzQsMTEuOTE0LTExLjkxNCwxMS45MTQNCgloLTQyLjk0OGMtMjIuMjE5LDAtNDQuMjk4LDIuODQ1LTY1Ljk5NSw3LjYzMWMtMTIuODEzLDIuODI2LTI2LjE3Miw0LjE5OC0zOS44OTcsMy45MzINCgljLTkzLjQ4LTEuODA5LTE2Ny4wNjEtNzguMTExLTE2NS42MzUtMTcxLjU5N0MxNzUuNDA3LDIzOS4yMzgsMjQ5LjExNywxNjUuNTI3LDM0MC4zNjYsMTY0LjEzM3oiLz4NCjxsaW5lYXJHcmFkaWVudCBpZD0iU1ZHSURfM18iIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4MT0iMTI5Ljk3IiB5MT0iMzMyLjc3NDIiIHgyPSIzOTAuOTIiIHkyPSI3MS44MjQyIiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KDEuMDAzOSAwIDAgLTEuMDAzOSAwLjE5MjIgNTE2LjU2MDkpIj4NCgk8c3RvcCAgb2Zmc2V0PSIwIiBzdHlsZT0ic3RvcC1jb2xvcjojNjJFMUZCIi8+DQoJPHN0b3AgIG9mZnNldD0iMSIgc3R5bGU9InN0b3AtY29sb3I6IzAwQTJGMyIvPg0KPC9saW5lYXJHcmFkaWVudD4NCjxwYXRoIHN0eWxlPSJmaWxsOnVybCgjU1ZHSURfM18pOyIgZD0iTTIwOS4wOTgsOS45MDlDOTUuMjA0LDguMTY5LDIuMjQ1LDk3LjgxLDAuMDM5LDIxMS42OTYNCgljLTAuMzIzLDE2LjcxOSwxLjM0OCwzMi45OTYsNC43OTIsNDguNjA2YzUuODMsMjYuNDMyLDkuMjk2LDUzLjMzMSw5LjI5Niw4MC40djUyLjMyMmMwLDguMDE2LDYuNDk4LDE0LjUxNSwxNC41MTUsMTQuNTE1aDUyLjMyMg0KCWMyNy4wNjgsMCw1My45NjcsMy40NjYsODAuNCw5LjI5NmMxNS42MSwzLjQ0MywzMS44ODYsNS4xMTUsNDguNjA1LDQuNzkxYzExMy44ODQtMi4yMDUsMjAzLjUyNS05NS4xNjEsMjAxLjc4OS0yMDkuMDUzDQoJQzQxMC4wNjIsMTAxLjQwNiwzMjAuMjY0LDExLjYwNiwyMDkuMDk4LDkuOTA5eiIvPg0KPGxpbmVhckdyYWRpZW50IGlkPSJTVkdJRF80XyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIxNzkuMDM4NCIgeTE9IjIxOC4xOTI2IiB4Mj0iNDEuNjQ0NCIgeTI9IjM1NS41ODI2IiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KDEuMDAzOSAwIDAgLTEuMDAzOSAwLjE5MjIgNTE2LjU2MDkpIj4NCgk8c3RvcCAgb2Zmc2V0PSIwIiBzdHlsZT0ic3RvcC1jb2xvcjojMDBBMkYzO3N0b3Atb3BhY2l0eTowIi8+DQoJPHN0b3AgIG9mZnNldD0iMSIgc3R5bGU9InN0b3AtY29sb3I6IzAwNzVDRCIvPg0KPC9saW5lYXJHcmFkaWVudD4NCjxwYXRoIHN0eWxlPSJmaWxsOnVybCgjU1ZHSURfNF8pOyIgZD0iTTEzMi4xOTMsMjA0LjczOWMtNS44MTYtNi4xOC0xNC4wNDgtMTAuMDYxLTIzLjIwNi0xMC4wNjENCgljLTE3LjYxMywwLTMxLjg5MSwxNC4yNzgtMzEuODkxLDMxLjg5MWMwLDkuMTU3LDMuODgsMTcuMzg5LDEwLjA2MSwyMy4yMDZsNjguNzk0LDY4Ljc5NGM1LjgxNyw2LjE4LDE0LjA0OSwxMC4wNjEsMjMuMjA2LDEwLjA2MQ0KCWMxNy42MTMsMCwzMS44OTEtMTQuMjc4LDMxLjg5MS0zMS44OTFjMC05LjE1Ny0zLjg4MS0xNy4zODktMTAuMDYxLTIzLjIwNkwxMzIuMTkzLDIwNC43Mzl6Ii8+DQo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGRkZGRkY7IiBjeD0iMTA4Ljk4NiIgY3k9IjIyNi41NjUiIHI9IjMxLjg5MSIvPg0KPGxpbmVhckdyYWRpZW50IGlkPSJTVkdJRF81XyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIyNjguODcxOSIgeTE9IjIxOC4xOTYiIHgyPSIxMzEuNDgxOSIgeTI9IjM1NS41ODYiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMS4wMDM5IDAgMCAtMS4wMDM5IDAuMTkyMiA1MTYuNTYwOSkiPg0KCTxzdG9wICBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiMwMEEyRjM7c3RvcC1vcGFjaXR5OjAiLz4NCgk8c3RvcCAgb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojMDA3NUNEIi8+DQo8L2xpbmVhckdyYWRpZW50Pg0KPHBhdGggc3R5bGU9ImZpbGw6dXJsKCNTVkdJRF81Xyk7IiBkPSJNMjIyLjM4MywyMDQuNzM5Yy01LjgxNi02LjE4LTE0LjA0OC0xMC4wNjEtMjMuMjA2LTEwLjA2MQ0KCWMtMTcuNjEzLDAtMzEuODkxLDE0LjI3OC0zMS44OTEsMzEuODkxYzAsOS4xNTcsMy44OCwxNy4zODksMTAuMDYxLDIzLjIwNmw2OC43OTQsNjguNzk0YzUuODE3LDYuMTgsMTQuMDQ5LDEwLjA2MSwyMy4yMDYsMTAuMDYxDQoJYzE3LjYxMywwLDMxLjg5MS0xNC4yNzgsMzEuODkxLTMxLjg5MWMwLTkuMTU3LTMuODgxLTE3LjM4OS0xMC4wNjEtMjMuMjA2TDIyMi4zODMsMjA0LjczOXoiLz4NCjxjaXJjbGUgc3R5bGU9ImZpbGw6I0ZGRkZGRjsiIGN4PSIxOTkuMTc4IiBjeT0iMjI2LjU2NSIgcj0iMzEuODkxIi8+DQo8bGluZWFyR3JhZGllbnQgaWQ9IlNWR0lEXzZfIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjM1OC43MTA0IiB5MT0iMjE4LjE5NDUiIHgyPSIyMjEuMzIwNCIgeTI9IjM1NS41ODQ1IiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KDEuMDAzOSAwIDAgLTEuMDAzOSAwLjE5MjIgNTE2LjU2MDkpIj4NCgk8c3RvcCAgb2Zmc2V0PSIwIiBzdHlsZT0ic3RvcC1jb2xvcjojMDBBMkYzO3N0b3Atb3BhY2l0eTowIi8+DQoJPHN0b3AgIG9mZnNldD0iMSIgc3R5bGU9InN0b3AtY29sb3I6IzAwNzVDRCIvPg0KPC9saW5lYXJHcmFkaWVudD4NCjxwYXRoIHN0eWxlPSJmaWxsOnVybCgjU1ZHSURfNl8pOyIgZD0iTTMxMi41NzIsMjA0LjczOWMtNS44MTYtNi4xOC0xNC4wNDgtMTAuMDYxLTIzLjIwNi0xMC4wNjENCgljLTE3LjYxMywwLTMxLjg5MSwxNC4yNzgtMzEuODkxLDMxLjg5MWMwLDkuMTU3LDMuODgxLDE3LjM4OSwxMC4wNjEsMjMuMjA2bDY4Ljc5NCw2OC43OTRjNS44MTcsNi4xOCwxNC4wNDksMTAuMDYxLDIzLjIwNiwxMC4wNjENCgljMTcuNjEzLDAsMzEuODkxLTE0LjI3OCwzMS44OTEtMzEuODkxYzAtOS4xNTctMy44ODEtMTcuMzg5LTEwLjA2MS0yMy4yMDZMMzEyLjU3MiwyMDQuNzM5eiIvPg0KPGNpcmNsZSBzdHlsZT0iZmlsbDojRkZGRkZGOyIgY3g9IjI4OS4zNzEiIGN5PSIyMjYuNTY1IiByPSIzMS44OTEiLz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjwvc3ZnPg0K" /></a></li> -->
					</ul>
					<ul class="subMenu small opacity-8">
						<li><a href="/member/signPage">회원가입</a></li>
						<li><a href="/member/loginPage">로그인</a></li>
					</ul>

				</div>
			</nav>
		</c:when>
		<c:when test="${loginID=='admin'}">
			<nav class="panel top">
				<div class="sections">
					<!-- <div class="left"><a href="/" title="Slides Framework"><img src="assets/img/background/reallogo.png"style="width:180px;height:90px;"> -->
					<div class="left">
						<a href="/" title="Slides Framework"
							style="font-family: 'Nanum Brush Script'; font-size: 40px;"><img
							src="assets/img/background/camp_logo.png"
							style="width: 60px; height: 50px; margin-bottom: -6px; margin-right: -10px;">
							<!-- <div class="left"><a href="/" title="Slides Framework" style="font-family: 'Nanum Brush Script';font-size: 40px;"><img src="assets/img/background/camp_logo.png"style="width:60px;height:50px;margin-bottom:-6px;margin-right:-10px;">  -->
							별보러갈래?</a>
					</div>
					<div class="right">
						<span class="button actionButton sidebarTrigger"
							data-sidebar-id="1"> <img src="assets/img/icons/user.png">
						</span>
					</div>
				</div>
			</nav>

			<!-- Sidebar -->
			<nav class="sidebar" data-sidebar-id="1">
				<div class="close">
					<svg>
        <use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#close"></use>
      </svg>
				</div>
				<div class="content">
					<a href="#" class="logo"><svg width="37" height="30">
          <use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#logo-icon"></use>
        </svg></a>
					<ul class="mainMenu margin-top-3">
						<li><a href="#">캠핑장</a></li>
						<li><a href="#">캠핑정보</a></li>
						<li><a href="#">SHOP</a></li>
						<li><a href="/rep/list?index=1">중고장터</a></li>
						<li><a href="/gal/list?cpage=1">갤러리 후기</a></li>

					</ul>
					<ul class="subMenu small opacity-8">
						<li><a href="#">관리자 페이지</a></li>
						<li><a href="#">로그아웃</a></li>
					</ul>

				</div>
			</nav>


		</c:when>


		<c:otherwise>
			<nav class="panel top">
				<div class="sections">
					<!-- <div class="left"><a href="/" title="Slides Framework"><img src="assets/img/background/reallogo.png"style="width:180px;height:90px;"> -->
					<div class="left">
						<a href="/" title="Slides Framework"
							style="font-family: 'Nanum Brush Script'; font-size: 40px;"><img
							src="assets/img/background/camp_logo.png"
							style="width: 60px; height: 50px; margin-bottom: -6px; margin-right: -10px;">
							<!-- <div class="left"><a href="/" title="Slides Framework" style="font-family: 'Nanum Brush Script';font-size: 40px;"><img src="assets/img/background/camp_logo.png"style="width:60px;height:50px;margin-bottom:-6px;margin-right:-10px;">  -->
							별보러갈래?</a>
					</div>
					<div class="right">
						<span class="button actionButton sidebarTrigger"
							data-sidebar-id="1"> <img src="assets/img/icons/user.png">
						</span>
					</div>
				</div>
			</nav>

			<!-- Sidebar -->
			<nav class="sidebar" data-sidebar-id="1">
				<div class="close">
					<svg>
        <use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#close"></use>
      </svg>
				</div>
				<div class="content">
					<a href="#" class="logo"><svg width="37" height="30">
          <use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#logo-icon"></use>
        </svg></a>
					<ul class="mainMenu margin-top-3">
						<li><a href="#">캠핑장</a></li>
						<li><a href="#">캠핑정보</a></li>
						<li><a href="#">SHOP</a></li>
						<li><a href="/rep/list?index=1">중고장터</a></li>
						<li><a href="/gal/list?cpage=1">갤러리 후기</a></li>

					</ul>
					<ul class="subMenu small opacity-8">
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">로그아웃</a></li>
					</ul>

				</div>
			</nav>

		</c:otherwise>

	</c:choose>


	<!-- Slide 1 (#09) -->
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">



					<p class="ae-3">
						<span class="opacity-8"
							style="font-family: 'Nanum Pen Script', cursive; font-size: 50px;"
							style="margin-bottom: 100px;">오늘은 어디로 떠나볼까?</span>
					</p>
					<form class="slides-form" action="#" autocomplete="off"
						style="margin-bottom: 120px;">
						<input type="text" class="input-9 ae-4 fromCenter"
							name="user-email" placeholder="검색어를 입력해주세요" />
						<button type="submit" class="button blue gradient ae-7 fromCenter"
							name="button">검색하기</button>
					</form>
				</div>

			</div>
		</div>
		</div>
		<div class="background"
			style="background-image: url(assets/img/background/bg_car.jpg)"></div>
	</section>




	<!-- Slide 2 (#15) -->

	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">
					<div class="fix-10-12 toCenter">
						<h1 class="ae-1">캠핑장</h1>
						<p class="ae-2">
							<span class="opacity-8">인기있는,</span>
						</p>
					</div>
					<div class="fix-12-12 margin-top-3">
						<ul class="flex fixedSpaces later left">
							<c:forEach var="i" items="${list}" begin="8" end="15">
								<li class="col-3-12 col-tablet-1-2 col-phone-1-1"><a
									href="/info/detail?contentId=${i.contentId }"
									class="button rounded empty margin-bottom-2 ae-4"><img
										class="wide" src="${i.firstImageUrl}" alt="Image Thumbnail" /></a>
									<h3 class="ae-5">${i.facltNm}</h3>
									<div class="ae-6">
										<p class="tiny opacity-6">${i.addr1}</p>
									</div></li>
							</c:forEach>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(assets/img/background/bg_5.jpg)"></div>
	</section>
	<!-- Slide 2 (#15) -->
	<section class="slide fade-6 kenBurns fromLeft">
		<div class="content">
			<div class="container">
				<div class="wrap">

					<div class="fix-12-12">
						<div class="fix-7-12 left toRight">
							<h1 class="ae-1">캠핑용품</h1>
							<p class="ae-2">
								<span class="opacity-8">새로운 캠핑장비가 필요하신가요?<br> 여기를 한번
									둘러보세요.<br> 텐트부터 렌턴까지 모든것이 준비되어 있습니다.
								</span>
							</p>
							<a class="button blue gradient crop ae-3">둘러보러가기</a>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(assets/img/background/camp_shop.jpg)"></div>
	</section>
	<!-- Slide 4 (#74) -->
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">

					<div class="fix-10-12 toCenter">
						<h1 class="ae-1">중고장터</h1>
						<p class="ae-2">
							<span class="opacity-8">합리적인,</span>
						</p>
					</div>
					<div class="fix-12-12">
						<ul class="grid grid-74 later equal margin-top-5">
							<li
								class="col-3-12 col-tablet-1-2 col-phablet-1-1 ae-3 fromCenter">
								<a href="#" class="box-74">
									<div class="thumbnail-74" style="width: 100%; height: 100%;">
										<img src="assets/img/background/store2.jpg" class="wide"
											alt="Thumbnail" />
									</div>
									<div class="name-74 equalElement table wide">
										<div class="cell left top">
											<h3 class="" style="font-weight: bold;">코베아 샤워텐트</h3>
											<h3 class="" style="font-weight: bold; color: red;">₩50,000</h3>
											<p class="tiny opacity-6 cropBottom">사용횟수가 많지 않아 상태
												좋습니다.부피때문에 택배로 보내기 애매한 사이즈인것 같아요.직거래 우선으로 하겠습니다.</p>



										</div>
									</div>
							</a>
							</li>
							<li
								class="col-3-12 col-tablet-1-2 col-phablet-1-1 ae-4 fromCenter">
								<a href="#" class="box-74">
									<div class="thumbnail-74">
										<img src="assets/img/background/store1.png" class="wide"
											alt="Thumbnail" />
									</div>
									<div class="name-74 equalElement table wide">
										<div class="cell left top">
											<h3 class="" style="font-weight: bold;">차박매트 - 현대 트라제용</h3>
											<h3 class="" style="font-weight: bold; color: red;">₩10,000</h3>
											<p class="tiny opacity-6 cropBottom">2번 사용하고 차량교체로 판매합니다</p>


										</div>
									</div>
							</a>
							</li>
							<li
								class="col-3-12 col-tablet-1-2 col-phablet-1-1 ae-5 fromCenter">
								<a href="#" class="box-74">
									<div class="thumbnail-74">
										<img src="assets/img/background/store1.png" class="wide"
											alt="Thumbnail" />
									</div>
									<div class="name-74 equalElement table wide">
										<div class="cell left top">
											<h3 class="" style="font-weight: bold;">차박매트 - 현대 트라제용</h3>
											<h3 class="" style="font-weight: bold; color: red;">₩10,000</h3>
											<p class="tiny opacity-6 cropBottom">2번 사용하고 차량교체로 판매합니다</p>
										</div>
									</div>
							</a>
							</li>
							<li
								class="col-3-12 col-tablet-1-2 col-phablet-1-1 ae-5 fromCenter">
								<a href="#" class="box-74">
									<div class="thumbnail-74">
										<img src="assets/img/background/store2.jpg" class="wide"
											alt="Thumbnail" />
									</div>
									<div class="name-74 equalElement table wide">
										<div class="cell left top">
											<h3 class="" style="font-weight: bold;">코베아 샤워텐트</h3>
											<h3 class="" style="font-weight: bold; color: red;">₩50,000</h3>
											<p class="tiny opacity-6 cropBottom">사용횟수가 많지 않아 상태
												좋습니다.부피때문에 택배로 보내기 애매한 사이즈인것 같아요.직거래 우선으로 하겠습니다.</p>
										</div>
									</div>
							</a>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(assets/img/background/camp_stuff.jpg)"></div>
	</section>

	<!-- Slide 4 (#89) -->
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">

					<div class="fix-12-12">
						<ul class="flex left">
							<li class="col-6-12 fromBottomLeft">
								<p class="opacity-6 margin-bottom-2 ae-1">유용한,</p>
								<h1 class="ae-2">캠핑정보</h1>
								<div class="ae-3">
									<p class="opacity-8">캠핑에 유용한 정보를 제공합니다. 캠핑 팁을 얻어가세요!</p>
								</div>
								<ul class="flex">
									<li class="col-6-12 ae-3">
										<h3 class="margin-top-3">캠핑 팁</h3>
										<p class="tiny opacity-6">> 제주도 백패킹 시 참고 (남부쪽만)</p>
										<p class="tiny opacity-6">> 따뜻한 겨울 캠핑</p>
										<p class="tiny opacity-6">> 쉬운 캠핑 매듭법</p>
										<p class="tiny opacity-6">> 캠핑 실용적 꿀템 7</p>

									</li>
									<li class="col-6-12 ae-4">
										<h3 class="margin-top-3">캠핑 음식</h3>
										<p class="tiny opacity-6">> 토마호크 스테이크 / 짐빔 하이볼</p>
										<p class="tiny opacity-6">> 무조건 맛있는 캠핑요리 BEST</p>
										<p class="tiny opacity-6">> 캠핑장에서 고기 굽는법</p>
										<p class="tiny opacity-6">> 실패할수 없는 숯불 삼겹살 굽는법</p>

									</li>

									<li class="col-6-12 ae-5"><a
										class="button blue gradient crop ae-3">둘러보러가기</a></li>

								</ul>
							</li>
							<li class="col-1-12">&nbsp;</li>
							<li class="col-5-12 bottom">
								<div
									class="videoThumbnail shadow rounded popupTrigger margin-bottom-3 ae-7"
									data-popup-id="89-3">
									<img src="assets/img/background/camp_spot3.jpg" class="wide"
										alt="Video Thumbnail" />
								</div> <img src="assets/img/background/camp_spot1.jpg"
								data-action="zoom" class="shadow rounded ae-8" alt="Image" />
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(assets/img/background/camp_information.jpg)"></div>
	</section>

	<!-- Popup Video -->
	<div class="popup autoplay" data-popup-id="89-3">
		<div class="close">
			<svg>
				<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg>
		</div>
		<div class="content">
			<div class="container">
				<div class="wrap">
					<div class="fix-10-12">
						<div class="embedVideo popupContent">
							<iframe src="https://www.youtube.com/embed/7gZJjxEu1Q0"
								frameborder="0"
								allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<!-- Slide 5 (#85) -->
	<section class="slide fade-6 kenBurns">

		<div class="content">
			<div class="container">
				<div class="wrap">

					<div class="fix-7-12">
						<h1 class="ae-1">캠핑 후기</h1>


						<ul class="grid grid-85 equal margin-top-5 ae-2 fromCenter"
							data-equal-collapse-width="767">


							<li class="col-12-12 col-tablet-1-2 col-phablet-1-1 ae-4">
								<div class="pad">

									<div class="price ae-6">
										<div class="thumbnail-74">
											<img src="" class="wide" alt="Thumbnail" id="galImg" />
										</div>

									</div>

									<div class="margin-top-3 margin-bottom-3 equalElement ae-7">
										<ul class="p tiny">
											<li><strong id="galTitle"></strong></li>

											<li class="opacity-8"><div id="galContents" style="text-overflow: ellipsis;height:300px;"></div></li>

										</ul>
										<div class="thumbnail-74" style="width: 100px; height: 100px;">
											<c:choose>

												<c:when test="${rating==1 }">

													<p class="star_rating">
														<a href="#" class="on">★</a> <a href="#">★</a> <a href="#">★</a>
														<a href="#">★</a> <a href="#">★</a>
													</p>

												</c:when>

												<c:when test="${rating==2 }">

													<p class="star_rating">
														<a href="#" class="on">★</a> <a href="#" class="on">★</a>
														<a href="#">★</a> <a href="#">★</a> <a href="#">★</a>
													</p>

												</c:when>

												<c:when test="${rating==3 }">

													<p class="star_rating">
														<a href="#" class="on">★</a> <a href="#" class="on">★</a>
														<a href="#" class="on">★</a> <a href="#">★</a> <a href="#">★</a>
													</p>

												</c:when>

												<c:when test="${rating==4 }">

													<p class="star_rating">
														<a href="#" class="on">★</a> <a href="#" class="on">★</a>
														<a href="#" class="on">★</a> <a href="#" class="on">★</a>
														<a href="#">★</a>
													</p>

												</c:when>

												<c:when test="${rating==5 }">

													<p class="star_rating">
														<a href="#" class="on">★</a> <a href="#" class="on">★</a>
														<a href="#" class="on">★</a> <a href="#" class="on">★</a>
														<a href="#" class="on">★</a>
													</p>

												</c:when>



											</c:choose>
										</div>
									</div>
									<a href="#"
										class="button blue gradient wide cropSides cropBottom ae-8">구경하러
										가기</a>
								</div>
							</li>

						</ul>



					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(assets/img/background/camp_after.jpg)"></div>
	</section>


	<!-- Slide 5 (#57) -->
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">

					<div class="fix-10-12">


						<ul class="grid equal fixedSpaces margin-top-3">
							<li class="col-4-12 ae-3">
								<div class="fix-3-12 equalElement">
									<h6 class="uppercase opacity-4 margin-top-3 margin-bottom-2">본사</h6>
									<p class="tiny">
										<a class="opacity-8" href="#">서울특별시 중구 남대문로 120 대일빌딩<br>
											2층
										</a>
									</p>
								</div>
								<div class="fix-3-12 equalElement">
									<h6 class="uppercase opacity-4 margin-top-3 margin-bottom-2">종로지점</h6>
									<p class="tiny">
										<a class="opacity-8" href="#">서울특별시 중구 남대문로 120 대일빌딩 <br>
											3층 E Class
										</a>
									</p>
								</div>
							</li>
							<li class="col-4-12 ae-4">
								<div class="fix-3-12 equalElement">
									<h6 class="uppercase opacity-4 margin-top-3 margin-bottom-2">광고
										및 제휴문의</h6>
									<p class="tiny">
										<a class="opacity-8" href="mailto:#">seethestars@gmail.com</a>
									</p>
								</div>
								<div class="fix-3-12 equalElement">
									<h6 class="uppercase opacity-4 margin-top-3 margin-bottom-2">문의사항</h6>
									<p class="tiny">
										<a class="opacity-8" href="mailto:#">seethestars@gmail.com</a>
									</p>
								</div>

							</li>
							<li class="col-4-12 ae-5">
								<div class="fix-3-12 equalElement">
									<h6 class="uppercase opacity-4 margin-top-3 margin-bottom-2">고객센터</h6>
									<p class="tiny">
										<a class="opacity-8" href="#">02-1544-9970</a>
									</p>
								</div>
								<div class="fix-3-12 equalElement">
									<h6 class="uppercase opacity-4 margin-top-3 margin-bottom-2">SNS</h6>
									<ul class="social-circles">
										<li><a class="social-googlePlus" href="#"><svg>
                          <use
														xmlns:xlink="http://www.w3.org/1999/xlink"
														xlink:href="#googlePlus"></use>
                        </svg></a></li>
										<li><a class="social-behance" href="#"><svg>
                          <use
														xmlns:xlink="http://www.w3.org/1999/xlink"
														xlink:href="#behance"></use>
                        </svg></a></li>
										<li><a class="social-dribbble" href="#"><svg>
                          <use
														xmlns:xlink="http://www.w3.org/1999/xlink"
														xlink:href="#dribbble"></use>
                        </svg></a></li>
										<li><a class="social-instagram" href="#"><svg>
                          <use
														xmlns:xlink="http://www.w3.org/1999/xlink"
														xlink:href="#instagram"></use>
                        </svg></a></li>
										<li><a class="social-medium" href="#"><svg>
                          <use
														xmlns:xlink="http://www.w3.org/1999/xlink"
														xlink:href="#medium"></use>
                        </svg></a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(assets/img/background/bg_3.jpg)"></div>
	</section>

	<!-- Panel Bottom #13 -->
	<nav class="panel bottom lastSlideOnly">
		<div class="sections">
			<div class="center">
				<ul class="menu crop">
					<li><a href="http://facebook.com/designmodo" target="_blank"><svg>
                <use xmlns:xlink="http://www.w3.org/1999/xlink"
									xlink:href="#facebook"></use>
              </svg></a></li>
					<li><a href="http://twitter.com/designmodo" target="_blank"><svg>
                <use xmlns:xlink="http://www.w3.org/1999/xlink"
									xlink:href="#twitter"></use>
              </svg></a></li>
					<li><a href="http://instagram.com/designmodo" target="_blank"><svg>
                <use xmlns:xlink="http://www.w3.org/1999/xlink"
									xlink:href="#instagram"></use>
              </svg></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Loading Progress Bar -->
	<div class="progress-bar blue"></div>

</body>

</html>
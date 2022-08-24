<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/8/2022
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tile" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><tile:insertAttribute name="title" /></title>
<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="<c:url value='/template/home/css/bootstrap.min.css'/>">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value='/template/home/css/font-awesome.min.css'/>">

<!-- Custom CSS -->
<link rel="stylesheet"
	href="<c:url value='/template/home/css/owl.carousel.css'/>">
<link rel="stylesheet" href="<c:url value='/template/home/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/home/css/responsive.css'/>">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<tile:insertAttribute name="header" />
	<tile:insertAttribute name="content" />
	<tile:insertAttribute name="footer" />
</body>
</html>

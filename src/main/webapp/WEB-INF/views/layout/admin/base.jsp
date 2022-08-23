<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/8/2022
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
             pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tile" uri="http://tiles.apache.org/tags-tiles" %>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        <tile:insertAttribute name="title"/>
    </title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/template/admin/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/template/admin/css/sb-admin-2.min.css"/>" rel="stylesheet">
    <!-- Custom styles for this page -->
    <link href="<c:url value="/template/admin/vendor/datatables/dataTables.bootstrap4.min.css"/>" rel="stylesheet">

</head>
<body id="page-top">
    <div id="wrapper">
        <tile:insertAttribute name="navigation"/>
            <div id="content-wrapper" class="d-flex flex-column">

                <div id="content">
                    <tile:insertAttribute name="header"/>

                    <tile:insertAttribute name="content"/>
                </div>

                <tile:insertAttribute name="footer"/>
            </div>
    </div>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="../login/login.jsp">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="/template/admin/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value="/template/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/template/admin/js/sb-admin-2.min.js"/>"></script>

    <!-- Page level plugins -->
    <script src="<c:url value="/template/admin/vendor/datatables/jquery.dataTables.min.js"/>"></script>
    <script src="<c:url value="/template/admin/vendor/datatables/dataTables.bootstrap4.min.js"/>"></script>
    <script src="<c:url value="/template/admin/vendor/chart.js/Chart.min.js"/>"></script>

    <!-- Page level custom scripts -->
    <script src="<c:url value="/template/admin/js/demo/datatables-demo.js"/>"></script>
    <script src="<c:url value="/template/admin/js/demo/chart-area-demo.js"/>"></script>
    <script src="<c:url value="/template/admin/js/demo/chart-pie-demo.js"/>"></script>
</body>
</html>


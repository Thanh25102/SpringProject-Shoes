<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Tables</h1>
	<p class="mb-4">
		DataTables is a third party plugin that is used to generate the demo
		table below. For more information about DataTables, please visit the <a
			target="_blank" href="https://datatables.net">official DataTables
			documentation</a>.
	</p>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3 row">
			<h6 class="m-0 font-weight-bold text-primary">DataTables</h6>
			<button>
				<h6 class="m-0 font-weight-bold text-primary">Add data</h6>
			</button>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<c:choose>
							<c:when test="${ type eq 'Products' }">
								<tr>
									<th>Name</th>
									<th>Price</th>
									<th>Description</th>
									<th>Thumbnail</th>
									<th>CategoryName</th>
									<th>RawQuantity</th>
									<th>ProductImages</th>
									<th>Action</th>
								</tr>
							</c:when>
							<c:when test="${ type eq 'Customers' }">
								<tr>
									<th>FullName</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Address</th>
									<th>Rank</th>
									<th>UserName</th>
									<th>Action</th>
								</tr>
							</c:when>
							<c:when test="${ type eq 'Staff' }">
								<tr>
									<th>FullName</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Address</th>
									<th>UserName</th>
									<th>Action</th>
								</tr>
							</c:when>
							<c:when test="${ type eq 'User' }">
								<tr>
									<th>UserName</th>
									<th>Password</th>
									<th>Enable</th>
									<th>Action</th>
								</tr>
							</c:when>
							<c:when test="${ type eq 'Categories' }">
								<tr>
									<th>Name</th>
									<th>Thumbnail</th>
									<th>Description</th>
									<th>Logo</th>
									<th>Action</th>
								</tr>
							</c:when>
						</c:choose>
						
					</thead>
					<tfoot>
						<c:choose>
							<c:when test="${ type eq 'Products' }">
								<tr>
									<th>Name</th>
									<th>Price</th>
									<th>Description</th>
									<th>Thumbnail</th>
									<th>CategoryName</th>
									<th>RawQuantity</th>
									<th>ProductImages</th>
									<th>Action</th>
								</tr>
							</c:when>
							<c:when test="${ type eq 'Customers' }">
								<tr>
									<th>FullName</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Address</th>
									<th>Rank</th>
									<th>UserName</th>
									<th>Action</th>
								</tr>
							</c:when>
							<c:when test="${ type eq 'Staff' }">
								<tr>
									<th>FullName</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Address</th>
									<th>UserName</th>
									<th>Action</th>
								</tr>
							</c:when>
							<c:when test="${ type eq 'User' }">
								<tr>
									<th>UserName</th>
									<th>Password</th>
									<th>Enable</th>
									<th>Action</th>
								</tr>
							</c:when>
							<c:when test="${ type eq 'Categories' }">
								<tr>
									<th>Name</th>
									<th>Thumbnail</th>
									<th>Description</th>
									<th>Logo</th>
									<th>Action</th>
								</tr>
							</c:when>
						</c:choose>
					</tfoot>
					<tbody>
						<c:choose>
							<c:when test="${ type eq 'Products' }">
								<c:forEach var="p" items="${ listObject }">
									<tr>
										<td>${ p.name }</td>
										<td>${ p.price}</td>
										<td>${ p.description}</td>
										<td>${ p.thumbnail}</td>
										<td>${ p.categoryName}</td>
										<td>${ p.rawQuantity}</td>
										<td><a href="#">click</a></td>
										<td style="display: flex; justify-content: center; align-items: center; flex-wrap: wrap;">
											<button style="width: 80px; border-radius: 6px ">Edit</button>
											<button style="width: 80px; border-radius: 6px ">Delete</button>
										</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:when test="${ type eq 'Customers' }">
								<c:forEach var="c" items="${ listObject }">
									<tr>
										<td>${ c.fullName }</td>
										<td>${ c.email}</td>
										<td>${ c.phone}</td>
										<td>${ c.address}</td>
										<td>${ c.rank}</td>
										<td>${ c.userName}</td>
										<td>Delete</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:when test="${ type eq 'Staff' }">
								<c:forEach var="c" items="${ listObject }">
									<tr>
										<td>${ c.fullName }</td>
										<td>${ c.email}</td>
										<td>${ c.phone}</td>
										<td>${ c.address}</td>
										<td>${ c.userName}</td>
										<td>Delete</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:when test="${ type eq 'User' }">
								<c:forEach var="c" items="${ listObject }">
									<tr>
										<th>${c.userName }</th>
										<th>${c.password }</th>
										<th>${c.enabled }</th>
										<th>
											<a href="#">click</a>
										</th>
										<th>Action</th>
									</tr>
								</c:forEach>
							</c:when>
							<c:when test="${ type eq 'Categories' }">
								<c:forEach var="c" items="${ listObject }">
									<tr>
										<th>${c.name }</th>
										<th>${c.thumbnail }</th>
										<th>${c.description }</th>
										<th>${c.logo }</th>
										<th>Action</th>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->
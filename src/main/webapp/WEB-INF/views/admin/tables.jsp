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
			<h6 class="m-0 font-weight-bold text-primary text-right" onclick="displayFormCustom()">Add data</h6>
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
	<div id="overlay_formCustom">
		<section class="vh-100 customer-form-add">
			<form>
				<div class="container py-5 h-100">
				<div class="row justify-content-center align-items-center h-100">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
							<div class="card-body p-4 p-md-5">
								<div class="row">
									<div class="col-md-6 mb-4">
										<h3 class="mb-4 pb-2 pb-md-0 mb-md-5">${type != null ? type : "Error"} Form</h3>
									</div>
									<div class="col-md-6 mb-4 text-right">
										<div class="btn btn-danger" id="cancel__formCustom" onclick="hiddenFormCustom()">Cancel</div>
									</div>
								</div>
								<c:choose>
									<c:when test="${type eq 'Products'}">
										<form>
											<div class="row">
												<div class="col-md-6 mb-4">

													<div class="form-outline">
														<input type="text" id="productName" class="form-control form-control-lg" />
														<label class="form-label" for="productName">Product Name</label>
													</div>

												</div>
												<div class="col-md-6 mb-4">
													<div class="form-outline">
														<input type="number" id="price" class="form-control form-control-lg" />
														<label class="form-label" for="price">Price</label>
													</div>

												</div>
											</div>

											<div class="row">
												<div class="col-md-6 mb-4">

													<div class="form-outline datepicker w-100">
														<input type="number" class="form-control form-control-lg" id="rawQuantity" />
														<label for="rawQuantity" class="form-label">Raw Quantity</label>
													</div>

												</div>
												<div class="col-md-6 mb-4">

													<div class="form-outline datepicker w-100">
														<input type="text" class="form-control form-control-lg" id="thumbnail" />
														<label for="thumbnail" class="form-label">Thumbnail</label>
													</div>

												</div>
											</div>

											<div class="row">
												<div class="col-md-12 mb-8 pb-4">
													<div class="form-outline">
														<textarea class="form-control" rows="3" placeholder="Type the description of the product"></textarea>
														<label class="form-label">Description</label>
													</div>
												</div>
												<div class="col-md-12 mb-8 pb-4">
													<input class="form-control form-control-lg" id="formFileLg" type="file" />
													<div class="small text-muted mt-2">Upload image or any other relevant file. Max file
														size 50 MB</div>
												</div>
												<div class="col-md-12 mb-8 pb-4">
													<select class="select form-control-lg">
														<option value="1" disabled>Choose option</option>
														<option value="2">Nike</option>
														<option value="3">Adidas</option>
														<option value="4">Bitis</option>
														<option value="5">Fila</option>
													</select>
													<label class="form-label select-label">Choose option</label>
												</div>
											</div>

											<div class="mt-4 pt-2">
												<input class="btn btn-primary btn-lg" type="submit" value="Submit" />
											</div>
										</form>
									</c:when>
									<c:when test="${type eq 'Customers'}">
										<form>
											<div class="row">
												<div class="col-md-6 mb-4">
													<div class="form-outline">
														<input type="text" id="fullName" class="form-control form-control-lg" />
														<label class="form-label" for="fullName">Full Name</label>
													</div>
												</div>
												<div class="col-md-6 mb-4">
													<div class="form-outline">
														<input type="email" id="email" class="form-control form-control-lg" />
														<label class="form-label" for="email">Email</label>
													</div>

												</div>
											</div>

											<div class="row">
												<div class="col-md-6 mb-4">
													<div class="form-outline datepicker w-100">
														<input type="number" class="form-control form-control-lg" id="phone" />
														<label for="phone" class="form-label">Phone</label>
													</div>
												</div>
												<div class="col-md-6 mb-4">
													<div class="form-outline datepicker w-100">
														<input type="text" class="form-control form-control-lg" id="address" />
														<label for="address" class="form-label">Address</label>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-md-6 mb-4">
													<div class="form-outline datepicker w-100">
														<input type="text" class="form-control form-control-lg" id="rank" />
														<label for="rank" class="form-label">Rank</label>
													</div>
												</div>
												<div class="col-md-6 mb-4">
													<div class="form-outline datepicker w-100">
														<input type="text" class="form-control form-control-lg" id="username" />
														<label for="username" class="form-label">Username</label>
													</div>
												</div>
											</div>

											<div class="mt-4 pt-2">
												<input class="btn btn-primary btn-lg" type="submit" value="Submit" />
											</div>
										</form>
									</c:when>
									<c:when test="${type eq 'Staff'}">
										<form>
											<div class="row">
												<div class="col-md-6 mb-4">
													<div class="form-outline">
														<input type="text" id="fullNameStaff" class="form-control form-control-lg" />
														<label class="form-label" for="fullNameStaff">Full Name</label>
													</div>
												</div>
												<div class="col-md-6 mb-4">
													<div class="form-outline">
														<input type="email" id="emailStaff" class="form-control form-control-lg" />
														<label class="form-label" for="emailStaff">Email</label>
													</div>

												</div>
											</div>

											<div class="row">
												<div class="col-md-6 mb-4">
													<div class="form-outline datepicker w-100">
														<input type="number" class="form-control form-control-lg" id="phoneStaff" />
														<label for="phoneStaff" class="form-label">Phone</label>
													</div>
												</div>
												<div class="col-md-6 mb-4">
													<div class="form-outline datepicker w-100">
														<input type="text" class="form-control form-control-lg" id="addressStaff" />
														<label for="addressStaff" class="form-label">Address</label>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-md-12 mb-6">
													<div class="form-outline datepicker w-100">
														<input type="text" class="form-control form-control-lg" id="usernameStaff" />
														<label for="usernameStaff" class="form-label">Username</label>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6 mb-4">

													<div class="form-outline datepicker w-100">
														<input type="number" class="form-control form-control-lg" id="rawQuantity" />
														<label for="rawQuantity" class="form-label">Raw Quantity</label>
													</div>

												</div>
												<div class="col-md-6 mb-4">

													<div class="form-outline datepicker w-100">
														<input type="text" class="form-control form-control-lg" id="thumbnail" />
														<label for="thumbnail" class="form-label">Thumbnail</label>
													</div>

												</div>
											</div>

											<div class="row">
												<div class="col-md-12 mb-8 pb-4">
													<div class="form-outline">
														<textarea class="form-control" rows="3" placeholder="Type the description of the product"></textarea>
														<label class="form-label">Description</label>
													</div>
												</div>
												<div class="col-md-12 mb-8 pb-4">
													<input class="form-control form-control-lg" id="formFileLg" type="file" />
													<div class="small text-muted mt-2">Upload image or any other relevant file. Max file
														size 50 MB</div>
												</div>
												<div class="col-md-12 mb-8 pb-4">
													<select class="select form-control-lg">
														<option value="1" disabled>Choose option</option>
														<option value="2">Nike</option>
														<option value="3">Adidas</option>
														<option value="4">Bitis</option>
														<option value="5">Fila</option>
													</select>
													<label class="form-label select-label">Choose option</label>
												</div>
											</div>

											<div class="mt-4 pt-2">
												<input class="btn btn-primary btn-lg" type="submit" value="Submit" />
											</div>
										</form>
									</c:when>
								</c:choose>
								<%--<form>
									<div class="row">
										<div class="col-md-6 mb-4">

											<div class="form-outline">
												<input type="text" id="firstName" class="form-control form-control-lg" />
												<label class="form-label" for="firstName">First Name</label>
											</div>

										</div>
										<div class="col-md-6 mb-4">

											<div class="form-outline">
												<input type="text" id="lastName" class="form-control form-control-lg" />
												<label class="form-label" for="lastName">Last Name</label>
											</div>

										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-4 d-flex align-items-center">

											<div class="form-outline datepicker w-100">
												<input type="text" class="form-control form-control-lg" id="birthdayDate" />
												<label for="birthdayDate" class="form-label">Birthday</label>
											</div>

										</div>
										<div class="col-md-6 mb-4">

											<h6 class="mb-2 pb-1">Gender: </h6>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
													   value="option1" checked />
												<label class="form-check-label" for="femaleGender">Female</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
													   value="option2" />
												<label class="form-check-label" for="maleGender">Male</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
													   value="option3" />
												<label class="form-check-label" for="otherGender">Other</label>
											</div>

										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-4 pb-2">

											<div class="form-outline">
												<input type="email" id="emailAddress" class="form-control form-control-lg" />
												<label class="form-label" for="emailAddress">Email</label>
											</div>

										</div>
										<div class="col-md-6 mb-4 pb-2">
											<div class="form-outline">
												<input type="tel" id="phoneNumber" class="form-control form-control-lg" />
												<label class="form-label" for="phoneNumber">Phone Number</label>
											</div>
										</div>
										<div class="col-md-12 mb-8 pb-4">
											<div class="form-outline">
												<textarea class="form-control" rows="3" placeholder="Message sent to the employer"></textarea>
												<label class="form-label">Description</label>
											</div>
										</div>
										<div class="col-md-12 mb-8 pb-4">
											<input class="form-control form-control-lg" id="formFileLg" type="file" />
											<div class="small text-muted mt-2">Upload image or any other relevant file. Max file
												size 50 MB</div>

										</div>
									</div>

									<div class="row">
										<div class="col-12">

											<select class="select form-control-lg">
												<option value="1" disabled>Choose option</option>
												<option value="2">Subject 1</option>
												<option value="3">Subject 2</option>
												<option value="4">Subject 3</option>
											</select>
											<label class="form-label select-label">Choose option</label>

										</div>
									</div>

									<div class="mt-4 pt-2">
										<input class="btn btn-primary btn-lg" type="submit" value="Submit" />
									</div>

								</form>--%>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
		</section>
	</div>

</div>

<!-- /.container-fluid -->
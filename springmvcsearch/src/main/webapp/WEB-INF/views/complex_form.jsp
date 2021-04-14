<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Home</title>
</head>
<body>
	<div class="container">
		<div class="text-center">
			<h2>welcome</h2>

		</div>

		<div class="alert alert-danger" role="alert">
			<form:errors path="student.*" />
		</div>
		<div class="form-group">

			<div class="card mx-auto bg-success mt-5" style="width: 70%">
				<div class="card-body">

					<form action="handleForm" method="post" class="mt-2">

						<div class="form-group">
							<label for="name">Enter Name</label> <input type="text"
								class="form-control" name="name" id="name"
								placeholder="Enter your name">
						</div>


						<div class="form-group">

							<label for="id">Enter Id</label> <input type="number"
								class="form-control" name="id" id="id"
								placeholder="Enter your ID">
						</div>

						<div class="form-group">
							<label for="date">Enter Date</label> <input type="text"
								class="form-control" name="date" id="date"
								placeholder="dd/mm/yyyy">
						</div>

						<div class="form-group">
							<label for="exampleFormControlSelect2">Select Courses</label> <select
								multiple class="form-control" name="courses"
								id="exampleFormControlSelect2">
								<option>java</option>
								<option>advance java</option>
								<option>python</option>
								<option>jdbc</option>
								<option>hibernate</option>
							</select>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								id="inlineRadio1" value="male" checked> <label
								class="form-check-label" for="inlineRadio1"> Male </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								id="inlineRadio2" value="female" checked> <label
								class="form-check-label" for="inlineRadio2"> Female </label>
						</div>

						<div class="form-group">
							<label for="exampleFormControlSelect1"> select type</label> <select
								class="form-control" name="type" id="exampleFormControlSelect1">
								<option>old student</option>
								<option>normal student</option>
							</select>
						</div>


						<div class="card">
							<div class="card-body">
								<p>your address</p>
								<div class="form-group">
									<input type="text" class="form-control" name="address.street"
										placeholder="enter street" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="address.city"
										placeholder="enter city" />
								</div>
							</div>

						</div>



						<div class=" container text-center">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>
			</div>

		</div>

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
</body>
</html>
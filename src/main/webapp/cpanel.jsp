<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background-color: rgba(251, 194, 29, .5);">
	<main id="cpanel">
		<form action="product" method="post" enctype="multipart/form-data">
			<table border="1" align="center">
				<tr>
					<td>
						<label>Product Category:</label>
						<select name="category" style="width:100%">
							<option selected>Laptop</option>
							<option>Desktop</option>
							<option>Tablet</option>
							<option>Smartphone</option>
						</select>
					</td>
					<td>
						<label>Product Name:</label>
						<input type="text" name="p_name">
					</td>
				</tr>
				<tr>
					<td>
						<label>Description:</label>
						<textarea name="description" style="width:100%"></textarea>
					</td>
					<td>
						<label>Dimension:</label>
						<input type="text" name="dimension" >
					</td>
				</tr>
				<tr>
					<td>
						<label>Product Images:</label>
						<input type="file" name="img1"><br>
						<input type="file" name="img2"><br>
						<input type="file" name="img3"><br>
						<input type="file" name="img4">
					</td>
					<td>
						<label>Features & Spaces:</label>
						<input type="text" name="processor" placeholder="processor name"><br>
						<input type="text" name="ram" placeholder="Ram"><br>
						<input type="text" name="storage" placeholder="Storage"><br>
						<input type="text" name="brand" placeholder="Brand Name"><br>
						<input type="text" name="os" placeholder="Operating System">
					</td>
				</tr>
				<tr>
					<td>
						<label>Rent Charge:</label>
						<input type="number" name="rent">
					</td>
					<td>
						<label>Deposit:</label>
						<input type="number" name="deposit">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"></td>
				</tr>
			</table>
			
		</form>
	</main>
</body>
</html>
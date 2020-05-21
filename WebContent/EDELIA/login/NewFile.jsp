<!DOCTYPE HTML>
<!--
	Story by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)

	Note: Only needed for demo purposes. Delete for production sites.
-->
<html>
	<head>
		<title>LOGIN</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper" class="divided">

				<!-- Gallery -->
					<section class="wrapper style1 align-center">
						<div class="inner">
							<h2>LOG IN</h2>
						</div>

						

					</section>
								<!-- Form -->
									<section>
										<header>
											<h3>Form</h3>
										</header>
										<div class="content">

											<form method="post" action="#">
												<div class="field half first">
													<label for="name">Name</label>
													<input type="text" name="name" id="name" value="" />
												</div>
												<div class="field half">
													<label for="email">Email</label>
													<input type="email" name="email" id="email" value="" />
												</div>
												<div class="field">
													<label for="department">Department</label>
													<div class="select-wrapper">
														<select name="department" id="department">
															<option value="">- Category -</option>
															<option value="1">Manufacturing</option>
															<option value="2">Shipping</option>
															<option value="3">Administration</option>
															<option value="4">Human Resources</option>
														</select>
													</div>
												</div>
												<div class="field third first">
													<input type="radio" id="priority-low" name="priority" checked />
													<label for="priority-low">Low Priority</label>
												</div>
												<div class="field third">
													<input type="radio" id="priority-normal" name="priority" />
													<label for="priority-normal">Normal Priority</label>
												</div>
												<div class="field third">
													<input type="radio" id="priority-high" name="priority" />
													<label for="priority-high">High Priority</label>
												</div>
												<div class="field">
													<label for="message">Message</label>
													<textarea name="message" id="message" rows="6"></textarea>
												</div>
												<div class="field half first">
													<input type="checkbox" id="copy" name="copy" />
													<label for="copy">Email me a copy of this message</label>
												</div>
												<div class="field half">
													<input type="checkbox" id="human" name="human" checked />
													<label for="human">I am a human and not a robot</label>
												</div>
												<ul class="actions">
													<li><input type="submit" name="submit" id="submit" value="Send Message" /></li>
												</ul>
											</form>

										</div>
									</section>

								<!-- Box -->
									<section>
										<header>
											<h3>Box</h3>
										</header>
										<div class="content">

											<div class="box">
												<p>Felis sagittis eget tempus primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Magna sed etiam ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus lorem ipsum dolor sit amet nullam.</p>
											</div>

										</div>
									</section>

							</div>


						</div>
					</section>
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

		<!-- Note: Only needed for demo purposes. Delete for production sites. -->
			<script src="assets/js/demo.js"></script>

	</body>
</html>

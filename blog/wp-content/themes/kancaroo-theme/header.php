<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package kancaroo-theme
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta property="og:locale" content="en_US">
	<meta property="og:url" content="https://kancaroo.com/blog">
	<meta property="og:site_name" content="kancaroo">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link media="all" rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin>
	<link media="all" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link media="all" rel="stylesheet" href="<?php echo bloginfo('stylesheet_directory') ?>/assets/style.css">
	<link media="all" rel="stylesheet" href=" <?php echo bloginfo('stylesheet_directory') ?>/assets/response.css">
	<!-- Google tag (gtag.js) -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-TDKX0EXNFW"></script>
	<script>
		window.dataLayer = window.dataLayer || [];

		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'G-TDKX0EXNFW');
	</script>
	<!-- Google tag (gtag.js) -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-16517612478"></script>
	<script>
		window.dataLayer = window.dataLayer || [];

		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'AW-16517612478');
	</script>
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php wp_body_open(); ?>

	<div class="container-fluid about-banner p-0">
		<a class="navbar-brand d-none d-lg-block" href="https://kancaroo.com/">
			<img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/Logo-white.svg" class="logo-image" alt="Represents our brand's identity and commitment to quality." width="172" height="165" loading="lazy">
		</a>
		<div class="container pt-lg-4 mob-header">
			<nav class="navbar navbar-expand-lg navbar-dark navbar-light-md py-0 py-md-2">
				<div class="container-fluid">
					<a class="navbar-logo d-lg-none" href="https://kancaroo.com/">
						<img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/logo-mob.svg" class="main-mob-logo img-fluid" alt="Logo for Kancaroo Trusted Car Carriers, featuring a sleek design with a car silhouette and the company name." width="44" height="51" loading="lazy">
					</a>
					<a class="navbar-logo d-lg-none" href="https://kancaroo.com/">
						<img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/kancaroo-text.svg" alt="Kangaroo Car Carriers: Trusted & Reliable Vehicle Transportation" class="main-mob-logo img-fluid" width="155" height="38" loading="lazy">
					</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar">
						<div class="offcanvas-header">
							<button type="button" class="btn-close menu-close-btn" data-bs-dismiss="offcanvas" aria-label="Close" style="margin-top: 0px !important; width: 23px !important; height: 23px !important;"></button>
						</div>

						<div class="offcanvas-body">
							<ul class="navbar-nav">

								<li class="nav-item ">
									<a class="nav-link active visually-hidden" aria-current="page" href="https://kancaroo.com/">Home</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="https://kancaroo.com/about">About</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="https://kancaroo.com/contact">Contact us</a>
								</li>
								<li>
									<a href="#" class="btn btn-dark outline-dark fw-bold">
										<i class="bi bi-box-arrow-in-right"></i>
										Login / Signup</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
		</div>
		<div class="container banner-sec mt-lg-5 pt-lg-0 pt-5 pb-5 text-lg-end text-md-end">
			<h1>Blog </h1>
			<p class="subHead  d-none d-md-block mt-md-3">Stay tuned for insightful articles, industry news, and expert <br>
				tips on car carrier industry.</p>
			<p class="subHead d-md-none mob-about-para mt-3">Stay tuned for insightful articles, industry news, and expert
				tips on car carrier industry.
			</p>
		</div>
	</div>
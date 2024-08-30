<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package kancaroo-theme
 */

?>

<div class="container-fluid footer-section pt-xl-5 pb-xl-5 pt-4 pb-4 position-relative z-1">
	<img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/road-image.webp" width="487" height="416" loading="lazy" alt=" A monochrome image showing a tire track on a surface." class="road-img">
	<div class="container p-md-0 ">
		<div class="row pb-4 text-start">
			<div class="col col-md-9 col-lg-10 col-12  pb-4 pb-md-0">
				<div class="h1">Contact us today</div>
				<span>for your car transportation needs</span>
			</div>
			<div class="col col-md-3 col-lg-2 col-6 align-self-center">
				<a class="btn btn-danger fw-bold" href="https://kancaroo.com/contact">Contact us</a>
			</div>
		</div>
		<div class="row footer-row pt-4 pb-4">
			<div class="col col-md-3 col-xl-3 col-12 pb-4 ps-4 text-center d-md-block d-none">
				<a href="https://kancaroo.com">
					<img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/Logo-white.svg" class="logo-img" width="172" height="165" loading="lazy" alt="Represents our brand's identity and commitment to quality.">
				</a>
			</div>

			<div class="col col-md-3 col-lg-2 col-6 pb-lg-4">
				<p class="h6">About</p>
				<a href="https://kancaroo.com/about">About Kancaroo</a>
				<a href="https://kancaroo.com/branches">Branches</a>
				<a href="https://kancaroo.com/blog">Blog</a>
				<a href="https://kancaroo.com/awards">Awards</a>
				<a href="https://kancaroo.com/contact">Contact us</a>
			</div>
			<div class="col col-md-3 col-lg-2 col-6 pb-lg-4">
				<p class="h6">Legal</p>
				<a href="https://kancaroo.com/terms-conditions">Terms & Condition</a>
				<!-- <a href="#">Refund Policy</a> -->
			</div>
			<div class="col col-md-3 col-lg-2 col-6 pb-lg-4 social-media-icon">
				<p class="h6">Follow us on </p>
				<a target="_blank" rel="nofollow" href="https://www.facebook.com/people/Kancaroo-Car-Carriers/61557762279110/"><img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/facebook.svg" width="20" height="20" loading="lazy" alt="Represents social connection, community engagement, and brand presence."></a>
				<a target="_blank" rel="nofollow" href="https://www.instagram.com/kancaroocarcarriers/"><img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/instagram.svg" width="20" height="20" loading="lazy" alt="Symbolizes visual storytelling, creativity, and social interaction."></a>
				<a target="_blank" rel="nofollow" href="https://twitter.com/kancaroocar"><img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/twitter.svg" width="20" height="20" loading="lazy" alt="Represents connectivity, social media engagement, and networking."></a>
			</div>
			<div class="col col-md-2 col-12 pb-lg-4 d-none d-lg-block"></div>
		</div>
		<div class="text-center pt-3">
			<p class="rights-text d-none d-md-block"> &#169; All rights reserved. Kancaroo- ICM Logistics Group</p>
			<p class="rights-text d-md-none"> &#169; All rights reserved. <br> Kancaroo- ICM Logistics Group</p>
		</div>
	</div>
</div>

<?php wp_footer(); ?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
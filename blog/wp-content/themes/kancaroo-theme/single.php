<?php

/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package kancaroo-theme
 */

get_header();
?>



	<?php

	while (have_posts()) :
		the_post();
		get_template_part('template-parts/content', 'post-section');

		// $prev_post = get_previous_post();
		// $next_post = get_next_post();

		// Custom function to get post thumbnail with link
		// function get_post_thumbnail_with_link($post) {
		// 	$thumbnail = get_the_post_thumbnail($post->ID, 'thumbnail');
		// 	$link = get_permalink($post->ID);
		// 	return '<a href="' . esc_url($link) . '">' . $thumbnail . '</a>';
		// }

		// // Display post navigation with thumbnail images
		// the_post_navigation( array(
		// 	'prev_text' => '<div class="nav-previous">' . get_post_thumbnail_with_link($prev_post) . '<span class="nav-subtitle">' . esc_html__( 'Previous Post', 'Blog' ) . '</span> <span class="nav-title">' . get_the_title($prev_post) . '</span></div>',
		// 	'next_text' => '<div class="nav-next">' . get_post_thumbnail_with_link($next_post) . '<span class="nav-subtitle">' . esc_html__( 'Next Post', 'Blog' ) . '</span> <span class="nav-title">' . get_the_title($next_post) . '</span></div>',
		// 	'taxonomy' => 'category',
		// 	'in_same_term' => true,
		// ) );


		// the_post_navigation(
		// 	array(
		// 		'prev_text' => '<span class="nav-subtitle">' . esc_html__('Previous:', 'kancaroo-theme') . '</span> <span class="nav-title">%title</span>',
		// 		'next_text' => '<span class="nav-subtitle">' . esc_html__('Next:', 'kancaroo-theme') . '</span> <span class="nav-title">%title</span>',
		// 	)
		// );

		// if (comments_open() || get_comments_number()) :
		// 	comments_template();
		// endif;

	endwhile;
	?>


<?php
// get_sidebar();
get_footer();

<?php

/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package kancaroo-theme
 * 
 * Template Name:Home page
 */

get_header();
?>

            <?php get_template_part('template-parts/content', 'blog-page'); ?>
        
<?php
//  get_sidebar();
get_footer();

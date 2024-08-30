<?php

/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kancaroo-theme
 */

?>

		<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
			<header class="entry-header">
				<div class="entry-meta">
				<img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/calendar.png" alt="Minimalistic red calendar icon on white." width="28" height="28" loading="lazy">
				<?php
					kancaroo_theme_posted_on();
					// kancaroo_theme_posted_by();
					?>
				</div>
				<?php
				if (is_singular()) :
					the_title('<h2 class="entry-title h2-heading-left ff-mont">', '</h2>');
				else :
					the_title('<h2 class="entry-title "><a class="h2-heading-left ff-mont" href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></h2>');
				endif;

				if ('post' === get_post_type()) :
				?>

				<?php endif; ?>
			</header>

			<?php kancaroo_theme_post_thumbnail(); ?>

			<div class="entry-content">
				<?php
				the_content(
					sprintf(
						wp_kses(
							/* translators: %s: Name of current post. Only visible to screen readers */
							__('Continue reading<span class="screen-reader-text"> "%s"</span>', 'kancaroo-theme'),
							array(
								'span' => array(
									'class' => array(),
								),
							)
						),
						wp_kses_post(get_the_title())
					)
				);

				wp_link_pages(
					array(
						'before' => '<div class="page-links">' . esc_html__('Pages:', 'kancaroo-theme'),
						'after'  => '</div>',
					)
				);
				?>
			</div>

			<footer class="entry-footer">
				<?php kancaroo_theme_entry_footer(); ?>
			</footer>
		</article>#post-<?php the_ID(); ?>


	
<?php

/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kancaroo-theme
 */

?>
<?php $banner_image = get_field('banner_image') ?>


<div class="container-fluid  pt-5 pb-5 p-0">
    <div class="container mt-lg-5">
        <div class="blog-row blog-post post-section">
            <?php
            $date = get_the_date('Y-m-d');
            $datetime = new DateTime($date);
            $formatted_date = $datetime->format('dS M Y');
            ?>
            <div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                <div class="card border-0">
                    <div class="post-header">
                        <p class="card-text">
                            <img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/calendar.png" width="28" height="28" loading="lazy" alt="Minimalistic red calendar icon on white.">
                            <?php echo $formatted_date; ?>
                        </p>
                        <?php the_title('<h2 class="entry-title h2-heading-left ff-mont">', '</h2>');
                        ?>
                    </div>
                    <div class="full-img">
                        <img src="<?php echo $banner_image['url'] ?>" alt="<?php the_title(); ?>-image" class="img-fluid" width="1193" height="387" loading="lazy">
                    </div>
                    <div class="card-body p-0">

                        <?php the_title('<p class="mb-3 mt-3"><a class="card-title" href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></p>'); ?>
                        <div class="excerpt">
                            <?php the_excerpt(); ?>
                        </div>
                        <div class="entry-content">
                            <?php
                            the_content(
                                sprintf(
                                    wp_kses(

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
                    </div>
                </div>
            </div><!-- #post-<?php the_ID(); ?> -->
        </div>
    </div>
</div>
<div class="container-fluid post-thumb-section pt-5 pb-5 mb-xl-5">
    <div class="container">
        <div class="post-blogs">
            <div class="thumb-blog-post">
                <?php
                // WP_Query arguments
                $args = array(
                    'post_type' => 'post',
                    'posts_per_page' => -1,
                    // 'order' => 'ASC',
                );

                // The Query
                $the_query = new WP_Query($args);

                // Check if we have any posts
                if ($the_query->have_posts()) {
                    // Start the loop
                    while ($the_query->have_posts()) {
                        $the_query->the_post();

                        $date = get_the_date('Y-m-d');
                        $datetime = new DateTime($date);
                        $formatted_date = $datetime->format('dS M Y');

                ?>
                        <div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                            <div class="card border-0 pb-3">
                                <div class="thumb-post-img">
                                    <?php kancaroo_theme_post_thumbnail(); ?>
                                </div>
                                <div class="card-body p-0 pt-3">
                                    <p class="card-text">
                                        <img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/calendar.png" width="28" height="28" loading="lazy" alt="Minimalistic red calendar icon on white.">
                                        <?php echo $formatted_date; ?>
                                    </p>
                                    <!-- <a class="card-title" href="<?php the_permalink(); ?>">
                                        <?php
                                        $original = get_the_title();
                                        $parts = str_split($original, 30);
                                        $parts = array_slice($parts, 0, 2);
                                        $final = implode("<br>", $parts);
                                        if (mb_strlen($original) > 60) {
                                            $final .= '...';
                                        }
                                        echo $final;
                                        ?>
                                    </a> -->
                                    <a class="card-title" href="<?php the_permalink(); ?>">
                                        <?php $post_title = get_the_title();
                                        $title_truncated = mb_substr($post_title, 0, 60);
                                        if (mb_strlen($post_title) > 60) {
                                            $title_truncated .= '...';
                                        }
                                        echo $title_truncated;
                                        ?>
                                    </a>

                                </div>
                            </div><!-- #post-<?php the_ID(); ?> -->
                        </div>
                <?php
                    }
                    // Restore original post data
                    wp_reset_postdata();
                } else {
                    // If no posts are found
                    echo 'No custom posts found.';
                }
                ?>
            </div>
        </div>
    </div>
</div>
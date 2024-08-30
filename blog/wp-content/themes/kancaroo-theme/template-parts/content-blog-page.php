<div class="container-fluid blog-section  pt-5 pb-4">
    <div class="container mt-lg-3 mb-lg-3 p-md-0">
        <div class="blogs">
            <div class="row blog-row justify-content-center">
                <div class="col col-xl-6 col-lg-6 col-md-6 col-12 blog-text blog-title blog-left-col">
                    <h2 class="h2-heading-left ff-mont">Latest</h2>
                    <?php
                    // WP_Query arguments
                    $args = array(
                        'post_type' => 'post',
                        'posts_per_page' => 1,
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
                                <div class="card">
                                    <div class="full-img">
                                        <?php kancaroo_theme_post_thumbnail(); ?>
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text">
                                            <img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/calendar.png" width="28" height="28" loading="lazy" alt="Minimalistic red calendar icon on white.">
                                            <?php echo $formatted_date; ?>
                                        </p>

                                        <?php the_title('<p class="mb-lg-3"><a class="card-title" href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></p>'); ?>
                                        <p class="mb-xxl-4 mb-xl-0">
                                            <?php $post_excerpt = get_the_excerpt();;
                                            $excerpt_truncated = mb_substr($post_excerpt, 0, 350);
                                            if (mb_strlen($post_excerpt) > 350) {
                                                $excerpt_truncated .= '...';
                                            }
                                            echo $excerpt_truncated;
                                            ?>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- #post-<?php the_ID(); ?> -->
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
                <div class="col  col-xl-5 col-lg-6 col-md-6 col-12 blog-text blog-title blog-right-col">
                    <h2 class="h2-heading-left ff-mont">Trending</h2>
                    <div class="thumb-blogs">
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
                                    <div class="card">
                                        <div class="row g-0">
                                            <div class="col-md-6">
                                                <div class="thumb-img">
                                                    <?php $featured_image_small = get_field('featured_image_small') ?>
                                                    <img src="<?php echo $featured_image_small['url'] ?>" alt="<?php the_title(); ?>" class="img-fluid" width="253" height="260" loading="lazy">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="card-body">
                                                    <p class="card-text">
                                                        <img src="<?php echo bloginfo('stylesheet_directory') ?>/assets/images/calendar.png" width="28" height="28" loading="lazy" alt="Minimalistic red calendar icon on white.">
                                                        <?php echo $formatted_date; ?>
                                                    </p>
                                                    <div class="mb-2 post-title">
                                                        <a class="card-title d-none d-md-block" href="<?php the_permalink(); ?>">
                                                            <?php $post_title = get_the_title();
                                                            $title_truncated = mb_substr($post_title, 0, 45);
                                                            if (mb_strlen($post_title) > 45) {
                                                                $title_truncated .= '...';
                                                            }
                                                            echo $title_truncated;
                                                            ?>
                                                        </a>

                                                        <a class="card-title d-md-none" href="<?php the_permalink(); ?>">
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
                                                        </a>
                                                    </div>
                                                    <div class="card-text-blog-para d-none d-md-block">
                                                        <?php $post_excerpt = get_the_excerpt();
                                                        $excerpt_truncated = mb_substr($post_excerpt, 0, 100);
                                                        if (mb_strlen($post_excerpt) > 100) {
                                                            $excerpt_truncated .= '...';
                                                        }
                                                        echo $excerpt_truncated;
                                                        ?>
                                                    </div>
                                                    <div class="card-text-blog-para d-md-none">
                                                        <?php $post_excerpt = get_the_excerpt();
                                                        $excerpt_truncated = str_split($post_excerpt, 50);
                                                        $excerpt_truncated = array_slice($excerpt_truncated, 0, 2);
                                                        $final = implode("<br>", $excerpt_truncated);
                                                        if (mb_strlen($post_excerpt) > 110) {
                                                            $final .= '...';
                                                        }
                                                        echo $final;
                                                        ?>
                                                    </div>
                                                </div>
                                            </div>
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
    </div>
</div>
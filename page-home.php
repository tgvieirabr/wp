<?php
/*
 * Template Name: Home
 * Description: Página inicial do site.
 */
get_header(); // Inclui o cabeçalho do tema
?>

<div id="primary" class="content-area">
    <main id="main" class="site-main">
        <div class="proj-cards">

        <?php
        $custom_post_types = get_post_types(array('public' => true, '_builtin' => false));
        $args = array(
            'post_type' => $custom_post_types,
            'posts_per_page' => -1,
            'post_status' => 'publish',
            'category__not_in' => array(1),
        );
        $posts_query = new WP_Query($args);

        if ($posts_query->have_posts()) {
            while ($posts_query->have_posts()) {
                $posts_query->the_post();

                $titulo = get_the_title();
                $resumo = get_field('resumo'); // Utiliza o ACF para obter o resumo
                $tipo_projeto = get_field('tipo_de_projeto'); // Utiliza o ACF para obter o tipo de projeto
                $imagem_projeto = get_field('imagem_do_projeto'); // Utiliza o ACF para obter a imagem do projeto
                ?>

                <div class="proj-cards_item">
                    <div class="proj-card">
                        <?php if (!empty($imagem_projeto)): ?>
                            <div class="proj-card_image-container">
                                <img src="<?php echo esc_url($imagem_projeto['url']); ?>" alt="<?php echo esc_attr($titulo); ?>">
                            </div>
                        <?php endif; ?>

                        <div class="proj-card_content">
                            <h3 class="proj-card_title"><?php echo esc_html($titulo); ?></h3>
                            <p class="proj-card_text"><?php echo esc_html($resumo); ?></p>
                            <a href="<?php the_permalink(); ?>" class="proj-btn">Saiba Mais</a>
                        </div>
                    </div>
                </div>

                <?php
            }
            wp_reset_postdata();
        } else {
            echo '<p>Nenhum projeto encontrado.</p>';
        }
        ?>

        </div>
    </main>
</div>

<?php get_footer(); // Inclui o rodapé do tema ?>
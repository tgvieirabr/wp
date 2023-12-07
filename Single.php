<?php
/*
 * Template Name: Single
 * Description: Página individual para cada projeto.
 */

get_header(); // Inclui o cabeçalho do tema
?>

<main id="main" class="site-main">

    <?php
    if ($post->post_type == 'projetos') {
        $titulo = get_the_title();
        $data_do_projeto = get_field('data_do_projeto'); // Utiliza o ACF para obter a data
        $descricao = get_field('descricao'); // Utiliza o ACF para obter a descrição
        $tipo_de_projeto = get_field('tipo_de_projeto'); // Utiliza o ACF para obter o tipo de projeto
        $project_url = esc_url(get_field('link_do_projeto')); // Utiliza o ACF para obter o URL do projeto
        $imagem_projeto = get_field('imagem_do_projeto'); // Utiliza o ACF para obter a imagem do projeto

        ?>
  <article class="project-single">
    <div class="project-content">
        <h1><?php echo esc_html($titulo); ?></h1>
        <p>Data do Projeto: <?php echo esc_html($data_do_projeto); ?></p>

        <?php
        // Exibe a imagem do projeto
        if (!empty($imagem_projeto)) {
            echo '<div class="project-thumbnail">';
            echo '<img src="' . esc_url($imagem_projeto['url']) . '" alt="' . esc_attr($titulo) . '">';
            echo '</div>';
        } else {
            echo '<div class="project-thumbnail">Nenhuma imagem disponível para este projeto.</div>';
        }
        ?>

        <p><?php echo esc_html($descricao); ?></p>

        <?php 
        if (!empty($tipo_de_projeto) && is_array($tipo_de_projeto)): ?>
            <p>Tipo de Projeto: <?php echo esc_html(implode(', ', $tipo_de_projeto)); ?></p>
        <?php endif; ?>

        <?php if ($project_url): ?>
            <a href="<?php echo $project_url; ?>" target="_blank" class="button">Ver Projeto</a>
        <?php endif; ?>
    </div>
</article>


        <?php
        $related_projects = new WP_Query(array(
            'post_type' => 'projetos',
            'posts_per_page' => 3,
            'post__not_in' => array($post->ID),
            'orderby' => 'rand',
        ));

        if ($related_projects->have_posts()) : ?>
            <section class="related-projects">
                <h2>Projetos Relacionados</h2>
                <ul>
                    <?php while ($related_projects->have_posts()) : $related_projects->the_post(); ?>
                        <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
                    <?php endwhile; ?>
                </ul>
            </section>
            <?php
            wp_reset_postdata();
        endif;
    } else {
        echo '<h1>Página não encontrada</h1>';
    }
    ?>

    <a href="<?php echo home_url('/projetos'); ?>" class="button">Voltar para a lista de projetos</a>

</main>

<?php get_footer(); // Inclui o rodapé do tema ?>

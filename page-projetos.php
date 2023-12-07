

<?php
/*
 * Template Name: Projetos
 * Description: Página de projetos do site.
 */

get_header(); // Inclui o cabeçalho do tema
?>

<div id="primary" class="content-area">
    <main id="main" class="site-main">
        <div class="projects-container">
            <!-- Filtro por Tipo de Projeto -->
               <!-- Filtro por Tipo de Projeto -->
               <div class="filter-section">
                <h2>Filtrar por Tipo de Projeto</h2>
                <form action="<?php echo site_url('/projetos'); ?>" method="GET" id="checkbox-filter-form">
                    <select name="filtro_checkbox" id="filtro_checkbox">
                        <option value="">Selecionar</option>
                        <option value="site">Site</option>
                        <option value="blog">Blog</option>
                        <option value="aplicativo">Aplicativo</option>
                    </select>
                    <input type="submit" value="Filtrar" class="filter-submit-button">
                </form>
            </div>
     

            <!-- Listagem de Projetos em Cards -->
            <div class="proj-cards">
                <?php
                $args = array(
                    'post_type'      => 'projetos',
                    'posts_per_page' => -1,
                    'post_status'    => 'publish'
                );

                $projects_query = new WP_Query($args);

                if ($projects_query->have_posts()) {
                    while ($projects_query->have_posts()) {
                        $projects_query->the_post();
                        
                        
                             $titulo = get_the_title();
                             $resumo = get_field('resumo'); // ACF para obter o resumo
                             $imagem_projeto = get_field('imagem_do_projeto'); // ACF para obter a imagem

                        // Adicionando a classe 'proj-card-btn' aos botões
                        ?>

                        <div class="proj-cards_item">
                            <div class="proj-card">
                             
                                <a href="<?php the_permalink(); ?>" class="proj-card-btn">Ver Projeto</a> <!-- Classe adicionada -->
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
        </div>
    </main>
</div>

<?php get_footer(); // Inclui o rodapé do tema ?>

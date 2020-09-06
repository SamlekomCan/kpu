<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <hr>
    <?php
    $presiden = $this->db->query("SELECT * FROM presiden WHERE idUser LIKE " . $user['id'] . " ")->num_rows();
    $gubernur = $this->db->query("SELECT * FROM gubernur WHERE idUser LIKE " . $user['id'] . " ")->num_rows();
    $himpunan = $this->db->query("SELECT * FROM himpunan WHERE idUser LIKE " . $user['id'] . " ")->num_rows();
    if ($presiden == 0) :
        ?>
        <a href="<?= base_url('user/screeningpresiden') ?>" class="btn btn-primary btn-user btn-block">Presiden</a>
    <?php endif ?>
    <?php if ($gubernur == 0) : ?>
        <a href="<?= base_url('user/screeninggubernur') ?>" class="btn btn-primary btn-user btn-block">Gubernur</a>
    <?php endif ?>
    <?php if ($himpunan == 0) : ?>
        <a href="<?= base_url('user/screeninghimpunan') ?>" class="btn btn-primary btn-user btn-block">Himpunan</a>
<?php endif ?>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

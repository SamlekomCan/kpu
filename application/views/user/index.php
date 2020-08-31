<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <hr>
    <center>
        <h1>Pemilihan Calon BEMU</h1>
    </center>
    <br>
    <div class="row">
        <?php 
        foreach ($data as $row): ?>
        <div class="col-xs-12 col-md-6 col-lg-3">
            <div class="panel panel-default">
                <center>
                    <div class="card">
                        <img class="card-img-top" src="<?= base_url('assets/img/calon/').$row['foto'] ?>"
                            style="height: 200px;">
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['ketua'].' - '.$row['wakil']; ?></h5>
                            <p class="card-text"><?=$row['organisasi'];?></p>
                        </div>
                        <div class="card-footer">
                            <a href="<?= base_url('user/detailCalon/').$row['id'];?>"
                                class="btn btn-info btn-sm">Detail</a>
                            <a href="<?= base_url('user/pilihCalon/').$row['id'];?>"
                                class="btn btn-primary btn-sm">Edit</a>
                        </div>
                    </div>
                </center>
            </div>
        </div>
        <?php endforeach ?>
    </div>
    <hr>
    <center>
        <h1>Pemilihan Calon BEMF <?= $user['fakultas'] ?></h1>
    </center>
    <br>
    <div class="row">
        <?php 
        foreach ($bemf as $row): ?>
        <div class="col-xs-12 col-md-6 col-lg-3">
            <div class="panel panel-default">
                <center>
                    <div class="card">
                        <img class="card-img-top" src="<?= base_url('assets/img/calon/').$row['foto'] ?>"
                            style="height: 200px;">
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['ketua'].' - '.$row['wakil']; ?></h5>
                            <p class="card-text"><?=$row['organisasi'];?></p>
                        </div>
                        <div class="card-footer">
                            <a href="<?= base_url('user/detailCalon/').$row['id'];?>"
                                class="btn btn-info btn-sm">Detail</a>
                            <a href="<?= base_url('user/pilihCalon/').$row['id'];?>"
                                class="btn btn-primary btn-sm">Edit</a>
                        </div>
                    </div>
                </center>
            </div>
        </div>
        <?php endforeach ?>
    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
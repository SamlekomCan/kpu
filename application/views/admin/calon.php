<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-auto mr-auto">
            <h2 class=""><?= $title ?></h2>
        </div>
        <div class="col-auto ml-3">
            <a class="btn btn-success pull-right" href="<?= base_url('admin/Addcalon'); ?>">
                <span class="glyphicon glyphicon-upload"></span> Tambah Calon</a>
        </div>
    </div>
    <hr>
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
                            <a href="<?= base_url('admin/detailCalon/').$row['id'];?>"
                                class="btn btn-info btn-sm">Detail</a>
                            <a href="<?= base_url('admin/editCalon/').$row['id'];?>"
                                class="btn btn-primary btn-sm">Edit</a>
                            <a href="<?= base_url('admin/hapusCalon/').$row['id'];?>" class="btn btn-danger btn-sm"
                                onclick="return confirm('Are you sure you want to delete <?= $row['ketua'].' - '.$row['wakil'];?>?');">Hapus</a>
                        </div>
                    </div>
                </center>
            </div>
        </div>
        <?php endforeach ?>
    </div>

</div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


</div>
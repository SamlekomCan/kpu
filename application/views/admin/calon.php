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
                    <div class="panel-body">
                        <!-- <img src="<?=$row['foto'] ?>" class="img-responsive" alt=""> -->
                        <b><?php echo $row['nama']; ?></b>
                        <p class="text-mutted"><?=$row['organisasi'];?></p>
                    </div>
                    <div class="panel-footer">
                        <a data-toggle="modal" href="#detail<?=$row['id']; ?>" class="btn btn-info btn-sm">Detail</a>
                        <a href="?p=edit_calon&id=<?=$row['id'];?>" class="btn btn-primary btn-sm">Edit</a>
                        <a href="?p=del_calon&id=<?=$row['id']; ?>&f=<?=$row['foto']; ?>"
                            class="btn btn-danger btn-sm">Hapus</a>
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
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
        <?php foreach ($data as $row): ?>
            <?php if ($row['organisasi'] == 'BEMU'): ?>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="panel panel-default ">
                        <center>
                            <div class="card">
                                <img class="card-img-top" src="<?= base_url('assets/img/calon/') . $row['foto'] ?>"
                                     style="height: 200px;">
                                <div class="card-body">
                                    <h5 class="card-title"><?= $row['ketua'] . ' - ' . $row['wakil']; ?></h5>
                                    <p class="card-text"><?= $row['organisasi']; ?></p>
                                </div>
                                <div class="card-footer">
                                    <a data-toggle="modal" href="#detail<?= $row['id']; ?>" class="btn btn-info btn-sm">
                                        <span class="glyphicon glyphicon-info-sign"></span> Visi dan Misi
                                    </a>
                                    <?php if ($user['status'] != 0): ?>
                                        <a href="#" class="btn btn-info btn-sm" onclick="validate('<?= $row['id']; ?>')"
                                           value="<?php echo $row['id'] ?>"><span class="glyphicon glyphicon-info-sign"></span>
                                            Pilih </a>
                                    <?php endif ?>
                                </div>
                            </div>
                        </center>
                    </div>
                </div>
            <?php endif ?>
        <?php endforeach ?>
    </div>
    <hr>
    <center>
        <h1>Pemilihan Calon BEMF <?= $user['fakultas'] ?></h1>
    </center>
    <br>
    <div class="row">
        <?php foreach ($bemf as $row): ?>
            <?php if ($row['organisasi'] == 'BEMF'): ?>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="panel panel-default">
                        <center>
                            <div class="card">
                                <img class="card-img-top" src="<?= base_url('assets/img/calon/') . $row['foto'] ?>"
                                     style="height: 200px;">
                                <div class="card-body">
                                    <h5 class="card-title"><?= $row['ketua'] . ' - ' . $row['wakil']; ?></h5>
                                    <p class="card-text"><?= $row['organisasi']; ?></p>
                                </div>
                                <div class="card-footer">
                                    <a data-toggle="modal" href="#detail<?= $row['id']; ?>" class="btn btn-info btn-sm">
                                        <span class="glyphicon glyphicon-info-sign"></span> Visi dan Misi
                                    </a>
        <?php if ($user['statusBEMF'] != 0): ?>
                                        <a href="#" class="btn btn-info btn-sm" onclick="validate('<?= $row['id']; ?>')"
                                           value="<?php echo $row['id'] ?>"><span class="glyphicon glyphicon-info-sign"></span>
                                            Pilih </a>
        <?php endif ?>
                                </div>
                            </div>
                        </center>
                    </div>
                </div>
    <?php endif ?>
        <?php endforeach ?>
    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<script src="<?php echo base_url() ?>assets/js/sweetalert.min.js"></script>
<script>
                                function validate(a) {
                                    var id = a;
                                    swal({
                                        title: "YAKIN LU?",
                                        text: "MAU MILIH DIA " + id,
                                        type: "warning",
                                        showCancelButton: true,
                                        confirmButtonColor: "#DD6B55",
                                        confirmButtonText: "MAU, AKU MAU KOK",
                                        closeOnConfirm: false
                                    }, function () {
                                        swal("YAUDAH!", "MAKASIH YAHH.", "success");
                                        $(location).attr('href', '<?php echo base_url() ?>user/pilihBEMU/' + id);
                                    });
                                }
</script>

<!-- BEMU -->
<?php foreach ($data as $row): ?>
    <?php if ($row['organisasi'] == 'BEMU'): ?>
        <!-- Visi dan Misi -->
        <div class="modal" id="detail<?= $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Visi dan Misi</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <table>
                            <tr>
                                <td>Nama Calon</td>
                                <td>&nbsp;</td>
                                <td>:</td>
                                <td>&nbsp;</td>
                                <td><?= $row['ketua'] . ' - ' . $row['wakil']; ?></td>
                            </tr>
                            <tr>
                                <td>Fakultas</td>
                                <td>&nbsp;</td>
                                <td>:</td>
                                <td>&nbsp;</td>
                                <td><?= $row['fakultasketua'] . ' - ' . $row['fakultaswakil']; ?></td>
                            </tr>
                            <tr>
                                <td>Organisasi</td>
                                <td>&nbsp;</td>
                                <td>:</td>
                                <td>&nbsp;</td>
                                <td><?= $row['organisasi']; ?></td>
                            </tr>
                        </table><br>
                        <b>VISI :</b>
                        <div><?= $row['visi']; ?></div>
                        <b>MISI :</b>
                        <div><?= $row['misi']; ?></div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif ?>
<?php endforeach ?>
<!-- END BEMU -->

<!-- BEMF -->
<?php foreach ($bemf as $row): ?>
    <?php if ($row['organisasi'] == 'BEMF'): ?>
        <!-- Visi dan Misi -->
        <div class="modal" id="detail<?= $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Visi dan Misi</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <table>
                            <tr>
                                <td>Nama Calon</td>
                                <td>&nbsp;</td>
                                <td>:</td>
                                <td>&nbsp;</td>
                                <td><?= $row['ketua'] . ' - ' . $row['wakil']; ?></td>
                            </tr>
                            <tr>
                                <td>Fakultas</td>
                                <td>&nbsp;</td>
                                <td>:</td>
                                <td>&nbsp;</td>
                                <td><?= $row['fakultasketua'] . ' - ' . $row['fakultaswakil']; ?></td>
                            </tr>
                            <tr>
                                <td>Organisasi</td>
                                <td>&nbsp;</td>
                                <td>:</td>
                                <td>&nbsp;</td>
                                <td><?= $row['organisasi']; ?></td>
                            </tr>
                        </table><br>
                        <b>VISI :</b>
                        <div><?= $row['visi']; ?></div>
                        <b>MISI :</b>
                        <div><?= $row['misi']; ?></div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif ?>
<?php endforeach ?>
<!-- END BEMF -->
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <hr>
    <div class="row">
        <div class="col-lg-6"><?= $this->session->flashdata('message'); ?>
            Menurutmu siapakah kadidat yang cocok untuk menjadi Ketua Himpunan Mahasiswa <?= $user['prodi'] ?> periode
            2020/2021 ?
            <form method="post" action="<?php echo base_url("user/screeninghimpunan") ?>">

                <div class="form-group row">
                    <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nama" name="nama">
                        <?= form_error('nama', '<small class="text-danger pl-2">', '</small>') ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fakultas" class="col-sm-2 col-form-label">Fakultas</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="fakultas" name="fakultas"
                               value="<?= $user['fakultas'] ?>" readonly>
                               <?= form_error('fakultas', '<small class="text-danger pl-2">', '</small>') ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="prodi" class="col-sm-2 col-form-label">Prodi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="prodi" name="prodi" value="<?= $user['prodi'] ?>"
                               readonly>
                               <?= form_error('prodi', '<small class="text-danger pl-2">', '</small>') ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="angkatan" class="col-sm-2 col-form-label">Angkatan</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="angkatan" name="angkatan">
                        <?= form_error('angkatan', '<small class="text-danger pl-2">', '</small>') ?>
                    </div>
                </div>
                Berikan alasanmu mengapa beliau cocok untuk menjadi Gubernur BEMF USD periode 2020/2021?
                <div class="form-group row">
                    <label for="alasan" class="col-sm-2 col-form-label">Alasan</label>
                    <div class="col-sm-10">
                        <textarea type="text" class="form-control" id="alasan" name="alasan" rows="5"></textarea>
                        <?= form_error('alasan', '<small class="text-danger pl-2">', '</small>') ?>
                    </div>
                </div>
                <div>
                    <a href="<?= base_url('user/screening') ?>" class="btn btn-secondary">Kembali</a>
                    <button type="submit" class="btn btn-primary">Kirim</button>
                </div>
            </form>

        </div>
    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
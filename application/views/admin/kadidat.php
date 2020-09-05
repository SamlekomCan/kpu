<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="card-body">
        <div class="row">
            <div class="col-auto mr-auto">
                <h2 class=""><?= $title ?></h2>
            </div>
            <div class="col-auto ml-3">
                <a href="http://" class="btn btn-success pull-right" data-toggle="modal" data-target="#exampleModal">
                    <span class="glyphicon glyphicon-upload"></span> Tambah Kadidat</a>
            </div>
        </div>
        <hr>
        <?= $this->session->flashdata('message'); ?>
        <div class="table-responsive">
            <table class="table table-bordered" id="tabelku" width="100%">
                <thead>
                    <tr class="text-center">
                        <th>No</th>
                        <th>NIM</th>
                        <th>NAMA</th>
                        <th>NO WA</th>
                        <th>EMAIL</th>
                        <th>FAKULTAS</th>
                        <th>VISI</th>
                        <th>MISI</th>
                        <th>FOTO</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- /.container-fluid -->

<!-- Modal Start -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Import Data Mahasiswa</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="post" action="<?php echo base_url("admin/importMahasiswa") ?>">
                <div class="modal-body">

                    <!-- <input type="file" class="form-control-file" id="file" name="file[]" multiple> -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Modal End -->

</div>
<!-- End of Main Content -->

<script type="text/javascript">
$(document).ready(function() {
    $('#tabelku').dataTable({
        "scrollY": "400px",
        "scrollCollapse": true,
        "paging": true,
        "bAutoWidth": false,
        "bInfo": false,
        "language": {
            "emptyTable": "Data Kosong"
        },
        "lengthMenu": [
            [10, 25, 50, 100, -1],
            [10, 25, 50, 100, "All"]
        ],
    });
});
</script>
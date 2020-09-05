<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="card-body">
        <div class="row">
            <div class="col-auto mr-auto">
                <h2 class=""><?= $title ?></h2>
            </div>
            <div class="col-auto ml-3">
                <a href="http://" class="btn btn-success pull-right" data-toggle="modal" data-target="#exampleModal">
                    <span class="glyphicon glyphicon-upload"></span> Cetak</a>
            </div>
        </div>
        <hr>
        <?= $this->session->flashdata('message'); ?>
        <div class="table-responsive">
            <table class="table table-bordered" id="tabelku" width="100%">
                <thead>
                    <tr class="text-center">
                        <th>No</th>
                        <th>NAMA</th>
                        <th>FAKULTAS</th>
                        <th>PRODI</th>
                        <th>ANGKATAN</th>
                        <th>ALASAN</th>
                        <th>SEBAGAI</th>
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
<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="card-body">
        <div class="row">
            <div class="col-auto mr-auto">
                <h2 class=""><?= $title ?></h2>
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
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($presiden as $row) : ?>
                    <tr>
                        <td><?= $i ?></td>
                        <td><?php echo $row['nama']; ?></td>
                        <td><?php echo $row['fakultas']; ?></td>
                        <td><?php echo $row['prodi']; ?></td>
                        <td><?php echo $row['angkatan']; ?></td>
                        <td><?php echo $row['alasan']; ?></td>
                    </tr>
                    <?php $i++; ?>
                    <?php endforeach; ?>
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
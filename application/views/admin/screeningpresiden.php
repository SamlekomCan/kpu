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
                        <th>HASIL</th>
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
                            <td><?php
                                $sql = "SELECT COUNT(nama) AS nama FROM presiden WHERE nama LIKE '" . $row['nama'] . "'";
                                $jumlah = $this->db->query($sql)->result_array();
                                echo $jumlah[0]['nama'];
                                ?></td>
                        </tr>
                        <?php $i++; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <a href="<?= base_url('admin/screening'); ?>" class="btn btn-secondary btn-user btn-block"> Kembali</a>

    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<script type="text/javascript">
    $(document).ready(function () {
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
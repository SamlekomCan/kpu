<?php
$dataPoints = array();
$presidenn = $this->db->get_where('calon', ['organisasi' => 'BEMU'])->result();

foreach ($presidenn as $row) {
    array_push($dataPoints, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//BEMF
$dataPoints2 = array();
$gubernurr2 = $this->db->get_where('calon', ['fakultasketua' => 'Sains dan Teknologi'], ['organisasi' => 'BEMF'])->result();
foreach ($gubernurr2 as $row) {
    array_push($dataPoints2, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
$dataPoints3 = array();
$gubernurr3 = $this->db->get_where('calon', ['fakultasketua' => 'Keguruan dan Ilmu Pendidikan'], ['organisasi' => 'BEMF'])->result();
foreach ($gubernurr3 as $row) {
    array_push($dataPoints3, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
$dataPoints4 = array();
$gubernurr4 = $this->db->get_where('calon', ['fakultasketua' => 'Psikologi'], ['organisasi' => 'BEMF'])->result();
foreach ($gubernurr4 as $row) {
    array_push($dataPoints4, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
$dataPoints5 = array();
$gubernurr5 = $this->db->get_where('calon', ['fakultasketua' => 'Farmasi'], ['organisasi' => 'BEMF'])->result();
foreach ($gubernurr5 as $row) {
    array_push($dataPoints5, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
$dataPoints6 = array();
$gubernurr6 = $this->db->get_where('calon', ['fakultasketua' => 'Ekonomi'], ['organisasi' => 'BEMF'])->result();
foreach ($gubernurr6 as $row) {
    array_push($dataPoints6, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
$dataPoints7 = array();
$gubernurr7 = $this->db->get_where('calon', ['fakultasketua' => 'Teologi'], ['organisasi' => 'BEMF'])->result();
foreach ($gubernurr7 as $row) {
    array_push($dataPoints7, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//HIMPUNAN FST
$dataPoints8 = array();
$himpunann8 = $this->db->get_where('calon', ['prodi' => 'Informatika'], ['organisasi' => 'HM'])->result();

foreach ($himpunann8 as $row) {
    array_push($dataPoints8, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

$dataPoints9 = array();
$himpunann9 = $this->db->get_where('calon', ['prodi' => 'Teknik Elektro'], ['organisasi' => 'HM'])->result();

foreach ($himpunann9 as $row) {
    array_push($dataPoints9, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

$dataPoints10 = array();
$himpunann10 = $this->db->get_where('calon', ['prodi' => 'Teknik Mesin'], ['organisasi' => 'HM'])->result();

foreach ($himpunann10 as $row) {
    array_push($dataPoints10, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

$dataPoints11 = array();
$himpunann11 = $this->db->get_where('calon', ['prodi' => 'Matematika Murni'], ['organisasi' => 'HM'])->result();

foreach ($himpunann11 as $row) {
    array_push($dataPoints11, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//HIMPUNAN EKONOMI
$dataPoints12 = array();
$himpunann12 = $this->db->get_where('calon', ['prodi' => 'Ekonomi'], ['organisasi' => 'HM'])->result();

foreach ($himpunann12 as $row) {
    array_push($dataPoints12, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

$dataPoints13 = array();
$himpunann13 = $this->db->get_where('calon', ['prodi' => 'Akuntansi'], ['organisasi' => 'HM'])->result();

foreach ($himpunann13 as $row) {
    array_push($dataPoints13, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

$dataPoints14 = array();
$himpunann14 = $this->db->get_where('calon', ['prodi' => 'Manajemen'], ['organisasi' => 'HM'])->result();

foreach ($himpunann14 as $row) {
    array_push($dataPoints14, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//HIMPUNAN SASTRA
$dataPoints15 = array();
$himpunann15 = $this->db->get_where('calon', ['prodi' => 'Sejarah'], ['organisasi' => 'HM'])->result();

foreach ($himpunann15 as $row) {
    array_push($dataPoints15, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

$dataPoints16 = array();
$himpunann16 = $this->db->get_where('calon', ['prodi' => 'Sastra Indonesia'], ['organisasi' => 'HM'])->result();

foreach ($himpunann16 as $row) {
    array_push($dataPoints16, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

$dataPoints17 = array();
$himpunann17 = $this->db->get_where('calon', ['prodi' => 'Sastra Inggris'], ['organisasi' => 'HM'])->result();

foreach ($himpunann17 as $row) {
    array_push($dataPoints17, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
// print_r($dataPoints);die;
?>

<script>
    window.onload = function () {

        var chart = new CanvasJS.Chart("Presiden", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Presiden"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        //BEMF
        var chart = new CanvasJS.Chart("bemFST", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon BEM FST"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints2, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("bemPsikologi", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon BEM Psikologi"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints4, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("bemEkonomi", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon BEM Ekonomi"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints6, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("bemFKIP", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon BEM FKIP"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints3, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("bemTeologi", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon BEM Teologi"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints7, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("bemFarmasi", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon BEM Farmasi"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints5, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        //HIMPUNAN
        var chart = new CanvasJS.Chart("Informatika", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Informatika"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints8, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("TE", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Teknik Elektro"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints9, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("TM", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Teknik Mesin"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints10, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("MM", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Matematika Murni"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints11, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();
    }
</script>


<!-- Begin Page Content -->
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<div class="container">
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>


    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#Presiden" role="tab" aria-controls="Presiden" aria-selected="false">Presiden</a>
        </li>
        <!-- GUBERNUR -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" aria-selected="false">Gubernur</a>
            <div class="dropdown-menu">
        <a class="dropdown-item" id="bemFST-tab" data-toggle="tab" role="tab" aria-controls="bemFST" href="#bemFST">Fakultas Sains dan Teknologi</a>
        <a class="dropdown-item" id="bemFarmasi-tab" data-toggle="tab" role="tab" aria-controls="bemFarmasi" href="#bemFarmasi">Fakultas Farmasi</a>
        <a class="dropdown-item" id="bemPsikologi-tab" data-toggle="tab" role="tab" aria-controls="bemPsikologi" href="#bemPsikologi">Fakultas Psikologi</a>
        <a class="dropdown-item" id="bemEkonomi-tab" data-toggle="tab" role="tab" aria-controls="bemEkonomi" href="#bemEkonomi">Fakultas Ekonomi</a>
        <a class="dropdown-item" id="bemFKIP-tab" data-toggle="tab" role="tab" aria-controls="bemFKIP" href="#bemFKIP">Fakultas Keguruan dan Ilmu Pendidikan</a>
        <a class="dropdown-item" id="bemTeologi-tab" data-toggle="tab" role="tab" aria-controls="bemTeologi" href="#bemTeologi">Fakultas Teologi</a>
        </div>
        </li>
        <!-- HM -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"  aria-selected="false">HM FST</a>
            <div class="dropdown-menu">
        <a class="dropdown-item" id="Informatika-tab" data-toggle="tab" role="tab" aria-controls="Informatika" href="#Informatika">Informatika</a>
        <a class="dropdown-item" id="TE-tab" data-toggle="tab" role="tab" aria-controls="TE" href="#TE">Teknik Elektro</a>
        <a class="dropdown-item" id="TM-tab" data-toggle="tab" role="tab" aria-controls="TM" href="#TM">Teknik Mesin</a>
        <a class="dropdown-item" id="MM-tab" data-toggle="tab" role="tab" aria-controls="MM" href="#MM">Matematika Murni</a>
        </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" aria-selected="false">HM FKIP</a>
            <div class="dropdown-menu">
        <a class="dropdown-item" id="Himapensi-tab" data-toggle="tab" role="tab" aria-controls="Himapensi" href="#Himapensi">Pend.Akuntansi & Pend.Ekonomi</a>
        <a class="dropdown-item" id="PMAT-tab" data-toggle="tab" role="tab" aria-controls="PMAT" href="#PMAT">Pendidikan Matematika</a>
        <a class="dropdown-item" href="#">Pendidikan Biologi</a>
        <a class="dropdown-item" href="#">Pendidikan Fisika</a>
        <a class="dropdown-item" href="#">Ilmu Pendidikan Agama Katolik</a>
        <a class="dropdown-item" href="#">Pendidikan Sejarah</a>
        <a class="dropdown-item" href="#">Pendidikan Bahasa Inggris</a>
        <a class="dropdown-item" href="#">Pendidikan Bahasa dan Sastra Indonesia</a>
        <a class="dropdown-item" href="#">Pendidikan Guru Sekolah Dasar</a>
        </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" aria-selected="false">HM SASTRA</a>
            <div class="dropdown-menu">
        <a class="dropdown-item" id="Sejarah-tab" data-toggle="tab" role="tab" aria-controls="Sejarah" href="#Sejarah">Sejarah</a>
        <a class="dropdown-item" id="Sasing-tab" data-toggle="tab" role="tab" aria-controls="Sasing" href="#Sasing">Sastra Inggris</a>
        <a class="dropdown-item" href="#">Sastra Indonesia</a></div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" aria-selected="false">HM EKONOMI</a>
            <div class="dropdown-menu">
        <a class="dropdown-item" id="Ekonomi-tab" data-toggle="tab" role="tab" aria-controls="Ekonomi" href="#Ekonomi">Ekonomi</a>
        <a class="dropdown-item" id="Akuntansi-tab" data-toggle="tab" role="tab" aria-controls="Akuntansi" href="#Akuntansi">Akuntansi</a>
        <a class="dropdown-item" href="#">Manajemen</a></div>
        </li>
    </ul>
    <div class="tab" id="myTabContent">
        <div class="tab-pane fade show active" id="Presiden" role="tabpanel" aria-labelledby="Presiden-tab">
            <div id="Presiden"></div>
        </div>
        <div class="tab-pane fade" id="bemFST" role="tabpanel" aria-labelledby="bemFST-tab">
            <div id="bemFST"></div>
        </div>
        <div class="tab-pane fade" id="bemFarmasi" role="tabpanel" aria-labelledby="bemFarmasi-tab">
            <div id="bemFarmasi"></div>
        </div>
        <div class="tab-pane fade" id="bemPsikologi" role="tabpanel" aria-labelledby="bemPsikologi-tab">
            <div id="bemPsikologi"></div>
        </div>
        <div class="tab-pane fade" id="bemEkonomi" role="tabpanel" aria-labelledby="bemEkonomi-tab">
            <div id="bemEkonomi"></div>
        </div>
        <div class="tab-pane fade" id="bemFKIP" role="tabpanel" aria-labelledby="bemFKIP-tab">
            <div id="bemFKIP"></div>
        </div>
        <div class="tab-pane fade" id="Informatika" role="tabpanel" aria-labelledby="Informatika-tab">
            <div id="Informatika"></div>
        </div>
        <div class="tab-pane fade" id="TE" role="tabpanel" aria-labelledby="TE-tab">
            <div id="TE"></div>
        </div>
        <div class="tab-pane fade" id="TM" role="tabpanel" aria-labelledby="TM-tab">
            <div id="TM"></div>
        </div>
        <div class="tab-pane fade" id="MM" role="tabpanel" aria-labelledby="MM-tab">
            <div id="MM"></div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
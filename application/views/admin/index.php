<?php
//PRESIDEN
$dataPoints = array();
$presidenn = $this->db->get_where('calon', ['organisasi' => 'BEMU'])->result();
foreach ($presidenn as $row) {
    array_push($dataPoints, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
//BEMF
//Sains dan Teknologi
$dataPoints2 = array();
$gubernurr2 = $this->db->get_where('calon', ['fakultasketua' => 'Sains dan Teknologi', 'organisasi' => 'BEMF'])->result();
foreach ($gubernurr2 as $row) {
    array_push($dataPoints2, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
//Keguruan dan Ilmu Pendidikan
$dataPoints3 = array();
$gubernurr3 = $this->db->get_where('calon', ['fakultasketua' => 'Keguruan dan Ilmu Pendidikan', 'organisasi' => 'BEMF'])->result();
foreach ($gubernurr3 as $row) {
    array_push($dataPoints3, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
//Psikologi
$dataPoints4 = array();
$gubernurr4 = $this->db->get_where('calon', ['fakultasketua' => 'Psikologi', 'organisasi' => 'BEMF'])->result();
foreach ($gubernurr4 as $row) {
    array_push($dataPoints4, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
// Farmasi
$dataPoints5 = array();
$gubernurr5 = $this->db->get_where('calon', ['fakultasketua' => 'Farmasi', 'organisasi' => 'BEMF'])->result();
foreach ($gubernurr5 as $row) {
    array_push($dataPoints5, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
// Ekonomi
$dataPoints6 = array();
$gubernurr6 = $this->db->get_where('calon', ['fakultasketua' => 'Ekonomi', 'organisasi' => 'BEMF'])->result();
foreach ($gubernurr6 as $row) {
    array_push($dataPoints6, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
// Teologi
$dataPoints7 = array();
$gubernurr7 = $this->db->get_where('calon', ['fakultasketua' => 'Teologi', 'organisasi' => 'BEMF'])->result();
foreach ($gubernurr7 as $row) {
    array_push($dataPoints7, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//HIMPUNAN FST
//Informatika
$dataPoints8 = array();
$himpunann8 = $this->db->get_where('calon', ['prodi' => 'Informatika', 'organisasi' => 'HM'])->result();
foreach ($himpunann8 as $row) {
    array_push($dataPoints8, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
//Teknik Elektro
$dataPoints9 = array();
$himpunann9 = $this->db->get_where('calon', ['prodi' => 'Teknik Elektro', 'organisasi' => 'HM'])->result();

foreach ($himpunann9 as $row) {
    array_push($dataPoints9, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
//Teknik Mesin
$dataPoints10 = array();
$himpunann10 = $this->db->get_where('calon', ['prodi' => 'Teknik Mesin', 'organisasi' => 'HM'])->result();

foreach ($himpunann10 as $row) {
    array_push($dataPoints10, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
//Matematika Murni
$dataPoints11 = array();
$himpunann11 = $this->db->get_where('calon', ['prodi' => 'Matematika Murni', 'organisasi' => 'HM'])->result();

foreach ($himpunann11 as $row) {
    array_push($dataPoints11, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//HIMPUNAN EKONOMI
//Ekonomi
$dataPoints12 = array();
$himpunann12 = $this->db->get_where('calon', ['prodi' => 'Ekonomi', 'organisasi' => 'HM'])->result();

foreach ($himpunann12 as $row) {
    array_push($dataPoints12, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
//Akuntansi
$dataPoints13 = array();
$himpunann13 = $this->db->get_where('calon', ['prodi' => 'Akuntansi', 'organisasi' => 'HM'])->result();

foreach ($himpunann13 as $row) {
    array_push($dataPoints13, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
// Manajemen
$dataPoints14 = array();
$himpunann14 = $this->db->get_where('calon', ['prodi' => 'Manajemen', 'organisasi' => 'HM'])->result();

foreach ($himpunann14 as $row) {
    array_push($dataPoints14, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//HIMPUNAN SASTRA
// Sejarah
$dataPoints15 = array();
$himpunann15 = $this->db->get_where('calon', ['prodi' => 'Sejarah', 'organisasi' => 'HM'])->result();

foreach ($himpunann15 as $row) {
    array_push($dataPoints15, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
// Sastra Indonesia
$dataPoints16 = array();
$himpunann16 = $this->db->get_where('calon', ['prodi' => 'Sastra Indonesia', 'organisasi' => 'HM'])->result();

foreach ($himpunann16 as $row) {
    array_push($dataPoints16, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}
// Sastra Inggris
$dataPoints17 = array();
$himpunann17 = $this->db->get_where('calon', ['prodi' => 'Sastra Inggris', 'organisasi' => 'HM'])->result();

foreach ($himpunann17 as $row) {
    array_push($dataPoints17, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//HIMPUNAN FKIP
// HIMAPENSI
$dataPoints18 = array();
$himpunann18 = $this->db->get_where('calon', ['prodi' => 'HIMAPENSI', 'organisasi' => 'HM'])->result();

foreach ($himpunann18 as $row) {
    array_push($dataPoints18, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

// PMAT
$dataPoints19 = array();
$himpunann19 = $this->db->get_where('calon', ['prodi' => 'Pendidikan Matematika', 'organisasi' => 'HM'])->result();

foreach ($himpunann19 as $row) {
    array_push($dataPoints19, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//PBIO
$dataPoints19 = array();
$himpunann19 = $this->db->get_where('calon', ['prodi' => 'Pendidikan Biologi', 'organisasi' => 'HM'])->result();

foreach ($himpunann19 as $row) {
    array_push($dataPoints19, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//PFIS
$dataPoints20 = array();
$himpunann20 = $this->db->get_where('calon', ['prodi' => 'Pendidikan Fisika', 'organisasi' => 'HM'])->result();

foreach ($himpunann20 as $row) {
    array_push($dataPoints20, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//HIMKA
$dataPoints21 = array();
$himpunann21 = $this->db->get_where('calon', ['prodi' => 'HIMKA', 'organisasi' => 'HM'])->result();

foreach ($himpunann21 as $row) {
    array_push($dataPoints21, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//PSEJ
$dataPoints22 = array();
$himpunann22 = $this->db->get_where('calon', ['prodi' => 'Pendidikan Sejarah', 'organisasi' => 'HM'])->result();

foreach ($himpunann22 as $row) {
    array_push($dataPoints22, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//PBI
$dataPoints23 = array();
$himpunann23 = $this->db->get_where('calon', ['prodi' => 'Pendidikan Bahasa Indonesia', 'organisasi' => 'HM'])->result();

foreach ($himpunann23 as $row) {
    array_push($dataPoints23, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//PBSI
$dataPoints24 = array();
$himpunann24 = $this->db->get_where('calon', ['prodi' => 'Pendidikan Bahasa dan Sastra Indonesia', 'organisasi' => 'HM'])->result();

foreach ($himpunann24 as $row) {
    array_push($dataPoints24, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

//PGSD
$dataPoints25 = array();
$himpunann25 = $this->db->get_where('calon', ['prodi' => 'Pendidikan Guru Sekolah Dasar', 'organisasi' => 'HM'])->result();

foreach ($himpunann25 as $row) {
    array_push($dataPoints25, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
}

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

        //HIMPUNAN FST
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

        //HIMPUNAN EKONOMI
        var chart = new CanvasJS.Chart("Manajemen", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Manajemen"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints14, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("Akuntansi", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Akuntansi"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints13, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("Ekonomi", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Ekonomi"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints12, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        //HIMPUNAN SASTRA
        var chart = new CanvasJS.Chart("Sejarah", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Sejarah"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints15, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("Sasindo", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Sasindo"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints16, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        var chart = new CanvasJS.Chart("Sasing", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Sasing"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints17, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        //HIMPUNAN FKIP
        // HIMAPENSI
        var chart = new CanvasJS.Chart("HIMAPENSI", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon HIMAPENSI"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints18, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        // PMAT
        var chart = new CanvasJS.Chart("PMAT", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Pendidikan Matematika"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints19, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        // PBIO
        var chart = new CanvasJS.Chart("PBIO", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Pendidikan Biologi"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints20, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        // PFIS
        var chart = new CanvasJS.Chart("PFIS", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Pendidikan Fisika"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints21, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        // HIMKA
        var chart = new CanvasJS.Chart("HIMKA", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon HIMKA"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints22, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        // PSEJ
        var chart = new CanvasJS.Chart("PSEJ", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Pendidikan Sejarah"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints23, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        // PBI
        var chart = new CanvasJS.Chart("PBI", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Pendidikan Bahasa Indonesia"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints24, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        // PBSI
        var chart = new CanvasJS.Chart("PBSI", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Pendidikan Bahasa dan Sastra Indonesia"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints25, JSON_NUMERIC_CHECK); ?>
                }]
        });
        chart.render();

        //PGSD
        var chart = new CanvasJS.Chart("PGSD", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light1", // "light1", "light2", "dark1", "dark2"
            title: {
                text: "Pemilihan Calon Pendidikan Guru Sekolah Dasar"
            },
            data: [{
                    type: "column", //change type to bar, line, area, pie, etc  
                    yValueFormatString: "#,##0\"%\"",
                    indexLabel: "{y}",
                    indexLabelPlacement: "inside",
                    indexLabelFontColor: "white",
                    dataPoints: <?php echo json_encode($dataPoints25, JSON_NUMERIC_CHECK); ?>
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
                <a class="dropdown-item" id="bemPsikologi1-tab" data-toggle="tab" role="tab" aria-controls="bemPsikologi1" href="#bemPsikologi1">Fakultas Psikologi</a>
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
                <a class="dropdown-item" id="Himapensi-tab" data-toggle="tab" role="tab" aria-controls="Himapensi" href="#Himapensi">Pend.Ekonomi & Pend.Akuntansi</a>
                <a class="dropdown-item" id="PMAT-tab" data-toggle="tab" role="tab" aria-controls="PMAT" href="#PMAT">Pendidikan Matematika</a>
                <a class="dropdown-item" id="PBIO-tab" data-toggle="tab" role="tab" aria-controls="PBIO" href="#PBIO">Pendidikan Biologi</a>
                <a class="dropdown-item" id="PFIS-tab" data-toggle="tab" role="tab" aria-controls="PFIS" href="#PFIS">Pendidikan Fisika</a>
                <a class="dropdown-item" id="HIMKA-tab" data-toggle="tab" role="tab" aria-controls="HIMKA" href="#HIMKA">Ilmu Pendidikan Agama Katolik</a>
                <a class="dropdown-item" id="PSEJ-tab" data-toggle="tab" role="tab" aria-controls="PSEJ" href="#PSEJ">Pendidikan Sejarah</a>
                <a class="dropdown-item" id="PBI-tab" data-toggle="tab" role="tab" aria-controls="PBI" href="#PBI">Pendidikan Bahasa Inggris</a>
                <a class="dropdown-item" id="PBSI-tab" data-toggle="tab" role="tab" aria-controls="PBSI" href="#PBSI">Pendidikan Bahasa dan Sastra Indonesia</a>
                <a class="dropdown-item" id="PGSD-tab" data-toggle="tab" role="tab" aria-controls="PGSD" href="#PGSD">Pendidikan Guru Sekolah Dasar</a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" aria-selected="false">HM SASTRA</a>
            <div class="dropdown-menu">
                <a class="dropdown-item" id="Sejarah-tab" data-toggle="tab" role="tab" aria-controls="Sejarah" href="#Sejarah">Sejarah</a>
                <a class="dropdown-item" id="Sasing-tab" data-toggle="tab" role="tab" aria-controls="Sasing" href="#Sasing">Sastra Inggris</a>
                <a class="dropdown-item" id="Sasindo-tab" data-toggle="tab" role="tab" aria-controls="Sasindo" href="#Sasindo">Sastra Indonesia</a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" aria-selected="false">HM EKONOMI</a>
            <div class="dropdown-menu">
                <a class="dropdown-item" id="Ekonomi1-tab" data-toggle="tab" role="tab" aria-controls="Ekonomi1" href="#Ekonomi1">Ekonomi</a>
                <a class="dropdown-item" id="Akuntansi-tab" data-toggle="tab" role="tab" aria-controls="Akuntansi" href="#Akuntansi">Akuntansi</a>
                <a class="dropdown-item" id="Manajemen-tab" data-toggle="tab" role="tab" aria-controls="Manajemen" href="#Manajemen">Manajemen</a>
            </div>
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
        <div class="tab-pane fade" id="bemPsikologi1" role="tabpanel" aria-labelledby="bemPsikologi1-tab">
            <div id="bemPsikologi"></div>
        </div>
        <div class="tab-pane fade" id="bemEkonomi" role="tabpanel" aria-labelledby="bemEkonomi-tab">
            <div id="bemEkonomi"></div>
        </div>
        <div class="tab-pane fade" id="bemFKIP" role="tabpanel" aria-labelledby="bemFKIP-tab">
            <div id="bemFKIP"></div>
        </div>
        <div class="tab-pane fade" id="bemTeologi" role="tabpanel" aria-labelledby="bemTeologi-tab">
            <div id="bemTeologi"></div>
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
        <div class="tab-pane fade" id="Himapensi" role="tabpanel" aria-labelledby="Himapensi-tab">
            <div id="HIMAPENSI"></div>
        </div>
        <div class="tab-pane fade" id="PMAT" role="tabpanel" aria-labelledby="PMAT-tab">
            <div id="PMAT"></div>
        </div>
        <div class="tab-pane fade" id="PBIO" role="tabpanel" aria-labelledby="PBIO-tab">
            <div id="PBIO"></div>
        </div>
        <div class="tab-pane fade" id="PFIS" role="tabpanel" aria-labelledby="PFIS-tab">
            <div id="PFIS"></div>
        </div>
        <div class="tab-pane fade" id="HIMKA" role="tabpanel" aria-labelledby="HIMKA-tab">
            <div id="HIMKA"></div>
        </div>
        <div class="tab-pane fade" id="PSEJ" role="tabpanel" aria-labelledby="PSEJ-tab">
            <div id="PSEJ"></div>
        </div>
        <div class="tab-pane fade" id="PBI" role="tabpanel" aria-labelledby="PBI-tab">
            <div id="PBI"></div>
        </div>
        <div class="tab-pane fade" id="PBSI" role="tabpanel" aria-labelledby="PBSI-tab">
            <div id="PBSI"></div>
        </div>
        <div class="tab-pane fade" id="PGSD" role="tabpanel" aria-labelledby="PGSD-tab">
            <div id="PGSD"></div>
        </div>
        <div class="tab-pane fade" id="Sejarah" role="tabpanel" aria-labelledby="Sejarah-tab">
            <div id="Sejarah"></div>
        </div>
        <div class="tab-pane fade" id="Sasing" role="tabpanel" aria-labelledby="Sasing-tab">
            <div id="Sasing"></div>
        </div>
        <div class="tab-pane fade" id="Sasindo" role="tabpanel" aria-labelledby="Sasindo-tab">
            <div id="Sasindo"></div>
        </div>
        <div class="tab-pane fade" id="Ekonomi1" role="tabpanel" aria-labelledby="Ekonomi1-tab">
            <div id="Ekonomi"></div>
        </div>
        <div class="tab-pane fade" id="Akuntansi" role="tabpanel" aria-labelledby="Akuntansi-tab">
            <div id="Akuntansi"></div>
        </div>
        <div class="tab-pane fade" id="Manajemen" role="tabpanel" aria-labelledby="Manajemen-tab">
            <div id="Manajemen"></div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
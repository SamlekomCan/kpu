<?php
//PRESIDEN
$dataPoints = array();
$presidenn = $this->db->get_where('calon', ['organisasi' => 'BEMU'])->result();
foreach ($presidenn as $row) {
    array_push($dataPoints, array("label" => ($row->ketua . ' - ' . $row->wakil), "y" => $row->hasil));
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
    }
</script>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<div class="container">
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="content">
    <div id="Presiden"></div>
    </div>
</div>
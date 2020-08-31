
<?php 
    $dataPoints = array();
    foreach($bar as $row){
        array_push($dataPoints, array("label"=> $row->ketua, "y"=> $row->hasil));
    } 
    // print_r($dataPoints);die;
?>

<script>
window.onload = function () {
 
var chart = new CanvasJS.Chart("chartContainer", {
    animationEnabled: true,
    exportEnabled: true,
    theme: "light2", // "light1", "light2", "dark1", "dark2"
    title:{
        text: "Pemilihan Calon"
    },
    data: [{
        type: "column", //change type to bar, line, area, pie, etc  
        dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
    }]
});
chart.render();
 
}
</script>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <!-- Area Chart -->
    
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<?php 
    $dataPoints = array();
    foreach($bar as $row){
        array_push($dataPoints, array("label"=> ($row->ketua.' - '.$row->wakil), "y"=> $row->hasil));
    } 

    $dataPoints2 = array();
    foreach($bar as $row){
        array_push($dataPoints2, array("label"=> ($row->ketua.' - '.$row->wakil), "y"=> $row->hasil));
    } 

    $dataPoints3 = array();
    foreach($bar as $row){
        array_push($dataPoints3, array("label"=> ($row->ketua.' - '.$row->wakil), "y"=> $row->hasil));
    } 
    // print_r($dataPoints);die;
?>

<script>
window.onload = function() {

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

    var chart = new CanvasJS.Chart("Gubernur", {
        animationEnabled: true,
        exportEnabled: true,
        theme: "light1", // "light1", "light2", "dark1", "dark2"
        title: {
            text: "Pemilihan Calon Gubernur"
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

    var chart = new CanvasJS.Chart("HM", {
        animationEnabled: true,
        exportEnabled: true,
        theme: "light1", // "light1", "light2", "dark1", "dark2"
        title: {
            text: "Pemilihan Calon HM"
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
}
</script>


<!-- Begin Page Content -->
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<div class="container">
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>


    <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Presiden</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Gubernur</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">HM</a>
  </li>
</ul>
<div class="tab" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
  <div id="Presiden"></div>
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
    <div id="Gubernur"></div>
  </div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
    <div id="HM"></div>
  </div>
</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
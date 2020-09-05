<?php 
    $dataPoints = array();
    foreach($bar as $row){
        array_push($dataPoints, array("label"=> ($row->ketua.' - '.$row->wakil), "y"=> $row->hasil));
    } 
    // print_r($dataPoints);die;
?>

<script>
window.onload = function() {

    var chart = new CanvasJS.Chart("Presiden", {
        animationEnabled: true,
        exportEnabled: true,
        theme: "light2", // "light1", "light2", "dark1", "dark2"
        title: {
            text: "Pemilihan Calon Presiden"
        },
        data: [{
            type: "column", //change type to bar, line, area, pie, etc  
            dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
        }]
    });
    chart.render();

}
</script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<!-- Begin Page Content -->
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>


    <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
  <div id="Presiden" style="height: 370px; width: 100%;"></div>
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
    <div id="Presiden" style="height: 370px; width: 100%;"></div>
  </div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
    <div id="Presiden" style="height: 370px; width: 100%;"></div>
  </div>
</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
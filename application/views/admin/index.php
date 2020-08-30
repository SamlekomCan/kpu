<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <!-- Area Chart -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Area Chart</h6>
        </div>
        <div class="card-body">
            <div class="chart-area">
                <canvas id="chart"></canvas>
            </div>
            <hr>
        </div>
    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


<!-- collumn chart -->
<script>
var chart = echarts.init(document.getElementById('chart'));
window.onresize = chart.resize
option = {
    tooltip: {
        trigger: 'item'
    },
    toolbox: {
        show: true,
        feature: {
            saveAsImage: {
                show: true
            }
        }
    },

    calculable: true,
    grid: {
        borderWidth: 0,
        y: 35,
        y2: 35,
        x: 30,
        x2: 30
    },
    xAxis: [{
        type: 'category',
        show: true,
        <
        ?
        php $hasil = laporan(); ? >
        data : [ < ? php foreach($hasil as $row) : echo "'".$row['nama'].
            "',";endforeach; ? >
        ]
    }],

    yAxis: [{
        type: 'value',
        show: true
    }],
    series: [{
        name: '',
        type: 'bar',
        itemStyle: {
            normal: {
                color: function(params) {
                    // build a color map as your need.
                    var colorList = [
                        '#27ae60', '#2980b9', '#8e44ad', '#2c3e50',
                        '#d35400', '#c0392b', '#bdc3c7', '#7f8c8d'
                    ];
                    return colorList[params.dataIndex]
                },
                label: {
                    show: true,
                    position: 'top',
                    formatter: '{b}\n{c}'
                }
            }
        },
        data: [ < ? php foreach($hasil as $row) : echo "'".$row['hasil'].
            "',";endforeach; ? >
        ],
    }]
};

chart.setOption(option);
</script>
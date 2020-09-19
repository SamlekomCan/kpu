</style>
<div class="container">
    <!-- Outer Row -->

    <!-- Logo -->

    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class = "text-center">
                <br>
        <a class = "card-body p-10" href="http://www.usd.ac.id" target="_blank">
                    <img style="height: 70px"  alt="USD" src="<?= base_url('assets/') ?>img/logoUSD.png">
                <a class = "card-body p-10" href="http://www.usd.ac.id/dpmu " target="_blank">
                    <img style="height: 70px;" alt="DPMU" src="<?= base_url('assets/') ?>img/logoDPMU.png">
                <a class = "card-body p-10" href="http://www.instagram.com/kpuusd" target="_blank">
                    <img style="height: 70px;" alt="KPU" src="<?= base_url('assets/') ?>img/logoKPU.png">
        </a>
      
</div>
</div>

<div class ="col-lg-5">
    <div class = "text-center">
        <br>
        <h1 class = "h4 text-shadow text-white">KOMISI PEMILIHAN UMUM</h1>
        <h1 class = "h4 text-shadow text-white">UNIVERSITAS SANATA DHARMA</h1>

        

            <div class="card o-hidden border-0 shadow-lg p-3 mb-5 bg-white rounded my-5 ">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Login</h1>
                                </div>

                                <?= $this->session->flashdata('message'); ?>
                                <form class="user" method="POST" action="<?= base_url('auth'); ?>">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="username"
                                               placeholder="Username" name="username" value="<?= set_value('username') ?>">
                                               <?= form_error('username', '<small class="text-danger pl-3">', '</small>') ?>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="password"
                                               placeholder="Password" name="password">
                                               <?= form_error('password', '<small class="text-danger pl-3">', '</small>') ?>
                                    </div>

                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Login
                                    </button>

                                </form>
                                <hr>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
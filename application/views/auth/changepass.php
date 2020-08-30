<div class="container">
    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-lg-5">

            <div class="card o-hidden border-0 shadow-lg my-5 ">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Change your password?</h1>
                                    <h5><?= $this->session->userdata('reset_email') ?></h5>
                                </div>

                                <?= $this->session->flashdata('message'); ?>

                                <form class="auth/forgetPass" method="POST"
                                    action="<?= base_url('auth/changePassword'); ?>">
                                    <div class="form-group">
                                        <label for="new_password1">New Password</label>
                                        <input type="password" class="form-control" id="password1" name="password1">
                                        <?= form_error('password1', '<small class="text-danger pl-3">', '</small>') ?>
                                    </div>
                                    <div class="form-group">
                                        <label for="new_password2">Repeat Password</label>
                                        <input type="password" class="form-control" id="password2" name="password2">
                                    </div>

                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Reset Password
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
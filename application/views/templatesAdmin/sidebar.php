<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('admin') ?>">
        <div class="sidebar-brand-text mx-3">ADMIN KPU <sup></sup></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Hasil Pemilihan</span></a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar" style="">
          <div class="bg-white py-9 collapse-inner rounded">

          <div class="collapse-item" >
            <div class="btn-group">
            <a  href="<?= base_url('admin/chartPresiden') ?>">
            Presiden Univ
            </a>
             </div>
             </div>
             <hr class="collapse-divider">
            <h6 class="collapse-header">BEM:</h6>
        
            <!--<a class="collapse-item active" href="#" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapse2">
            Buttons</a> collapse-item -->
            
            <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            FST
            </button>
           <!--  <div class="dropdown-menu ">
             <a class="dropdown-item" href="#">Action</a>
             <a class="dropdown-item" href="#">Another action</a>
             </div> -->
             </div>
            </div>

            <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary">
            Fakultas Farmasi
            </button>
             </div>
             </div>

             <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary ">
            Fakultas Psikologi
            </button>
             </div>
             </div>

             <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary">
            Fakultas Ekonomi
            </button>
             </div>
             </div>
             
             <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary">
            FKIP
            </button>
             </div>
             </div>
             
             <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary">
            Fakultas Teologi
            </button>
             </div>
             </div>
             <hr class="collapse-divider">
            <h7 class="collapse-header">HIMPUNAN MAHASISWA:</h7>
            <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            FST
            </button>
             <div class="dropdown-menu ">
             <a class="dropdown-item" href="#">Informatika</a>
             <a class="dropdown-item" href="#">Teknik Elektro</a>
             <a class="dropdown-item" href="#">Teknik Mesin</a>
             <a class="dropdown-item" href="#">Matematika Murni</a>
             </div>
             </div>
            </div>

            <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            FKIP
            </button>
             <div class="dropdown-menu ">
        
             <a class="dropdown-item" href="#">Pend.Ekonomi & Pend.Akuntansi</a>
                <a class="dropdown-item" href="#">Pendidikan Matematika</a>
                <a class="dropdown-item" href="#">Pendidikan Biologi</a>
                <a class="dropdown-item" href="#">Pendidikan Fisika</a>
                <a class="dropdown-item" href="#">Ilmu Pendidikan Agama Katolik</a>
                <a class="dropdown-item" href="#">Pendidikan Sejarah</a>
                <a class="dropdown-item" href="#">Pendidikan Bahasa Inggris</a>
                <a class="dropdown-item" href="#">Pendidikan Bahasa dan Sastra Indonesia</a>
                <a class="dropdown-item" href="#">Pendidikan Guru Sekolah Dasar</a>
             </div>
             </div>
            </div>

            <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            SASTRA
            </button>
             <div class="dropdown-menu ">
             <a class="dropdown-item" href="#">Sejarah</a>
             <a class="dropdown-item" href="#">Sastra Inggris</a>
             <a class="dropdown-item" href="#">Sastra Indonesia</a>
             </div>
             </div>
            </div>

            <div class="collapse-item" >
            <div class="btn-group dropright">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            EKONOMI 
            </button>
             <div class="dropdown-menu ">
             <a class="dropdown-item" href="#">Ekonomi</a>
             <a class="dropdown-item" href="#">Akuntansi</a>
             <a class="dropdown-item" href="#">Manajemen</a>
             </div>
             </div>
            </div>

            <!--<a class="collapse-item" href="cards.html">Cards</a> -->
          </div>
        </div>
    </li>
   
    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/user') ?>">
            <i class="fas fa-fw fa-user"></i>
            <span>Mahasiswa</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/admin') ?>">
            <i class="fas fa-fw fa-users"></i>
            <span>Admin</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/kadidat') ?>">
            <i class="fas fa-fw fa-users"></i>
            <span>Kandidat Terpilih</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/screening') ?>">
            <i class="fas fa-fw fa-users"></i>
            <span>Screening</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/calon') ?>">
            <i class="fas fa-fw fa-users"></i>
            <span>Calon</span>
        </a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->
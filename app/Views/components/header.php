<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

<div class="d-flex align-items-center justify-content-between">
  <a href="index.html" class="logo d-flex align-items-center">
    <img src="<?= base_url()?>NiceAdmin/assets/img/logo.png" alt="">
    <span class="d-none d-lg-block">Toko Bagas</span>
  </a>
  <i class="bi bi-list toggle-sidebar-btn"></i>
</div><!-- End Logo -->

<div class="search-bar">
  <form class="search-form d-flex align-items-center" method="POST" action="#">
    <input type="text" name="query" placeholder="Search" title="Enter search keyword">
    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
  </form>
</div><!-- End Search Bar -->

<nav class="header-nav ms-auto">
  <ul class="d-flex align-items-center">

    <li class="nav-item d-block d-lg-none">
      <a class="nav-link nav-icon search-bar-toggle " href="#">
        <i class="bi bi-search"></i>
      </a>
    </li><!-- End Search Icon-->

    <!-- Notifikasi dan pesan di sini (tidak perlu diubah) -->

    <li class="nav-item dropdown pe-3">
      <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
        <img src="<?= base_url()?>NiceAdmin/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
        <span class="d-none d-md-block dropdown-toggle ps-2"><?= session()->get('username'); ?> (<?= session()->get('role'); ?>)</span>
      </a>
      <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
        <li class="dropdown-header">
          <h6><?= session()->get('username'); ?></h6>
          <span><?= session()->get('role'); ?></span>
        </li>
        <li><hr class="dropdown-divider"></li>
        <li>
          <a class="dropdown-item d-flex align-items-center" href="logout">
            <i class="bi bi-box-arrow-right"></i>
            <span>Sign Out</span>
          </a>
        </li>
      </ul>
    </li><!-- End Profile Nav -->

  </ul>
</nav><!-- End Icons Navigation -->

</header><!-- End Header -->

<!-- ✅ Tambahan: Pop-up Diskon Hari Ini (di luar <header>) -->
<?php if (session()->has('diskon_nominal')): ?>
  <div id="diskonAlert"
       class="alert alert-success alert-dismissible fade show d-flex align-items-center justify-content-between shadow rounded-pill px-5 py-3"
       role="alert"
       style="position: fixed; top: 60px; left: 60%; transform: translateX(-50%); z-index: 9999; font-size: 18px; min-width: 400px; max-width: 60%;">
    
    <div class="me-3">
      🎉 Diskon Hari Ini: <strong>Rp <?= number_format(session('diskon_nominal'), 0, ',', '.') ?></strong>
    </div>

    <!-- Tombol close Bootstrap -->
    <button type="button" class="btn-close ms-auto" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
<?php endif; ?>



<script>
  setTimeout(function () {
    const alertBox = document.getElementById('diskonAlert');
    if (alertBox) {
      // Panggil Bootstrap alert untuk close
      var alertInstance = bootstrap.Alert.getOrCreateInstance(alertBox);
      alertInstance.close();
    }
  }, 7000); // hilang dalam 7 detik
</script>




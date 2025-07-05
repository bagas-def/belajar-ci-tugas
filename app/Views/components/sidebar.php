<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

  <ul class="sidebar-nav" id="sidebar-nav">

    <!-- Flash Message Login Berhasil -->
    <?php if (session()->getFlashdata('redirect_success')): ?>
      <div class="alert alert-success">
        <?= session()->getFlashdata('redirect_success') ?>
      </div>
    <?php endif; ?>

    <!-- Flash Message Error -->
    <?php if (session()->getFlashdata('error')): ?>
      <div class="alert alert-danger">
        <?= session()->getFlashdata('error') ?>
      </div>
    <?php endif; ?>

    <!-- Menu Umum -->
    <li class="nav-item">
      <a class="nav-link <?= (uri_string() == '') ? '' : 'collapsed' ?>" href="/">
        <i class="bi bi-grid"></i>
        <span>Home</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link <?= (uri_string() == 'keranjang') ? '' : 'collapsed' ?>" href="<?= base_url('keranjang') ?>">
        <i class="bi bi-cart-check"></i>
        <span>Keranjang</span>
      </a>
    </li>

    <?php if (session()->get('role') == 'admin'): ?>

      <!-- Menu Khusus Admin -->
      <li class="nav-item">
        <a class="nav-link <?= (uri_string() == 'produk') ? '' : 'collapsed' ?>" href="<?= base_url('produk') ?>">
          <i class="bi bi-receipt"></i>
          <span>Produk</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link <?= (uri_string() == 'produkkategori') ? '' : 'collapsed' ?>" href="<?= base_url('produkkategori') ?>">
          <i class="bi bi-tags"></i>
          <span>Produk Kategori</span>
        </a>
      </li>

      <!-- ✅ Menu Baru: Manajemen Diskon -->
      <li class="nav-item">
        <a class="nav-link <?= (uri_string() == 'diskon') ? '' : 'collapsed' ?>" href="<?= base_url('diskon') ?>">
          <i class="bi bi-cash-coin"></i>
          <span>Manajemen Diskon</span>
        </a>
      </li>
    <?php endif; ?>


    <!-- Menu Umum -->
      <li class="nav-item">
        <a class="nav-link <?= (uri_string() == 'profile') ? '' : 'collapsed' ?>" href="<?= base_url('profile') ?>">
          <i class="bi bi-person"></i>
          <span>Profile</span>
        </a>
      </li>
      
    <li class="nav-item">
      <a class="nav-link <?= (uri_string() == 'contact') ? '' : 'collapsed' ?>" href="<?= base_url('contact') ?>">
        <i class="bi bi-envelope"></i>
        <span>Contact</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link <?= (uri_string() == 'faq') ? '' : 'collapsed' ?>" href="<?= base_url('faq') ?>">
        <i class="bi bi-question-circle"></i>
        <span>FAQ</span>
      </a>
    </li>

  </ul>

</aside><!-- End Sidebar -->

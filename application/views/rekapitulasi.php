<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Blank :: DashKeu</title>

  <!-- Favicon icon -->
  <link rel="icon" type="image/png" sizes="16x16" href="<?=base_url()?>assets/dist/img/favicon.png">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<?=base_url()?>assets/plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="http://[::1]/dash-keu/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Date picker -->
  <link rel="stylesheet" href="http://[::1]/kaskeuangan/assets/pixeladmin-lite/plugins/datepicker/css/datepicker.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?=base_url()?>assets/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/dist/css/additional.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to to the body tag
to get the desired effect
|---------------------------------------------------------|
|LAYOUT OPTIONS | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
<div class="wrapper">
  <!-- Navbar -->
  <?php $this->load->view('_partial/navbar');?>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <?php $this->load->view('_partial/sidebar');?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Rekapitulasi</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?=base_url()?>">Home</a></li>
              <li class="breadcrumb-item active">Rekapitulasi</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col">
            <div class="card">
              <div class="card-header">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title p-1">Rekapitulasi</h3>
                  <span title="Kembali"><button class="btn btn-sm btn-danger">Kembali</button></span>
                </div>
              </div>
              <div class="card-body">
                <div class="col-sm-12">
                  <div class="white-box">
                    <div class="row">
                      <div class="col-sm-4">
                        <input type="text" name="tanggal_awal" data-date-format="yyyy-mm-dd" readonly id="tanggal_awal" placeholder="Tanggal Awal" class="form-control form-control-line tgl">
                      </div>
                      <div class="col-sm-4">
                        <input type="text" placeholder="Tanggal Akhir" data-date-format="yyyy-mm-dd" readonly name="tanggal akhir" id="tanggal_akhir" class="form-control form-control-line tgl"> 
                      </div>
                      <div class="col-sm-4">
                        <button type="button" class="btn btn-warning" onclick="back()">Kembali</button>
                        <button type="button" class="btn btn-primary" onclick="lihat_laporan()" style="margin-right: 5px;">Lihat</button>
                      </div>
                    </div>
                    <br>
                    <div class="table-responsive">
                      <div id="isi_tabel">
                        <table class="table">
                          <thead>
                            <tr>
                              <th>No</th>
                              <th>Nama</th>
                              <th>Jumlah</th>                     
                            </tr>
                          </thead>                        
                        </table>
                      </div>
                    </div>
                  </div>
              </div>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <?php $this->load->view('_partial/footer');?>
  
  <script src="http://[::1]/kaskeuangan/assets/pixeladmin-lite/plugins/datepicker/js/bootstrap-datepicker.js"></script>

  <script>
	$('.tgl').datepicker();
	function lihat_laporan() {
        
		let tgl_awal = $('#tanggal_awal').val();
		let tgl_akhir = $('#tanggal_akhir').val();
		if (tgl_awal=='' || tgl_akhir=='' ) {
			alert('harap isi tanggal terlebih dulu');
		}else{
			$('#isi_tabel').load('lap.php?tgl_awal='+tgl_awal+'&tgl_akhir='+tgl_akhir);
		}
		
	}
</script>
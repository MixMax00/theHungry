<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  @foreach($favicon as $key=>$value)
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset($value->image)}}">
    <link rel="icon" rel="apple-touch-icon" sizes="120x120" href="{{asset($value->image)}}"/>
    @endforeach
  <title>@yield('title','Dashboard')</title>
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{{asset('backEnd')}}/plugins/font-awesome/css/font-awesome.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('backEnd')}}/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="{{asset('backEnd')}}/css/custom.css">
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <link rel="stylesheet" href="{{asset('backEnd')}}/css/toastr.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
   <!-- DataTables -->
   <!-- Select2 -->
  <link rel="stylesheet" href="{{asset('backEnd')}}/plugins/select2/select2.min.css">
  <!-- datatable -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.bootstrap4.min.css">
  <!-- toastr css -->
  <link rel="stylesheet" href="{{asset('backEnd')}}/css/toastr.min.css">
  <!--news.css-->
  <link rel="stylesheet" href="{{asset('backEnd')}}/css/custom.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- jQuery -->
  <script src="{{asset('backEnd')}}/plugins/jquery/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

  <script type="text/javascript">
    function display_c(){
    var refresh=1000; // Refresh rate in milli seconds
    mytime=setTimeout('display_ct()',refresh)
    }

    function display_ct() {
    var x = new Date()
    document.getElementById('ct').innerHTML = x;
    display_c();
     }
    </script>
</head>
<!-- head section end-->
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
      </li>
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" href="{{url('/')}}" target="_blank">
          <i class="fa fa-tv"></i> Visit Site
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header custom-dropdown">

           </span>
          <div class="dropdown-divider"></div>

      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#"><i
            class="fa fa-th-large"></i></a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
  <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{url('/superadmin/dashboard')}}" class="brand-link">
     <img src="{{asset($value->image)}}" alt="Logo" width="30" height="30">
      <span class="brand-text font-weight-light"><strong>Dashboard</strong></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar" style="padding: 20px 0" >
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="image ">
              <img src="{{asset(Auth::user()->image)}}" class="img-circle elevation-2" alt="User brand-imagee">
            </div>
          </div>
          <div class="col-lg-12">
            <div class="info">
              <i class="fa fa-circle"></i>
              <a href="{{url('/superadmin/dashboard')}}" class="d-block">{{auth::user()->name}}</a>
            </div>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <!--order management-->
         <li class="nav-link">
              <p>
               ORDER MANAGEMENT
              </p>
            </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-bar-chart"></i>
              <p>
               Orders
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              @foreach($ordertypes as $ordertype)
              <li class="nav-item">
                <a href="{{url('/editor/order/manage/'.$ordertype->slug)}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>{{$ordertype->name}} @php $products = App\Order::where('orderStatus',$ordertype->id)->count(); @endphp <span>({{$products}})</span>
                  </p>

                </a>
              </li>
              @endforeach
              <li class="nav-item">
                <a href="{{url('/editor/order/cancel/request')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Cancel Request</p>
                </a>
              </li>

            </ul>
          </li>
          <!-- nav item end -->
         <!--Product management-->
         <li class="nav-link">
              <p>
               PRODUCT MANAGEMENT
              </p>
            </li>
              <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-shopping-bag"></i>
              <p>
               Products
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item">
                <a href="{{url('/editor/product/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>All Product</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/category/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/subcategory/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Subcategory</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/childcategory/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Child Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/product-size/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Product Size</p>
                </a>
              </li>
              {{-- <li class="nav-item">
                <a href="{{url('/editor/product-color/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Product Color</p>
                </a>
              </li> --}}

              <li class="nav-item">
                <a href="{{url('/editor/product-addon/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Addons</p>
                </a>
              </li>

            </ul>

          </li>
            <!-- <li class="nav-item">
                <a href="{{url('/editor/brand/manage')}}" class="nav-link">
                  <i class="fa fa-flag"></i>
                  <p>Brand</p>
                </a>
              </li> -->
                 <li class="nav-item">
                <a href="{{url('/editor/product/stock')}}" class="nav-link">
                  <i class="fa fa-cubes"></i>
                  <p>Stock</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/product/stock-warning')}}" class="nav-link">
                  <i class="fa fa-exclamation-triangle"></i>
                  <p>Stock Warning</p>
                </a>
              </li>
                <!--EXPENCE HANDLER-->
         <li class="nav-link">
              <p>
               EXPENCE HANDLER
              </p>
            </li>
          <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-pie-chart"></i>
              <p>
               Inventory
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">


              @if(Auth::user()->role_id <= 2)
              <li class="nav-item">
                <a href="{{url('/admin/expence-category/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Expence Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/admin/expence/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Expence</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/admin/reports/summary')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>summary</p>
                </a>
              </li>
              @endif
            </ul>
          </li>
            <!--BUSINESS MANAGEMENT-->
         <li class="nav-link">
              <p>
               BUSINESS MANAGEMENT
              </p>
            </li>
          <!-- nav item end -->
          @if(Auth::user()->role_id==1)
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-user"></i>
              <p>
                Users
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/superadmin/user/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Admin </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/customer/list')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Customers</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- nav item end -->
          @endif

          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-apple"></i>
              <p>
                Logo
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/editor/logo/add')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Add </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/logo/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Manage</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
             <i class="fa fa-image"></i>
              <p>
                Slider
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/editor/slider/add')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Add </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/slider/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Manage</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- nav item end -->
          @if(Auth::user()->role_id <= 2)
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-calendar"></i>
              <p>
               Coupon Code
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/admin/couponcode/add')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Add </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/admin/couponcode/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Manage</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-map-o"></i>
              <p>
               Country
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/admin/district/add')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Add </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/admin/district/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Manage</p>
                </a>
              </li>
            </ul>
          </li>

          <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-map-marker"></i>
              <p>
               Region / State
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/admin/area/add')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Add </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/admin/area/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Manage</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- nav item end -->
          @endif

          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-dollar"></i>
              <p>
                Payment Method
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                  <a href="{{ route('admin.paypalEdit',1) }}" class="nav-link {{Request::is('admin/set-payment-paypal*') ? 'active':''}}">
                      <i class="fa fa-circle-o nav-icon"></i>
                      <p>Paypal</p>
                  </a>
              </li>
              <li class="nav-item">
                  <a href="{{ route('admin.stripeEdit',1) }}" class="nav-link {{Request::is('admin/set-payment-stripe*') ? 'active':''}}">
                      <i class="fa fa-circle-o nav-icon"></i>
                      <p>Stripe</p>
                  </a>
              </li>
              <li class="nav-item">
                  <a href="{{ route('admin.CashOnDeliveryEdit',1) }}" class="nav-link {{Request::is('admin/set-payment-cash-on-delivery*') ? 'active':''}}">
                      <i class="fa fa-circle-o nav-icon"></i>
                      <p>Cash On Delivery</p>
                  </a>
              </li>
            </ul>
          </li>

          <!-- nav item end -->
          <!-- <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
            <i class="fa fa-diamond"></i>
              <p>
                Advertisement
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/editor/adcategory/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Ad Category </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/advertisment/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Ad Image </p>
                </a>
              </li>

            </ul>
          </li> -->
          <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
           <i class="fa fa-file"></i>
              <p>
                Create Page
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/editor/pagecategory/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Page Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/createpage/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Page Content</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
             <i class="fa fa-codiepie"></i>
              <p>
               Social Icon
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/editor/social-media/add')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Add</p>
                </a>
              </li>
            </ul>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/editor/social-media/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Manage</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
            <i class="fa fa-building"></i>
              <p>
                Web Config
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/editor/contactinfo/add')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Add</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/contactinfo/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Manage</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/gmail-setting/index')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Email Setting</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- nav item end -->
          <!--Blog-->
         <li class="nav-link">
              <p>
               Blog
              </p>
            </li>
             <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
            <i class="fa fa-image"></i>
              <p>
                Our Blog
                <i class="right fa fa-angle-right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{url('/editor/blogcategory/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Blog Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/editor/blog/manage')}}" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Blog</p>
                </a>
              </li>
            </ul>
          </li>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h4 class="m-0 t welcome-dash">Welcome !! {{Auth::user()->name}}</h4>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{url('superadmin/dashboard')}}">Home</a></li>
            <?php $segments = ''; ?>
            @foreach(Request::segments() as $segment)
                <?php $segments .= '--'.$segment; ?>
                <li class="breadcrumb-item active">
                   {{$segment}}
                </li>
            @endforeach

          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
    <!-- /.content-header -->
    <!-- Main content -->
    @yield('main_content')
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <!-- /.content-wrapper -->
  <footer class="main-footer no-print">
    <strong> Copyright ©  @php  echo date('Y') @endphp {{ $setting->shop_name }}. All rights reserved </strong>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark right-sidebar" style="background: url({{asset('backEnd/images/sidebar.jpg')}});background-size: cover;background-position: center;background-repeat: no-repeat;padding: 20px 0">
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview">
            <a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();" class="nav-link">

              <img src="{{asset('backEnd/')}}/images/sign-out.png">
              <p>Logout</p>
             <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
             </form>
            </a>
          </li>
          <!-- nav item end -->
          <li class="nav-item has-treeview">
            <a href="{{url('password/change')}}" class="nav-link">
              <img src="{{asset('backEnd/')}}/images/key.png">
              <p>Change Password</p>
            </a>
          </li>
          <!-- nav item end -->
      </ul>
    </nav>
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{asset('backEnd')}}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Sparkline -->
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script>
  flatpickr(".mydate", {
    dateFormat: "Y-m-d",
  });
</script>
<script src="{{asset('backEnd')}}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="{{asset('backEnd')}}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="{{asset('backEnd')}}/plugins/knob/jquery.knob.js"></script>
<script src="{{asset('public/frontEnd/')}}/js/zoomsl.min.js"></script>
<!--jqzoom.js js-->
<script>
    $(document).ready(function () {
        $(".block__pic").imagezoomsl({
            zoomrange: [3, 3]
        });
    });
</script>
<!-- daterangepicker -->
<script src="{{asset('backEnd')}}/dist/js/adminlte.js"></script>
<script src="{{asset('backEnd')}}/dist/js/pages/dashboard.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
 <script>
  $('.summernote').summernote({
    height: 300
  });
</script>
<script src="{{asset('backEnd')}}/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="{{asset('backEnd')}}/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Slimscroll -->
<script src="{{asset('backEnd')}}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<!-- select -->
<script src="{{asset('backEnd')}}/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<!-- AdminLTE for demo purposes -->
<!-- toastr js -->
<script src="{{asset('backEnd')}}/js/toastr.min.js"></script>
  {!! Toastr::message() !!}

<!-- Datatable -->
  {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.colVis.min.js "></script>
  <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.colVis.min.js "></script>
  <script src="https://cdn.datatables.net/select/1.3.1/js/dataTables.select.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script> --}}
{{-- <script>
$(document).ready(function() {
  $('#example').DataTable( {
      dom: 'Bfrtip',
      buttons: [
          {
              extend: 'copy',
              text: 'Copy',
          },
          {
              extend: 'excel',
              text: 'Excel',
          },
          {
              extend: 'csv',
              text: 'Csv',
          },
          {
              extend: 'pdfHtml5',
              exportOptions: {
                 columns: [ 0, 1, 2, 3, 4, 5, 6]
              }
          },

          {
              extend: 'print',
              text: 'Print',
          },
          {
              extend: 'print',
              text: 'Print all',
              exportOptions: {
                  modifier: {
                      selected: null
                  }
              }
          },
          {
              extend: 'colvis',
          },

      ],
      select: true
  } );

   table.buttons().container()
      .appendTo( '#example_wrapper .col-md-6:eq(11)' );
});
</script> --}}
<script src="{{asset('backEnd')}}/plugins/select2/select2.full.min.js"></script>
<script>
  $(function () {
   $('.select2').select2()
       });
</script>
<script type="text/javascript">
        $('#proCategory').change(function(){
        var ajaxId = $(this).val();
        if(ajaxId){
            $.ajax({
               type:"GET",
               url:"{{url('ajax-product-subcategory')}}?category_id="+ajaxId,
               success:function(res){
                if(res){
                    $("#proSubcategory").empty();
                    $("#proSubcategory").append('<option value="0">Select..</option>');
                    $.each(res,function(key,value){
                        $("#proSubcategory").append('<option value="'+key+'">'+value+'</option>');
                    });

                }else{
                   $("#proSubcategory").empty();
                }
               }
            });
        }else{
            $("#proSubcategory").empty();
            $("#proSubcategory").empty();
        }
       });
        $('#proSubcategory').on('change',function(){
        var ajaxId = $(this).val();
        if(ajaxId){
            $.ajax({
               type:"GET",
               url:"{{url('ajax-product-childsubcategory')}}?category_id="+ajaxId,
               success:function(res){
                if(res){
                    $("#proChildcategory").empty();
                     $("#proChildcategory").append('<option value="0">Select...</option>');
                    $.each(res,function(key,value){
                        $("#proChildcategory").append('<option value="'+key+'">'+value+'</option>');
                    });

                }else{
                   $("#proChildcategory").empty();
                }
               }
            });
        }else{
            $("#proChildcategory").empty();
        }

       });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {

          $(".btn-success").click(function(){
              var html = $(".clone").html();
              $(".increment").after(html);
          });

          $("body").on("click",".btn-danger",function(){
              $(this).parents(".control-group").remove();
          });

        });
    </script>



</body>
</html>


@extends('backEnd.layouts.master')
@section('title','contactinfo add')
@section('main_content')
<section class="content">
  <div class="container-fluid">
    <div class="card card-default">
      <div class="card-header">
          <h3 class="card-title">Mail Setting</h3>
          <div class="short_button">
            {{-- <a href="{{url('/editor/contactinfo/manage')}}"><i class="fa fa-cogs"></i>Manage</a> --}}
          </div>
      </div>
      <!--card-header -->
            <div id="form_body" class="card-body">
              <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                  <div class="custom-bg">
                    <form action="{{url('/editor/contactinfo/save')}}" method="POST" enctype="multipart/form-data">
                      @csrf
                      <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                              <label>MAIL MAILER</label>
                              <input type="text" name="shop_name" class="form-control{{ $errors->has('shop_name') ? ' is-invalid' : '' }}" value="{{ old('shop_name') }}">

                              @if ($errors->has('shop_name'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('shop_name') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                              <label>MAIL HOST</label>
                              <input type="text" name="currency" class="form-control{{ $errors->has('currency') ? ' is-invalid' : '' }}" value="{{ old('currency') }}">

                              @if ($errors->has('currency'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('currency') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                              <label>MAIL PORT</label>
                              <input type="text" name="phone" class="form-control{{ $errors->has('phone') ? ' is-invalid' : '' }}" value="{{ old('phone') }}">

                              @if ($errors->has('phone'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('phone') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!--form-group -->
                        <div class="col-sm-12">
                            <div class="form-group">
                              <label>MAIL USERNAME</label>
                              <input type="text" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}">

                              @if ($errors->has('email'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('email') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!--form-group -->
                        <div class="col-sm-12">
                          <div class="form-group custom-textarea">
                            <label for="address">MAIL PASSWORD</label>
                                <input type="text" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}">

                                @if ($errors->has('email'))
                                <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('email') }}</strong>
                                </span>
                                @endif
                            </div>
                       </div>
                      <!-- form-group end -->
                        <div class="col-sm-12">
                          <div class="form-group custom-textarea">
                            <label for="maplink">MAIL ENCRYPTION</label>
                            <input type="text" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}">

                            @if ($errors->has('email'))
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                            </div>
                       </div>

                       <div class="col-sm-12">
                        <div class="form-group custom-textarea">
                          <label for="maplink">MAIL FROM ADDRESS</label>
                          <input type="text" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}">

                          @if ($errors->has('email'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('email') }}</strong>
                          </span>
                          @endif
                          </div>
                     </div>

                      <div class="col-sm-6">
                          <div class="form-group mrt-30">
                              <button type="submit" class="btn submit-button">submit</button>
                              <button type="reset" class="btn btn-default">clear</button>
                          </div>
                      </div>
                      <!-- /.form-group -->
                 </div>
                </div>
              </div>
            <!-- /.col -->
                </div>
              </form>
          </div>
        <!--card-body-->
      </div>
      <!--card-->
    </div>
  <!--container-fluid-->
  </section>
  <!-- /.content -->
@endsection

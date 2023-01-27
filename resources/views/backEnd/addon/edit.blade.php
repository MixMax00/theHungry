@extends('backEnd.layouts.master')
@section('title','Addon Edit')
@section('main_content')
<section class="content">
  <div class="container-fluid">
    <div class="card card-default">
      <div class="card-header">
          <h3 class="card-title">Edit Addon information</h3>
          <div class="short_button">
            <a href="{{url('/editor/product-addon/manage')}}"><i class="fa fa-cogs"></i>Manage</a>
          </div>
      </div>
      <!--card-header -->
            <div id="form_body" class="card-body">
              <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                  <div class="custom-bg">
                    <form action="{{url('/editor/product-addon/update')}}" method="POST" enctype="multipart/form-data">
                      @csrf
                      <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                              <label>Name</label>
                              <input type="hidden" name="id" value="{{ $edit->id }}">
                              <input type="text" name="name" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ $edit->name }}">

                              @if ($errors->has('name'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('name') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                              <label>Price</label>
                              <input type="text" name="price" class="form-control{{ $errors->has('price') ? ' is-invalid' : '' }}" value="{{ $edit->price }}">

                              @if ($errors->has('price'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('price') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->

                        <div class="col-sm-12">
                          <div class="form-group">
                            <label for="image">Image *</label>
                            <input type="file" name="image" id="image" class="form-control{{ $errors->has('image') ? ' is-invalid' : '' }}"  accept="image/*">
                             @if ($errors->has('image'))
                             <img src="{{ asset($edit->image) ?? '' }}" alt="" class="responsive_image">
                                @if ($errors->has('image'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('image') }}</strong>
                                </span>
                                @endif
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('image') }}</strong>
                            </span>
                            @endif
                          </div>
                        </div>
                      <!-- /.form-group -->

                      <div class="col-sm-12">
                        <div class="form-group">
                            <label for="status">Publication Status</label>
                            <div class="box-body pub-stat display-inline">
                            <input class="form-control{{ $errors->has('status') ? ' is-invalid' : '' }}" type="radio" id="active" name="status" value="1">
                            <label for="active">Active</label>
                            @if ($errors->has('status'))
                            <span class="invalid-feedback">
                              <strong>{{ $errors->first('status') }}</strong>
                            </span>
                            @endif
                        </div>
                          <div class="box-body pub-stat display-inline">
                              <input class="form-control{{ $errors->has('status') ? ' is-invalid' : '' }}" type="radio" name="status" value="0" id="inactive">
                              <label for="inactive">Inactive</label>
                              @if ($errors->has('status'))
                              <span class="invalid-feedback">
                                <strong>{{ $errors->first('status') }}</strong>
                              </span>
                              @endif
                          </div>
                              @if ($errors->has('status'))
                              <span class="invalid-feedback" role="alert">
                              <strong>{{ $errors->first('status') }}</strong>
                              </span>
                              @endif
                          </div>
                      </div>
                      <div class="col-sm-12 mrt-30">
                          <div class="form-group">
                              <button type="submit" class="btn submit-button">submit</button>
                              <button type="reset" class="btn btn-default">clear</button>
                          </div>
                      </div>
                      <!-- /.form-group -->
                 </div>
                </div>
              </div>
            <!-- /.col -->
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

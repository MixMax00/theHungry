
@extends('backEnd.layouts.master')
@section('title','Product Add')
@php($addons = \App\ProductAddon::all())
@php($sizes = \App\Size::all())
@section('main_content')
<section class="content">
  <div class="container-fluid">
    <div class="card card-default">
      <div class="card-header">
          <h3 class="card-title">Product information</h3>
          <div class="short_button">
            <a href="{{url('/editor/product/manage')}}"><i class="fa fa-cogs"></i>Manage</a>
          </div>
      </div>
      <!--card-header -->
            <div id="form_body" class="card-body">
              <div class="row">
                <div class="col-md-12">
                  <div class="custom-bg">
                    <form action="{{url('/editor/product/save')}}" method="POST" enctype="multipart/form-data">
                      @csrf
                      <div class="row">
                        <div class="col-sm-4">
                               <div class="form-group">
                                <label for="title">Category <span>*</span></label>
                                <select class="form-control select2{{ $errors->has('proCategory') ? ' is-invalid' : '' }}" value="{{ old('proCategory') }}" id="proCategory" name="proCategory">
                                    <option value="">====Select your category====</option>
                                    @foreach($categories as $key=>$value)
                                    <option value="{{$value->id}}" required>{{$value->name}}</option>
                                    @endforeach
                                </select>
                                  @if ($errors->has('proCategory'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('proCategory') }}</strong>
                                  </span>
                                  @endif
                             </div>
                        </div>
                      <!-- /.form-group -->
                        <div class="col-sm-4">
                           <div class="form-group">
                                <label for="title">Subcategory <span>Optional</span></label>
                                <select name="proSubcategory" id="proSubcategory" class="form-control {{ $errors->has('proSubcategory') ? ' is-invalid' : '' }}" value="{{ old('proSubcategory') }}">
                                </select>
                                 @if ($errors->has('proSubcategory'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('proSubcategory') }}</strong>
                                  </span>
                                  @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                        <div class="col-sm-4">
                           <div class="form-group">
                            <label for="title">Child Category  (Optional)</label>
                                <select name="proChildcategory" id="proChildcategory" class="form-control{{ $errors->has('proChildcategory') ? ' is-invalid' : '' }}" value="{{ old('proChildcategory') }}" >
                                </select>
                                @if ($errors->has('proChildcategory'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('proChildcategory') }}</strong>
                                  </span>
                                  @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                        <!-- <div class="col-sm-4">
                           <div class="form-group">
                            <label for="title">Brand  (Optional)</label>
                                <select name="proBrand" id="proBrand" class="select2 form-control{{ $errors->has('proBrand') ? ' is-invalid' : '' }}" >
                                  <option value="">====Select Brand====</option>
                                  @foreach($brands as $key=>$value)
                                  <option value="{{$value->id}}">{{$value->brandName}}</option>
                                  @endforeach
                                </select>
                                @if ($errors->has('proBrand'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('proBrand') }}</strong>
                                  </span>
                                  @endif
                            </div>
                        </div> -->
                      <!-- /.form-group -->
                      <!-- /.form-group -->
                        <div class="col-sm-8">
                            <div class="form-group">
                              <label>Product Name <span>*</span></label>
                              <input type="text" name="proName" class="form-control{{ $errors->has('proName') ? ' is-invalid' : '' }}" value="{{ old('proName') }}">

                              @if ($errors->has('proName'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proName') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                        <!-- form group end -->
                        <div class="col-sm-4">
                            <div class="form-group">
                              <label>Cost Price <span>*</span></label>
                              <input type="number" step="any" name="proPurchaseprice" class="form-control{{ $errors->has('proPurchaseprice') ? ' is-invalid' : '' }}" value="{{ old('proPurchaseprice') }}">

                              @if ($errors->has('proPurchaseprice'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proPurchaseprice') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                        <div class="col-sm-4">
                            <div class="form-group">
                              <label>Old Price (Optional)</label>
                              <input type="number" step="any" name="proOldprice" class="form-control{{ $errors->has('proOldprice') ? ' is-invalid' : '' }}" value="0.00">

                              @if ($errors->has('proOldprice'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proOldprice') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->

                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>New Price(Sale) <span>*</span></label>
                          <input type="number" step="any" name="proNewprice" class="form-control{{ $errors->has('proNewprice') ? ' is-invalid' : '' }}" value="{{ old('proNewprice') }}">

                          @if ($errors->has('proNewprice'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('proNewprice') }}</strong>
                          </span>
                          @endif
                        </div>
                    </div>
                  <!-- /.form-group -->
                  <div class="col-lg-4">
                    <div class="form-group">
                          <label for="image"> Product Image <span>*</span></label>
                          <input type="file" name="image[]" class="form-control{{ $errors->has('image') ? ' is-invalid' : '' }}" value="{{ old('image') }}" multiple="multiple">

                          @if ($errors->has('image'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('image') }}</strong>
                          </span>
                          @endif
                    </div>
                  </div>


                  <div class="col-sm-4">
                        <div class="form-group">
                          <label>Product Unit <span>(Optional)</span></label>
                          <input type="text" name="unit" class="form-control{{ $errors->has('unit') ? ' is-invalid' : '' }}" value="{{ old('unit') }}" min="1">

                          @if ($errors->has('unit'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('unit') }}</strong>
                          </span>
                          @endif
                        </div>
                  </div>



                  <div class="col-sm-4">
                      <div class="form-group">
                        <label>Product Code (Optional)</label>
                        <input type="text" name="proCode" class="form-control{{ $errors->has('proCode') ? ' is-invalid' : '' }}" value="{{ old('proCode') }}">

                        @if ($errors->has('proCode'))
                        <span class="invalid-feedback" role="alert">
                          <strong>{{ $errors->first('proCode') }}</strong>
                        </span>
                        @endif
                      </div>
                  </div>

                <div class="col-sm-4">
                    <div class="form-group">
                      <label>Addon (Optional)</label>
                      {{-- <input type="text" name="addon" class="form-control{{ $errors->has('addon') ? ' is-invalid' : '' }}" value="{{ old('addon') }}"> --}}
                      <select name="addon[]" class="select2 form-control" multiple>
                        @foreach ($addons as $addon)
                            <option value="{{ $addon->id }}">{{ $addon->name }}</option>
                        @endforeach

                      </select>

                      @if ($errors->has('addon'))
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('addon') }}</strong>
                      </span>
                      @endif
                    </div>
                </div>

                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                              <label>Size <span></span></label>
                              <select class="form-control" name="size[]">
                                @foreach ($sizes as $size)
                                    <option value="{{ $size->id }}">{{ $size->sizeName }}</option>
                                @endforeach

                              </select>

                              @if ($errors->has('unit'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('unit') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>Price</label>
                                <input type="text" name="size_price[]" class="form-control{{ $errors->has('proCode') ? ' is-invalid' : '' }}" value="{{ old('proCode') }}">

                                @if ($errors->has('proCode'))
                                <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proCode') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group" style="margin-top: 30px;">

                                <button type="button" class="btn btn-info add"><i class="fa fa-plus"></i></button>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-8 addRow">

                </div>
                      <!-- /.form-group -->
                  <div class="col-sm-12">
                      <div class="form-group">
                          <label for="text">Short Description</label>
                            <textarea name="shortDescription" class="summernote form-control{{ $errors->has('shortDescription') ? ' is-invalid' : '' }} form-control" value="">{{ old('shortDescription') }}</textarea>

                            @if ($errors->has('shortDescription'))
                           <span class="invalid-feedback" role="alert">
                              <strong>{{ $errors->first('shortDescription') }}</strong>
                           </span>
                           @endif
                        </div>
                  </div>
                  <!-- /.form-group -->
                  <div class="col-sm-12">
                      <div class="form-group">
                          <label for="text">Description</label>
                            <textarea name="proDescription" class="summernote form-control{{ $errors->has('proDescription') ? ' is-invalid' : '' }} form-control" value="">{{ old('proDescription') }}</textarea>

                            @if ($errors->has('proDescription'))
                           <span class="invalid-feedback" role="alert">
                              <strong>{{ $errors->first('proDescription') }}</strong>
                           </span>
                           @endif
                        </div>
                  </div>
                  <!-- /.form-group -->
                  <div class="col-sm-4">
                        <div class="form-group">
                          <label>Video <span>(Optional)</span></label>
                          <input type="text" name="video" class="form-control{{ $errors->has('video') ? ' is-invalid' : '' }}" value="{{ old('video') }}" min="1">

                          @if ($errors->has('video'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('video') }}</strong>
                          </span>
                          @endif
                        </div>
                    </div>
                  <!-- /.form-group -->
                  <div class="col-sm-4">
                        <div class="form-group">
                          <label>Aditional Shipping <span>(Optional)</span></label>
                          <input type="text" name="aditionalshipping" class="form-control{{ $errors->has('aditionalshipping') ? ' is-invalid' : '' }}" value="{{ old('aditionalshipping') }}" min="1">

                          @if ($errors->has('aditionalshipping'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('aditionalshipping') }}</strong>
                          </span>
                          @endif
                        </div>
                    </div>
                  <!-- /.form-group -->
                  <!-- <div class="col-sm-4">
                        <div class="form-group">
                          <label>Deal Date <span>(Optional)</span></label>
                          <input type="date" name="dealdate" class="form-control{{ $errors->has('dealdate') ? ' is-invalid' : '' }}" value="{{ old('dealdate') }}" min="1">

                          @if ($errors->has('dealdate'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('dealdate') }}</strong>
                          </span>
                          @endif
                        </div>
                    </div> -->
                  <!-- /.form-group -->

                  <!-- <div class="col-sm-3">
                          <div class="form-group">
                            <label class="custom-label" for="deal"> Deal (Optional)</label>
                             <input type="checkbox" class="{{ $errors->has('deal') ? ' is-invalid' : '' }}" value="1" name="deal" id="front">
                             @if ($errors->has('deal'))
                                <span class="invalid-feedback">
                                  <strong>{{ $errors->first('deal') }}</strong>
                                </span>
                              @endif
                          </div>
                        </div> -->

                  <!-- <div class="col-sm-3">
                          <div class="form-group">
                            <label class="custom-label" for="fullpaid"> Full Paid (Optional)</label>
                             <input type="checkbox" class="{{ $errors->has('fullpaid') ? ' is-invalid' : '' }}" value="1" name="fullpaid" id="fullpaid">
                             @if ($errors->has('fullpaid'))
                                <span class="invalid-feedback">
                                  <strong>{{ $errors->first('fullpaid') }}</strong>
                                </span>
                              @endif
                          </div>
                        </div> -->
                  <!-- /.form-group -->
                    <!--  <div class="col-sm-3">
                        <div class="form-group">
                          <label class="custom-label" for="feature"> Feature (Optional)</label>
                           <input type="checkbox" class="{{ $errors->has('feature') ? ' is-invalid' : '' }}" value="1" name="feature" id="front">
                           @if ($errors->has('feature'))
                              <span class="invalid-feedback">
                                <strong>{{ $errors->first('feature') }}</strong>
                              </span>
                            @endif
                        </div>
                      </div> -->
                      <div class="col-sm-3">
                          <div class="form-group">
                            <label class="custom-label" for="bestsell"> Top Sell (Optional)</label>
                             <input type="checkbox" class="{{ $errors->has('bestsell') ? ' is-invalid' : '' }}" value="1" id="bestsell" name="bestsell" id="front">
                             @if ($errors->has('bestsell'))
                                <span class="invalid-feedback">
                                  <strong>{{ $errors->first('bestsell') }}</strong>
                                </span>
                              @endif
                          </div>
                      </div>

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


@section('js')

<script>

    $(document).ready(function(){
        $('.add').click(function(e){
            e.preventDefault();

            $('.addRow').append(`

                <div class="row">
                    <div class="col-sm-4">
                            <div class="form-group">
                              <label>Size <span></span></label>
                              <select class="form-control" name="size[]">
                                @foreach ($sizes as $size)
                                    <option value="{{ $size->id }}">{{ $size->sizeName }}</option>
                                @endforeach

                              </select>

                              @if ($errors->has('unit'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('unit') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>Size Price</label>
                                <input type="text" name="size_price[]" class="form-control{{ $errors->has('proCode') ? ' is-invalid' : '' }}" value="{{ old('proCode') }}">

                                @if ($errors->has('proCode'))
                                <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proCode') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group" style="margin-top: 30px;">
                                <a href="javascript:void(0);" class="remCF btn btn-info"><i class="fa fa-minus"></i></a>

                            </div>
                        </div>
                </div>
            `);

        });




    });

    $(document).on('click', '.remCF', function(){
        $('.addRow .row:last').remove();
    })






</script>

@endsection

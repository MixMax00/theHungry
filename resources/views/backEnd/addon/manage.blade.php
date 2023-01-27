@extends('backEnd.layouts.master')
@section('title','Addon Manage')
@section('main_content')
 <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
            <h3 class="card-title">Addon Manage</h3>
      			<div class="short_button">
              <a href="{{url('editor/product-addon/add')}}"><i class="fa fa-plus"></i>Add</a>
      			</div>
          </div>
          <!-- /.card-header -->
            <div class="card-body">
               <table id="example" class="table table-bordered table-responsive-md table-striped">
                <thead>
                <tr>
                  <th>Sl</th>
                  <th>Addon Name</th>
                  <th>Price</th>
                  <th>Image</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                    @foreach($addons as $item)
                        <tr>
                            <td>{{ $loop->index +1 }}</td>
                            <td>{{ $item->name  ?? ''}}</td>
                            <td>{{ $item->price ?? ''}}</td>
                            <td><img src="{{ asset($item->image ) ?? '' }}" alt="{{ $item->name  ?? ''}}" width="50" height="50"></td>
                            <td>{{ $item->status == 1 ? "active" : "inactive" }}</td>
                            <td>
                                <ul class="action_buttons dropdown">
                                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Action Button
                                    <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                      <li>
                                    @if($item->status==1)
                                    <form action="{{url('editor/product-addon/inactive')}}" method="POST">
                                      @csrf
                                      <input type="hidden" name="hidden_id" value="{{$item->id}}">
                                      <button type="submit" class="thumbs_up" title="unpublished"><i class="fa fa-thumbs-up"></i> Active</button>
                                    </form>
                                    @else
                                      <form action="{{url('editor/product-addon/active')}}" method="POST">
                                        @csrf
                                        <input type="hidden" name="hidden_id" value="{{$item->id}}">
                                        <button type="submit" class="thumbs_down" title="published"><i class="fa fa-thumbs-down"></i> Inactive</button>
                                      </form>
                                    @endif
                                  </li>
                                      <li>
                                    <a class="edit_icon" href="{{ url('editor/product-addon/edit/'.$item->id)}}" title="Edit"><i class="fa fa-edit"></i> Edit</a>
                                  </li>

                                    </ul>
                                </ul>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
@endsection

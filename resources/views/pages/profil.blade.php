@extends('layouts.master')
@section('title')
Profil {{ Auth::user()->name }}
@endsection
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-12 col-lg-8">
                <div class="card author-box card-primary">
                    <div class="card-body">
                        <div class="author-box-left">
                            <img alt="image" src="assets/img/users/user-1.png"
                                class="rounded-circle author-box-picture">
                            <div class="clearfix"></div>
                            <a href="{{ route('profile.edit', ['profile' => Auth()->user()->profileUser->id] ) }}"
                                class="btn btn-primary mt-3">Edit Profil</a>
                        </div>

                        <div class="author-box-details">
                          <div class="author-box-name">
                            <a href="#">{{ Auth::user()->name }}</a>
                          </div>
                          <div class="author-box-job">{{ Auth::user()->role }}</div>
                          <div class="author-box-description">
                            <table>
                              <tr>
                                <th>Nama :</th>
                                <td> {{ Auth()->user()->profileUser->nama }}</td>
                              </tr>
                              <tr>
                                <th>NIM :</th>
                                <td> {{ Auth::user()->profileUser->nim }}</td>
                              </tr>
                              <tr>
                                <th>Email :</th>
                                <td> {{ Auth::user()->email }}</td>
                              </tr>
                              <tr>
                                <th>Nomor Tlp :</th>
                                <td> {{ Auth::user()->profileUser->no_tlp }}</td>
                              </tr>
                              <tr>
                                <th>Alamat :</th>
                                <td> {{ Auth::user()->profileUser->alamat }}</td>
                              </tr>
                              <tr>
                                <th>Prodi :</th>
                                <td> {{ Auth::user()->profileUser->prodi }}</td>
                              </tr>
                            </table>
                          </div>
                          <div class="w-100 d-sm-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

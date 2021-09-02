<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: Roboto;
        }

        /* .certificate-container {
            padding: 50px;
            width: 1024px;
        } */

        .certificate {
            border: 20px solid #0C5280;
            padding: 25px;
            height: 550px;
            position: relative;
        }

        .certificate:after {
            content: '';
            top: 0px;
            left: 0px;
            bottom: 0px;
            right: 0px;
            position: absolute;
            /* background-image: url(https://image.ibb.co/ckrVv7/water_mark_logo.png); */
            background-size: 100%;
            z-index: -1;
        }

        .certificate-header>.logo {
            width: 80px;
            height: 80px;
        }

        .certificate-title {
            text-align: center;
        }

        .certificate-body {
            text-align: center;
        }

        h1 {

            font-weight: 400;
            font-size: 48px;
            color: #0C5280;
        }

        .student-name {
            font-size: 24px;
        }

        .certificate-content {
            margin: 0 auto;
            width: 750px;
        }

        .about-certificate {
            width: 380px;
            margin: 0 auto;
        }

        .topic-description {

            text-align: center;
        }

    </style>
</head>

<body>
    <div class="certificate-container">
        <div class="certificate">
            <div class="water-mark-overlay"></div>
            <div class="certificate-header">
             <!--    <img src="http://www.poliwangi.ac.id/vendors/uploads/2020/12/logo-poliwangi.png" class="logo"
                    alt=""> -->
                {{-- cuma iki perubahanku --}}
       
            </div>
            <div class="certificate-body">

                <!-- <p class="certificate-title"><strong>RENR NCLEX AND CONTINUING EDUCATION (CME) Review Masters</strong></p> -->
                <div class="text-center">
                    <img src="{{ ('poliwangi.jpg') }}" class="logo" alt="" style="max-width: 230px; max-height: 100px;margin-right: 2em">
                    
                    <img src="{{ ('img/'. $user->ukm->logo) }}" class="logo" alt="" style="max-width: 230px; max-height: 100px;">
                </div>
                <h2>SERTIFIKAT KEANGGOTAAN</h2>
                <h4>Diberikan Kepada : </h4>
                <h2 style="margin-top: -0.5em">
                    {{ $user->nama }}
                </h2>
                <h3 style="margin-top: -0.5em">Sebagai : </h3>
                <h3 style="text-transform: uppercase;margin-top: -0.5em">
                    {{ $user->devisi }}
                </h3>
                <div class="certificate-content" style="margin-top: -2em">
                    <div class="text-center">
                        <p class="topic-description text-muted" style="text-transform: uppercase;">
                            {{ $user->ukm->ukm }}
                        </p>

                    </div>
                     <div class="col-md-6 text-center" style="margin-top: -1em">
                            <p>Keperguruan selama satu periode di " Unit Kegiatan Mahasiswa {{ $user->ukm->desk_ukm->name }} " Periode {{Carbon\Carbon::parse($user->tahun_masuk)->translatedFormat('Y') }} /  {{Carbon\Carbon::parse($user->tahun_selesai)->translatedFormat('Y') }}</p>
                        </div>
                </div>
                    <div class="row">
                       
                         <div class="col-lg-12 text-center">
                            <div class="p-0">
                                <div  style="margin-left: -40em">
                                    <p>Wakil Direktur III</p>
                                    <p>Bidang Kemahasiswaan</p>
                                </div>
                                <div   style="margin-top: -5em;margin-left: 40em">
                                    <p>Pembina UKM {{ $user->ukm->ukm }}</p>
                                </div>
                            </div>
                        </div>
                         <div class="col-lg-12" style="margin-top: 5em">
                            <div class="p-0">
                                <div align="left">
                                ________________________________________
                                </div>
                                <div align="right" style="margin-top: -5em">
                                ________________________________________
                                </div>
                            </div>
                        </div> 
                </div>
            </div>
        </div>
    </div>
</body>

</html>

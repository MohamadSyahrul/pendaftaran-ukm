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
                <img src="http://www.poliwangi.ac.id/vendors/uploads/2020/12/logo-poliwangi.png" class="logo" alt="">
            </div>
            <div class="certificate-body">

                <!-- <p class="certificate-title"><strong>RENR NCLEX AND CONTINUING EDUCATION (CME) Review Masters</strong></p> -->
                <h1>SERTIFIKAT KEANGGOTAAN</h1>
                <p class="student-name">
                    {{ $user->nama }}
                </p>
                <div class="certificate-content">
                    <div class="text-center">
                        <p class="topic-description text-muted" style="text-transform: uppercase;">
                            Merupakan Anggota Resmi UKM {{ $user->ukm->ukm }}
                        </p>
                    </div>
                </div>
                <div class="certificate-footer text-muted">
                    <div class="row">
                        <div class="col-md-6">
                            <p>Principal: ______________________</p>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">
                                    <p>
                                        Accredited by
                                    </p>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        Endorsed by
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

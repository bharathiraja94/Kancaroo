<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:locale" content="en_US">
    <meta property="og:title" content="">
    <meta property="og:description" content="">
    <meta property="og:url" content="http://kancaroo.com/booking">
    <meta property="og:site_name" content="kancaroo">
    <meta property="og:image" content="http://kancaroo.com/assets/images/og-tag.jpg">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta property="og:image:type" content="image/webp">
    <!-- favicon -->
    <link rel="icon" type="image/x-icon" href="assets/images/kancaroo-fevicon.jpg">
    <!-- favicon -->
    <!-- bootstrap css link -->
    <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/style.css">
    <link rel="stylesheet" href="assets/response.css">

    <title>Booking confirm</title>
</head>

<body>
    <div class="container-fluid p-0 bg-white position-relative">
        <a class="navbar-brand d-none d-lg-block" href="./">
            <img src="assets/images/logo.svg" class="logo-image success-logo" alt="Represents our brand's identity and commitment to quality." width="166" height="166" loading="lazy">
        </a>
        <?php include 'confirmHeader.php'; ?>
    </div>
    <div class="container-fluid booking-section">
        <div class="container">
            <div class="row booking-row pt-lg-4 pb-lg-5">
                <div class="col d-md-none col-lg-1 ">
                </div>
                <div class="col col-md-7 col-lg-6 col-12 p-0 ">
                    <div class="py-4 px-lg-3 px-md-2  booking-col bg-white rounded-3 border border-1">
                        <div class="row booking-inline-row mx-lg-3 mx-md-2 mx-2 pb-3">
                            <div class="col col-md-1 col-2 p-0 text-center">
                                <img src="assets/images/booking/tick-circle-green.png" alt="tick-circle-green" width="34" height="34" loading="lazy">
                            </div>
                            <div class="col col-md-11 col-10 p-0">
                                <p class="main-heading green">Your Booking confirmed !</p>
                                <p class="text-para">We have assigned an expert team to your booking.</p>
                            </div>
                        </div>
                        <div class="row booking-inline-row pt-2 mx-lg-3 mx-2 pb-3">
                            <a href="#" class="text-span p-lg-0">Edit</a>

                            <div class="col col-md-7 col-6 p-md-0">
                                <p class="text-para mb-2">Contact Details</p>
                                <p class="sub-heading ">Rakesh Goutam</p>
                                <p class="text-para"><img src="assets/images/booking/circum_mobile.png" width="20" height="20" loading="lazy" alt="circum_mobile"> +91 9859855098 <a href="#" class="text-span">Add Secondary Mobile</a> </p>
                                <p class="text-para"><img class="booking-icons" src="assets/images/booking/fontisto_email.png" width="16" height="16" loading="lazy" alt="email"> rakesh@gmail.com </p>
                            </div>
                            <div class="col col-md-5 col-6 p-md-0">
                                <p class="text-para mb-2">Billing Details</p>
                                <p class="sub-heading">H3, Main Road, Jamnagar, Delhi, 100001 </p>
                                <div class="d-flex flex-wrap">
                                    <div class="col col-6  p-0">
                                        <p class="text-para">GST No:</p>
                                    </div>
                                    <div class="col col-6  p-0 ps-xl-2">
                                        <p class="sub-heading ">ESPS1524EPSD</p>
                                    </div>
                                    <div class="col col-6  p-0">
                                        <p class="text-para">Company Name:</p>
                                    </div>
                                    <div class="col col-6  p-0 ps-xl-2">
                                        <p class="sub-heading ">XYZ Company</p>
                                    </div>
                                    <div class="col col-6  p-0">
                                        <p class="text-para">Payment by:</p>
                                    </div>
                                    <div class="col col-6  p-0 ps-xl-2">
                                        <p class="sub-heading ">Company-Pay</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row booking-inline-row pt-3 mx-lg-3 mx-2 pb-3">
                            <!-- <a href="#" class="text-span">Edit</a> -->
                            <div class="col col-md-7 col-6 p-md-0">
                                <p class="text-para mb-2">Car Details</p>
                                <p class="sub-heading "><img src="assets/images/booking/Logo_Maruti_Suzuki.png" alt="carLogo" width="19" height="15" loading="lazy">Maruti Suzuki- Ertiga</p>
                                <p class="text-para black">White,Sedan </p>
                                <span class="sub-heading">
                                    <p class="text-para d-inline">Chassis No:</p> KC9J89LXUELE35433
                                </span>
                                <span class="sub-heading">
                                    <p class="text-para d-inline">Engine No:</p> JYCHH1600533
                                </span>
                                <span class="verified-text green"><img src="assets/images/booking/mdi_tick-10x10.png" width="10" height="10" loading="lazy" alt="mdi_tick"> Digitally verified by mParivahan</span>
                            </div>
                            <div class="col col-md-5 col-6 p-md-0">
                                <p class="text-para mb-2">Insurance Details:</p>
                                <p class="sub-heading">ICICI Lombard insurance </p>
                                <span class="sub-heading">
                                    <p class="text-para d-inline">Policy No:</p> 2022/104/15559
                                </span>
                                <span class="sub-heading mt-lg-4">
                                    <p class="text-para d-inline">Transit Insurance Details:</p>
                                </span>
                                <p class="sub-heading green">
                                    <img src="assets/images/booking/mdi_tick-14x14.png" alt="mdi_tick" width="14" height="14" loading="lazy">Opted
                                </p>
                            </div>
                        </div>
                        <div class="row pt-3 mx-lg-3 mx-2">
                            <div class="col col-md-7 col-6 p-md-0">
                                <p class="text-para">You are required to upload all the supporting documents
                                    on or before your pickup date</p>
                            </div>
                            <div class="col col col-md-5 col-6 p-md-0 text-lg-end align-self-center">
                                <a href="#" class="upload-btn">Upload Documents</a>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex flex-wrap align-items-center bg-white pt-2 pb-2 px-4 mt-4 rounded-3 border border-1">
                        <div class="col col-8 d-flex align-items-center">
                            <img src="assets/images/booking/car-condition-report.png" width="90" height="68" loading="lazy" alt="car-condition" style="padding-right: 7px;">
                            <p class="sub-heading f-20 fw-semibold ">
                                Your car condition report is ready.
                            </p>
                        </div>
                        <div class="col col-4 text-center">
                            <a href="#" class="view-repord f-15">View Car Report</a>
                        </div>
                    </div>
                    <div class="py-4 px-lg-3 px-2 mt-5 booking-col bg-white rounded-3 border border-1">
                        <p class="sub-heading f-20 fw-semibold  mx-lg-3 mx-2">Track Booking</p>
                        <div class="track-img d-flex mt-4 mx-lg-3 mx-2">
                            <img src="assets/images/booking/pickupfrom.png" width="20" height="20" loading="lazy" alt="pickupfrom" style="margin-top: 3px;">
                            <span class="sub-heading">
                                PICKUP FROM DELHI HUB
                                <p class="text-para">2nd Mar 2024</p>
                            </span>
                        </div>
                        <div class="track-img d-flex mt-5 mx-lg-3 mx-2">
                            <img src="assets/images/booking/pickupfrom.png" width="20" height="20" loading="lazy" alt="pickupfrom" style="margin-top: 3px;">
                            <span class="sub-heading">
                                REACHED HARYANA HUB
                                <p class="text-para">3rd Mar 2024</p>
                            </span>
                        </div>
                        <div class="track-img d-flex mt-5 mx-lg-3 mx-2">
                            <img src="assets/images/booking/pickupfrom.png" width="20" height="20" loading="lazy" alt="pickupfrom" style="margin-top: 3px;">
                            <span class="sub-heading">
                                DELIVERY DESTINATION-BANGALORE
                                <p class="text-para">3rd Mar 2024</p>
                            </span>
                        </div>
                    </div>
                </div>


                <!---------- right-column ---------->


                <div class="col col-md-4 col-lg-4 p-0">
                    <div class="booking-col py-4 px-lg-4 px-3 bg-white rounded-top-3 border border-bottom-0">
                        <div class="box pb-3 ">
                            <p class="sub-heading">Booking Details <span class="text-para black">#2024052365 </span> <span class="text-para black ps-lg-3"><img class="booking-icons" src="assets/images/booking/Car-Icon.png" width="35" height="14" loading="lazy" alt="carIcon">STANDARD</span></p>
                        </div>
                        <div class="pt-3  d-flex justify-content-between">
                            <p class="sub-heading f-15 text-center d-inline-block"><span class="text-span black Moulpali">DL 10</span><br> AN 2024</p>
                            <a href="#" class="text-span">Edit</a>
                        </div>
                        <div class="pt-3  d-flex justify-content-between">
                            <p class="text-para black"><img src="assets/images/booking/red_location.png" width="16" height="16" loading="lazy" alt="location-marker"> Delhi </p>
                            <p class="text-para red">Pickup Map Location</p>
                        </div>
                        <div class="booking-inline-row pt-1 pb-3 d-flex justify-content-between">
                            <p class="text-para black"><img src="assets/images/booking/black_location.png" width="16" height="16" loading="lazy" alt="location-marker"> Bangalore </p>
                            <p class="text-para">Delivery Map Location</p>
                        </div>
                        <div class=" pt-3 d-flex justify-content-between align-items-center">
                            <p class="sub-heading">
                                <span class="text-para">Pickup Date & Time</span> <br>
                                <img src="assets/images/form-icons/calendar.svg" width="20" height="20" loading="lazy" alt="calendar-icon"> 9th Mar 2024 13:40
                            </p>
                            <div>
                                <a href="#" class="reschedule-btn">Reschedule</a>
                            </div>

                        </div>
                    </div>
                    <div class="total-amout px-lg-4 px-3 pt-3 pb-2 border-start border-end d-flex justify-content-between">
                        <p class="sub-heading">
                            Total Amount
                        </p>
                        <p class="sub-heading f-20" style="line-height: 17px;">
                            Rs.12,000 <br>
                            <span class="text-span">Inclusive of all taxes</span>
                        </p>
                    </div>
                    <div class="pay-now px-lg-4 pt-3 pb-3 text-center">
                        <a href="#" class="pay-now-btn">Pay Now</a>
                    </div>

                    <div class="d-flex flex-wrap align-items-center bg-white pt-3 pb-3 px-3 mt-4 rounded-3 border border-1">
                        <div class="col col-4 d-flex align-items-center">
                            <img src="assets/images/booking/customer-subport.png" width="84" height="84" loading="lazy" alt="customer-subport">
                        </div>
                        <div class="col col-8">
                            <p class="sub-heading f-20 fw-semibold">
                                Looking for help?
                            </p>
                            <p class="text-para black mb-2">We are available all working days. You
                                can call us at </p>
                            <a href="#" class="text-para black fw-bold d-block" style="margin-bottom:-7px">044-26211718 / 26211819</a>
                            <a href="#" class="text-para black fw-bold">044-26208376 / 26208377</a>

                        </div>
                    </div>

                </div>


            </div>
        </div>

    </div>

    <!-- <div class="container-fluid blog-section  pt-5 pb-4">
        <div class="container mt-lg-3 mb-lg-3 p-md-0">
            <div class="row blog-row">
                <div class="col col-md-3 col-12 blog-text">
                    <span class="span-text">know more about us</span>
                    <h2 class="h2-heading-left">Blog</h2>
                    <p class="track-para">Stay tuned for insightful articles, industry news, and expert tips on car
                        carrier industry.</p>
                    <div class="d-none d-md-block">
                        <form action="/">
                            <button class="btn btn-dark outline-dark fw-bold" type="submit">
                                Read all blogs</button>
                        </form>
                    </div>
                </div>
                <div class="col col-md-3 col-12 img-blog">
                    <div class="card">
                        <img src="assets/images/blog-img-1.png" class="card-img-top img-fluid" alt="...">
                        <div class="card-body">
                            <p class="card-text"><img src="assets/images/calendar.png" alt="calendar" srcset="">25th Feb 2024</p>
                            <p class="card-title">Car Carrier In India- The fast and
                                reliable method</p>
                        </div>
                    </div>
                </div>
                <div class="col col-md-3 col-12 img-blog">
                    <div class="card">
                        <img src="assets/images/blog-img-2.png" class="card-img-top img-fluid" alt="...">
                        <div class="card-body">
                            <p class="card-text"><img src="assets/images/calendar.png" alt="calendar" srcset=""> 24th
                                Feb 2024</p>
                            <p class="card-title">The Pickup checklist to start your
                                car moving process</p>
                        </div>
                    </div>
                </div>
                <div class="col col-md-3 col-12 img-blog">
                    <div class="card">
                        <img src="assets/images/blog-img-3.png" class="card-img-top img-fluid" alt="...">
                        <div class="card-body">
                            <p class="card-text"><img src="assets/images/calendar.png" alt="calendar" srcset="">23th Feb
                                2024</p>
                            <p class="card-title">The routes of India that safe for
                                long drive</p>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div> -->



    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Kancaroo | Car Transportation Services, Car Packers & Movers</title>
    <meta name="description" content="Get top-notch and fast car transportation services in India with Kancaroo. Affordable rates, safe relocation, and expert packing. Book now!">
    <meta property="og:locale" content="en_US">
    <meta property="og:title" content="Kancaroo | Car Transportation Services, Car Packers & Movers">
    <meta property="og:description" content="Get top-notch and fast car transportation services in India with Kancaroo. Affordable rates, safe relocation, and expert packing. Book now!">
    <meta property="og:url" content="https://kancaroo.com/">
    <meta property="og:site_name" content="kancaroo">
    <meta property="og:image" content="https://kancaroo.com/assets/images/og-tag.jpg">
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
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-TDKX0EXNFW"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'G-TDKX0EXNFW');
    </script>
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-16517612478"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'AW-16517612478');
    </script>
</head>

<body>
    <div class="container-fluid success-banner p-0">
        <a class="navbar-brand d-none d-lg-block" href="./">
            <img src="assets/images/logo.svg" class="logo-image success-logo" alt="Represents our brand's identity and commitment to quality." width="166" height="166" loading="lazy">
        </a>
        <?php include 'header.php'; ?>

        <div class="full-form-modal py-4" id="fullDetailsFormModal" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered p-2 border border-1 rounded-3">
                <div class="modal-content border  bg-white rounded-3">
                    <div class="modal-header p-0 border-none">
                        <p class="modal-title"><span>hello</span> <span class="modal-title userName" id="userName"></span>,</p>
                        <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
                    </div>
                    <p class="form-para mb-0"> Please fill out your car details to ease the process</p>
                    <div class="modal-body">
                        <form method="post" id="fullDetailsForm" autocomplete="off">
                            <div class="row form-row">

                                <input type="hidden" name="bookingid" id="bookingid">
                                <input type="hidden" name="pickuplocation" id="pickupAddressText">
                                <input type="hidden" name="deliverylocation" id="deliveryAddressText">
                                <div class="col form-col col-md-4 col-12">
                                    <label for="email" class="form-label">Email<span class="req-span">*</span></label>
                                    <input type="email" name="email" id="email" placeholder="Enter@youremail.com" class="form-control">
                                </div>

                                <div class="col form-col payment-col col-md-4 col-12">
                                    <p class="form-label"> Payment Type</p>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" checked type="radio" id="selfPayment" name="payment_type" value="1">
                                        <label class="form-check-label" for="selfPayment">Self-Payment</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="payment_type" id="companyPayment" value="2">
                                        <label class="form-check-label" for="companyPayment">Company
                                            Pay</label>
                                    </div>
                                </div>
                                <div class="col form-col col-md-4 col-12" id="toggleColumn">
                                    <label for="company_name" class="form-label">Company Name</label>
                                    <input type="text" name="company_name" id="company_name" placeholder="XYZ Company" class="form-control">
                                    <ul id="companyname_suggestions" class="form-dropdown">
                                    </ul>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="toBePaid" name="bill_status" value="1">
                                        <label for="toBePaid" class="form-check-label">To be paid</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="bill_status" id="companyBill" value="2">
                                        <label for="companyBill" class="form-check-label">Company Bill</label>
                                    </div>
                                </div>
                            </div>
                            <h5 class="h5-title mt-3 mb-0"><img src="assets/images/form-icons/form-car.png" width="20" height="20" loading="lazy" alt="car symbolizes transportation" class="icons"> Car Details</h5>
                            <div class="row form-row">
                                <div class="col form-col col-md-4 col-12">
                                    <label for="name" class="form-label">Owner Name</label>
                                    <input type="text" name="name" class="form-control userName" id="name" placeholder="Name- As per RC Book">
                                </div>

                                <div class="col form-col col-md-4 col-12">
                                    <label for="carno" class="form-label">Car Number<span class="req-span">*</span></label>
                                    <input type="text" name="carno" id="carno" placeholder="Eg: DL10N1123" class="form-control">
                                </div>
                                <div class="col form-col col-md-4 col-12">
                                    <label for="carmake" class="form-label">Car Make<span class="req-span">*</span></label>
                                    <input type="text" name="carmake" id="carmake" placeholder="Eg: Maruti Suzuki" class="form-control">
                                    <ul id="carmake_suggestions" class="form-dropdown overflow-auto"></ul>
                                </div>
                                <div class="col form-col col-md-4 col-12">
                                    <label for="cartype" class="form-label">Body Type</label>
                                    <input type="text" name="cartype" id="cartype" placeholder="Eg: Sedan" class="form-control">
                                    <ul id="cartype_suggestions" class="form-dropdown"></ul>
                                </div>

                                <div class="col form-col col-md-4 col-12">
                                    <label for="carmodel" class="form-label">Car Model<span class="req-span">*</span></label>
                                    <input type="text" name="carmodel" id="carmodel" placeholder="Eg: Ertiga" class="form-control">
                                    <ul id="carmodel_suggestions" class="form-dropdown"></ul>
                                </div>

                                <div class="col form-col col-md-4 col-12">
                                    <label for="carcolour" class="form-label">Car Color</label>
                                    <input type="text" name="carcolour" id="carcolour" placeholder="Eg: White" class="form-control">
                                    <ul id="carcolour_suggestions" class="form-dropdown"></ul>
                                </div>
                                <div class="col form-col col-md-4 col-12 ">
                                    <label for="chasisno" class="form-label">Chassis No</label>
                                    <input type="text" name="chasisno" id="chasisno" placeholder="Eg: KC9J89LXUELE35433" class="form-control">
                                </div>
                                <div class="col form-col col-md-4 col-12">
                                    <label for="engineno" class="form-label">Engine No</label>
                                    <input type="text" name="engineno" id="engineno" placeholder="Eg: JYCHH16005" class="form-control">
                                </div>
                                <div class="col form-col col-md-4 col-12">
                                    <label for="insurance_no" class="form-label">Insurance Policy No</label>
                                    <input type="text" name="insurance_no" id="insurance_no" placeholder="Eg: 2022/525/2585" class="form-control">
                                </div>
                                <div class="col form-col col-md-4 col-12">
                                    <label for="insurance_company" class="form-label">Insurance Company</label>
                                    <input type="text" name="insurance_company" id="insurance_company" placeholder="Eg: ICICI Lombard" class="form-control">
                                    <ul id="insurance_company_suggestions" class="form-dropdown overflow-auto"></ul>
                                </div>

                                <h5 class="h5-title mt-3 mb-0"><img src="assets/images/form-icons/calendar.svg" width="20" height="20" loading="lazy" alt="Minimalistic red calendar icon on white." class="icons">Pickup Schedule</h5>

                                <div class="col form-col col-md-4 col-12">
                                    <label for="pickupaddress" class="form-label">Pickup Map Location</label>
                                    <input type="text" onclick="openModal()" name="pickuplocation_latlon" id="pickupaddress" placeholder="Select in Google map" class="form-control map-input-img">
                                </div>
                                <div class="col form-col col-md-4 col-12">
                                    <label for="deliveryaddress" class="form-label">Delivery Map Location</label>
                                    <input type="text" onclick="openModal()" name="deliverylocation_latlon" id="deliveryaddress" placeholder="Select in Google map" class="form-control map-input-img">
                                </div>
                                <div class="col form-col col-md-4 col-12">
                                    <label for="pickuptime" class="form-label">Pickup Date & Time</label>
                                    <input type="datetime-local" name="pickuptime" id="pickuptime" class="form-control input-calendar-img">
                                </div>
                                <div class="modal-footer pt-lg-5 pt-4 pb-2 pb-lg-5 text-center">
                                    <button type="submit" name="submit" class="btn btn-danger submit-btn mb-4">Submit
                                        <span class="sub-loading"><img src="assets/images/Loading.gif" width="25" height="25" loading="lazy" alt="Progress indicator" style="display:none;"></span>
                                    </button>
                                    <div class="form-footer text-start px-2">
                                        <p class="form-para title-danger">Documents Required</p>
                                        <p class="form-foot-text">1. Valid copy of the vehicle's RC book and PAN Card of the owner</p>
                                        <p class="form-foot-text">2. Copy of the vehicle's insurance, with a minimum validity of 15 days from the renewal date</p>
                                        <p class="form-foot-text">3. Ensure the vehicle has a minimum of 25% fuel in the fuel tank prior to transportation</p>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mapModal" id="mapModal">
        <div class="mapModal-content">
            <div class="mapModal-header">
                <button type="button" class="btn-close map-close" onclick="closeModal()"></button>
            </div>
            <div class="mapModal-body">
                <div id="map"></div>
            </div>
            <div class="mapModal-footer">
                <button type="button" class="btn map-submit btn-danger" onclick="setLocation()">Okay</button>
                <button type="button" id="clear_btn" class="btn" onclick="clearBtn()">Clear</button>
            </div>
        </div>
    </div>
    <?php include 'footer.php' ?>
    <script>
        let map;
        let markerPickup;
        let markerDelivery;
        let activeMarker;
        let geocoder;


        function initMap() {
            map = new google.maps.Map(document.getElementById("map"), {
                center: {
                    lat: 13.060644638899205,
                    lng: 80.27414512422938
                },
                zoom: 5,
                mapTypeControlOptions: {
                    mapTypeIds: ['roadmap', 'satellite', 'hybrid', 'terrain', 'custom']
                }
            });
            geocoder = new google.maps.Geocoder();

            markerDelivery = new google.maps.Marker({
                position: {
                    lat: 0,
                    lng: 0
                },
                map: map,
                title: 'P',
                draggable: true
            });

            markerPickup = new google.maps.Marker({
                position: {
                    lat: 0,
                    lng: 0
                },
                map: map,
                title: 'D',
                draggable: true
            });
            google.maps.event.addListener(map, "click", function(event) {
                activeMarker.setPosition(event.latLng);

                var lat = event.latLng.lat();
                var lng = event.latLng.lng();

                if (activeMarker === markerPickup) {
                    document.getElementById("pickupaddress").value = `${lat},${lng}`;
                } else {
                    document.getElementById("deliveryaddress").value = `${lat},${lng}`;
                }

                // Perform reverse geocoding
                var latlng = {
                    lat: lat,
                    lng: lng
                };
                geocoder.geocode({
                    location: latlng
                }, function(results, status) {
                    if (status === "OK") {
                        if (results[0]) {
                            var address = results[0].formatted_address;
                            if (activeMarker === markerPickup) {
                                document.getElementById("pickupAddressText").value = address;
                            } else {
                                document.getElementById("deliveryAddressText").value = address;
                            }
                        } else {
                            window.alert("No results found");
                        }
                    } else {
                        window.alert("Geocoder failed due to: " + status);
                    }
                });
            });
            google.maps.event.addListener(markerPickup, "click", function() {
                setActiveMarker(markerPickup);
            });
            google.maps.event.addListener(markerDelivery, "click", function() {
                setActiveMarker(markerDelivery);
            });
            google.maps.event.addListener(markerPickup, "dragend", function(event) {
                var lat = event.latLng.lat();
                var lng = event.latLng.lng();
                document.getElementById("pickupaddress").value = `${lat},${lng}`;

                var latlng = {
                    lat: lat,
                    lng: lng
                };
                geocoder.geocode({
                    location: latlng
                }, function(results, status) {
                    if (status === "OK") {
                        if (results[0]) {
                            var address = results[0].formatted_address;
                            if (activeMarker === markerPickup) {
                                document.getElementById("pickupAddressText").value = address;
                            }
                        } else {
                            window.alert("No results found");
                        }
                    } else {
                        window.alert("Geocoder failed due to: " + status);
                    }
                });

            });
            google.maps.event.addListener(markerDelivery, "dragend", function(event) {
                var lat = event.latLng.lat();
                var lng = event.latLng.lng();
                document.getElementById("deliveryaddress").value = `${lat},${lng}`;

                var latlng = {
                    lat: lat,
                    lng: lng
                };
                geocoder.geocode({
                    location: latlng
                }, function(results, status) {
                    if (status === "OK") {
                        if (results[0]) {
                            var address = results[0].formatted_address;
                            if (activeMarker === markerDelivery) {
                                document.getElementById("deliveryAddressText").value = address;
                            }
                        } else {
                            window.alert("No results found");
                        }
                    } else {
                        window.alert("Geocoder failed due to: " + status);
                    }
                });
            });
        }

        function setActiveMarker(marker) {
            activeMarker = marker;
        }

        document.getElementById("pickupaddress").addEventListener("click", function() {
            setActiveMarker(markerPickup);
        });

        document.getElementById("deliveryaddress").addEventListener("click", function() {
            setActiveMarker(markerDelivery);
        });
        document.addEventListener("DOMContentLoaded", function() {
            initMap();
        });

        function openModal() {
            let pickupaddress = document.getElementById("pickupaddress").value;
            let deliveryaddress = document.getElementById("deliveryaddress").value;

            document.getElementById("mapModal").style.display = "block";

            if (pickupaddress.length > 0 || deliveryaddress.length > 0) {
                document.getElementById("clear_btn").style.display = "block";
            } else {
                document.getElementById("clear_btn").style.display = "none";
            }
        }

        function setLocation() {
            let pickupaddress = document.getElementById("pickupaddress").value;
            let deliveryaddress = document.getElementById("deliveryaddress").value;
            if (pickupaddress.length > 0 || deliveryaddress.length > 0) {
                document.getElementById("mapModal").style.display = "none";

            } else {
                alert('Please Select Location')
            }
        }

        function closeModal() {
            document.getElementById("mapModal").style.display = "none";
        }

        function clearBtn() {
            document.getElementById("pickupaddress").value = "";
            document.getElementById("deliveryaddress").value = "";
            document.getElementById("pickupAddressText").value = "";
            document.getElementById("deliveryAddressText").value = "";
            document.getElementById("mapModal").style.display = "none";
        }
    </script>

    <script>
        const HTTP_BASE_URL = 'https://carcrmapi.anlyst.com/api/'
        // const name = localStorage.getItem('userName');
        // const mobile = localStorage.getItem('mobile');
        const urlParams = new URLSearchParams(window.location.search);
        const enqno = urlParams.get('bookingid');
        const accessToken = urlParams.get('access_token');
        const name = urlParams.get('name');
        const mobileNo = urlParams.get('mobile')
        //  console.log('accessToken', accessToken)
        //  console.log('mobileNo', mobileNo)
        document.getElementById('bookingid').value = enqno;
        document.getElementById('userName').textContent = name;
        document.getElementById('name').value = name;
        $(document).ready(function() {
            $('input[name="payment_type"]').on('change', function() {
                if ($('#companyPayment').is(':checked')) {
                    $('#toggleColumn').show();
                } else {
                    $('#toggleColumn').hide()
                }
            })

            $('#fullDetailsForm').validate({

                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                    payment_type: {
                        required: true,
                    },
                    company_name: {
                        letterswithspaces: true,
                        minlength: 2
                    },
                    name: {
                        letterswithspaces: true,
                        minlength: 2
                    },
                    carno: {
                        required: true,
                        carno: true
                    },
                    carmake: {
                        required: true,
                        letterswithspaces: true,
                        minlength: 2
                    },
                    cartype: {
                        letterswithspaces: true,
                        minlength: 2
                    },
                    carmodel: {
                        required: true,
                        minlength: 2
                    },
                    carcolour: {
                        letterswithspaces: true,
                        minlength: 2
                    },
                    chasisno: {
                        chassisEngine: true
                    },
                    engineno: {
                        chassisEngine: true
                    },
                    insurance_no: {
                        policyNo: true
                    },
                    insurance_company: {
                        letterswithspaces: true,
                        minlength: 2
                    }

                },
                message: {
                    email: {
                        required: 'This field is required.',
                        email: 'Please enter a valid email address.',
                    },
                    payment_type: {
                        required: 'This field is required.',
                    },
                    name: {
                        letterswithspaces: 'Please enter letters, spaces and periods only.',
                        minlength: 'Please enter at least 2 characters.'
                    },
                    carno: {
                        required: 'This field is required.',
                        carno: "Please enter a valid vehicle number (e.g, DL10N1123)."
                    },
                    carmake: {
                        required: 'This field is required.',
                        minlength: 'Please enter at least 2 characters.',
                        letterswithspaces: 'Please enter letters, spaces and periods only.',
                    },
                    cartype: {
                        letterswithspaces: 'Please enter letters, spaces and periods only.',
                        minlength: 'Please enter at least 2 characters.'
                    },
                    carmodel: {
                        required: 'This field is required.',
                        minlength: 'Please enter at least 2 characters.'
                    },
                    carcolour: {
                        letterswithspaces: 'Please enter letters, spaces and periods only.',
                        minlength: 'Please enter at least 2 characters.'
                    },
                    chasisno: {
                        chassisEngine: 'Please enter a valid number (10-20 alphanumeric characters).'
                    },
                    engineno: {
                        chassisEngine: 'Please enter a valid number (10-20 alphanumeric characters).'
                    },
                    insurance_no: {
                        policyNo: 'Please enter a valid number (10-20 alphanumeric characters, spaces, slash, and hyphen are allowed).'
                    },
                    insurance_company: {
                        letterswithspaces: 'Please enter letters, spaces and periods only.',
                        minlength: 'Please enter at least 2 characters.'
                    }

                },
                errorPlacement: function(error, element) {
                    error.appendTo(element.parent());
                }

            });

            $.validator.addMethod('carno', function(value, element) {
                return this.optional(element) || /^[A-Z]{2}\d{2}[A-Z]{1,2}\d{4}$/.test(value);
            }, "Please enter a valid vehicle number (e.g., DL10N1123).");

            $.validator.addMethod('letterswithspaces', function(value, element) {
                return this.optional(element) || /^[a-zA-Z\s\.\-]*$/.test(value);
            }, 'Please enter letters, spaces, hyphen and periods only.');

            $.validator.addMethod("chassisEngine", function(value, element) {
                // Regex for alphanumeric with 11-17 characters
                return this.optional(element) || /^[A-Z0-9]{10,20}$/.test(value);
            }, "Please enter a valid number (10-20 alphanumeric characters).");

            $.validator.addMethod('policyNo', function(value, element) {
                return this.optional(element) || /^[0-9A-Za-z\s\/\-]{10,20}$/.test(value);
            }, 'Please enter a valid number (10-20 alphanumeric characters, spaces, slash, and hyphen are allowed).');


            $('#fullDetailsForm').submit(function(event) {
                event.preventDefault();

                var radioInputs = document.getElementsByName('bill_status');
                var paymentType = $('input[name="payment_type"]:checked').val();
                var selectedValue = '';
                if (paymentType == "1") {
                    selectedValue = '0';
                } else if (paymentType == "2") {

                    for (var i = 0; i < radioInputs.length; i++) {
                        if (radioInputs[i].checked) {
                            selectedValue = radioInputs[i].value;
                            break;
                        }
                    }
                }
                var additionalData = {
                    mobile: mobileNo,
                    enqaccesstoken:accessToken,
                    // pickuplocation: $('#pickuplocation').val(),
                    // deliverylocation: $('#deliverylocation').val(),
                };

                if (paymentType == "1") {
                    additionalData.bill_status = selectedValue;
                }

                var formData = $(this).serialize();
                console.log('fullDetails', formData)

                var combinedData = formData + '&' + $.param(additionalData);
                // console.log('formData', combinedData)
                if ($(this).valid()) {
                    $.ajax({
                        url: HTTP_BASE_URL + "saveBookingbylink",
                        type: "post",
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded',
                            'access-token': '508b1430-68f0-4b2f-9003-3c2a0eb2a54a',
                        },
                        data: combinedData,
                        beforeSend: function() {
                            $('.sub-loading img').show();
                            $('#fullDetailsForm').find('input, button').attr('disabled', true);
                            $('#fullDetailsForm').addClass('disabled-form');
                        },
                        success: function(response) {
                            // alert(response.msg);
                            // console.log('fullDetails', response)
                            $('.sub-loading img').hide()
                            window.location.href = './success';
                            $('#fullDetailsForm').find('input, button').attr('disabled', false);
                            $('#fullDetailsForm').removeClass('disabled-form');
                            // localStorage.clear()
                        },
                        error: function(xhr, status, error) {
                            console.error(error);
                            alert('Error: ' + error);
                        }
                    });
                }
            });
            $('#company_name').on('keypress', function() {
                const companyNameQuery = $(this).val().toLowerCase();
                $.ajax({
                    url: HTTP_BASE_URL + 'getCompanyList',
                    method: 'post',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                        'access-token': '508b1430-68f0-4b2f-9003-3c2a0eb2a54a',
                    },
                    success: function(data) {
                        const response = data.data;
                        const companyNameList = response.filter(item => item.name.toLowerCase().includes(companyNameQuery));
                        // console.log('companyName', companyNameList);
                        $('#companyname_suggestions').empty();
                        if (companyNameList.length > 0) {
                            $('#companyname_suggestions').show();
                            companyNameList.forEach(item => {
                                $('#companyname_suggestions').append('<li data-name="' + item.name + '">' + item.name + '</li>');
                                // console.log('id-name', item.id, item.name)
                            });
                        } else {
                            $('#companyname_suggestions').hide();
                        }
                    }
                })
            })
            $('#companyname_suggestions').on('click', 'li', function() {
                const selectCompanyname = $(this).text();
                $('#company_name').val(selectCompanyname);
                $('#companyname_suggestions').hide();
            })


            $('#carmake').on('keypress', function() {
                const makeQuery = $(this).val().toLowerCase();

                $.ajax({
                    url: HTTP_BASE_URL + 'getCarModel',
                    method: 'post',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                        'access-token': '508b1430-68f0-4b2f-9003-3c2a0eb2a54a'
                    },
                    success: function(data) {
                        carData = [];
                        const response = data.data;
                        // console.log(response)
                        // Populate carData with relevant details
                        Object.keys(response).forEach(make => {
                            Object.keys(response[make]).forEach(model => {
                                Object.keys(response[make][model]).forEach(type => {
                                    const colors = response[make][model][type];
                                    colors.forEach(color => {
                                        carData.push({
                                            make: make,
                                            model: model,
                                            type: type,
                                            color: color
                                        });
                                    });
                                });
                            });
                        });

                        // Filter the car makes based on the query
                        const makeResult = carData.filter(item => item.make.toLowerCase().includes(makeQuery));

                        // Show suggestions for car makes
                        $('#carmake_suggestions').empty();
                        if (makeResult.length > 0) {
                            $('#carmake_suggestions').show();
                            const uniqueMakes = [...new Set(makeResult.map(item => item.make))];
                            uniqueMakes.forEach(make => {
                                $('#carmake_suggestions').append('<li data-make="' + make + '">' + make + '</li>');
                                // console.log('uniqueMakes', uniqueMakes)
                            });
                        } else {
                            $('#carmake_suggestions').hide();
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error('AJAX error:', error);
                    }
                });
            });

            // Event handler when a car make is selected
            $('#carmake_suggestions').on('click', 'li', function() {
                const selectedMake = $(this).text();
                $('#carmake').val(selectedMake);
                $('#carmake_suggestions').hide();

                // Filter and show car types based on selected make            

                const typeResult = carData.filter(item => item.make === selectedMake);
                const uniqueTypes = [...new Set(typeResult.map(item => item.type))];
                // console.log('uniqueTypes', uniqueTypes)
                $('#cartype_suggestions').empty();
                if (uniqueTypes.length > 0) {
                    $('#cartype_suggestions').show();
                    uniqueTypes.forEach(type => {
                        $('#cartype_suggestions').append('<li data-type="' + type + '">' + type + '</li>');
                    });
                } else {
                    $('#cartype_suggestions').hide();
                }
            });
            $('#cartype_suggestions').on('click', 'li', function() {
                const selectedType = $(this).text();
                const selectedMake = $('#carmake').val(); // Get the selected make from the input
                $('#cartype').val(selectedType);
                $('#cartype_suggestions').hide();

                // Filter and show car models based on selected make and type
                const modelResult = carData.filter(item => item.make === selectedMake && item.type === selectedType);
                const uniqueModels = [...new Set(modelResult.map(item => item.model))];
                // console.log('uniqueModels', uniqueModels);

                $('#carmodel_suggestions').empty();
                if (uniqueModels.length > 0) {
                    $('#carmodel_suggestions').show();
                    uniqueModels.forEach(model => {
                        $('#carmodel_suggestions').append('<li data-model="' + model + '">' + model + '</li>');
                    });
                } else {
                    $('#carmodel_suggestions').hide();
                }
                // Event handler when a car model is selected
                $('#carmodel_suggestions').on('click', 'li', function() {
                    const selectedModel = $(this).text();
                    $('#carmodel').val(selectedModel);
                    $('#carmodel_suggestions').hide();

                    // Filter and show car colors based on selected make, type, and model
                    const colorResult = carData.filter(item =>
                        item.make === selectedMake &&
                        item.type === selectedType &&
                        item.model === selectedModel
                    );
                    const uniqueColors = [...new Set(colorResult.map(item => item.color))];
                    // console.log('uniqueColors', uniqueColors);

                    $('#carcolour_suggestions').empty();
                    if (uniqueColors.length > 0) {
                        $('#carcolour_suggestions').show();
                        uniqueColors.forEach(color => {
                            $('#carcolour_suggestions').append('<li data-color="' + color + '">' + color + '</li>');
                        });
                    } else {
                        $('#carcolour_suggestions').hide();
                    }
                });
            });
            // Event handler for model input
            // $('#carmodel_suggestions').on('click', 'li', function() {
            //     const selectedModel = $(this).text();
            //     $('#carmodel').val(selectedModel);
            //     $('#carmodel_suggestions').hide();
            // });

            // Event handler for color input
            $('#carcolour_suggestions').on('click', 'li', function() {
                const selectColor = $(this).text();
                $('#carcolour').val(selectColor);
                $('#carcolour_suggestions').hide();
            });


            // $('#carmake').on('change', function() {
            //     $('#carmake_suggestions').hide();
            // })

            $('#cartype').on('keypress', function() {
                $('#cartype_suggestions').hide();
            })
            $('#carmodel').on('keypress', function() {
                $('#carmodel_suggestions').hide();
            })
            $('#carcolour').on('keypress', function() {
                $('#carcolour_suggestions').hide();
            })

            // insurance company list API

            $('#insurance_company').on('keypress', function() {
                const insuranceQuery = $(this).val().toLowerCase()
                $.ajax({
                    url: HTTP_BASE_URL + 'getInsuranceCompanyList',
                    method: 'post',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                        'access-token': '508b1430-68f0-4b2f-9003-3c2a0eb2a54a'
                    },
                    success: function(data) {
                        const response = data.data;
                        const insuranceList = response.filter(item => item.name.toLowerCase().includes(insuranceQuery));
                        // console.log('insuranceList', insuranceList);
                        $('#insurance_company_suggestions').empty();
                        if (insuranceList.length > 0) {
                            $('#insurance_company_suggestions').show();
                            insuranceList.forEach(item => {
                                $('#insurance_company_suggestions').append('<li data-id="' + item.id + '">' + item.name + '</li>');
                                // console.log('id-name', item.id, item.name)
                            });
                        } else {
                            $('#insurance_company_suggestions').hide();
                        }
                    }
                })
            })
            $('#insurance_company_suggestions').on('click', 'li', function() {
                const selectInsuranceCompany = $(this).text();
                $('#insurance_company').val(selectInsuranceCompany);
                $('#insurance_company_suggestions').hide();
            })
            $(document).on('click', function(e) {
                if (!$(e.target).closest('#company_name').length && !$(e.target).closest("#companyname_suggestions").length) {
                    $('#companyname_suggestions').hide();
                }
                if (!$(e.target).closest('#carmake').length && !$(e.target).closest('#carmake_suggestions').length) {
                    $('#carmake_suggestions').hide();
                }
                if (!$(e.target).closest('#insurance_company').length && !$(e.target).closest('#insurance_company_suggestions').length) {
                    $('#insurance_company_suggestions').hide();
                }
            });

        })
    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAX84ZKpYIp9O7prq3tsjFn_G4eeEdb9KY&libraries=places"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.20.0/jquery.validate.min.js" integrity="sha512-WMEKGZ7L5LWgaPeJtw9MBM4i5w5OSBlSjTjCtSnvFJGSVD26gE5+Td12qN5pvWXhuWaWcVwF++F7aqu9cvqP0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="assets/main.js" async></script>
</body>

</html>
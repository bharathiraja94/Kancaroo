<?php

require_once 'dbConfig.php';
require_once 'functions.php';


date_default_timezone_set('Asia/Kolkata');

$currentDateTime = date('Y-m-d H:i:s'); // Format the date and time


if (isset($_SERVER['HTTP_CF_CONNECTING_IP'])) {
    $visitor_ip = $_SERVER['HTTP_CF_CONNECTING_IP'];
} else {
    $visitor_ip = "00.00.000.00";
}

if (isset($_SERVER['HTTP_CF_IPCOUNTRY'])) {
    $visitor_country = $_SERVER['HTTP_CF_IPCOUNTRY'];
} else {
    $visitor_country = "00";
}

if (isset($_POST['section'])) {

    if ($_POST['section'] == 'initial_data_insert' || $_POST['section'] == 'full_data_insert') {
        $name = mysqli_real_escape_string($conn, $_POST['name']);
        $mobile_no = mysqli_real_escape_string($conn, $_POST['mobile_no']);
        $pickup_location = mysqli_real_escape_string($conn, $_POST['pickup_location']);
        $delivery_location = mysqli_real_escape_string($conn, $_POST['delivery_location']);
    }

    if ($_POST['section'] == 'initial_data_insert') {

        $utmCampaign = $_POST['utm_campaign'];
        $utmSource = $_POST['utm_source'];
        $utmMedium = $_POST['utm_medium'];
        $utmTerm = $_POST['utm_term'];
        $utmContent = $_POST['utm_content'];

        $sql = "INSERT INTO enquiries_form ( name, mobile_no, pickup_location, delivery_location, utm_campaign, utm_source, utm_medium, utm_term, utm_content, ipaddress, ipcountry, created_on) VALUES ('{$name}', '{$mobile_no}', '{$pickup_location}', '{$delivery_location}', '{$utmCampaign}', '{$utmSource}', '{$utmMedium}', '{$utmTerm}', '{$utmContent}','{$visitor_ip}','{$visitor_country}','{$currentDateTime}')";

        if (mysqli_query($conn, $sql)) {
            $last_inserted_id = mysqli_insert_id($conn);
            $subject = 'Car Carrier Enquiry';
            $message = '<!DOCTYPE html>
                        <html>
                        <head>
                            <style>
                                table {
                                font-family: "Public Sans", sans-serif;
                                border-collapse: collapse;
                                width: 100%;
                                }
                                
                                td, th {
                                border: 1px solid #dddddd;
                                text-align: left;
                                padding: 8px;
                                }
                                
                                tr:nth-child(even) {
                                background-color: #dddddd;
                                }
                            </style>
                        </head>
                        <body>
                            <h2>Car Carrier Enquiry</h2>
                            <table>
                            <tr>
                            <th>Name</th>
                            <td>' . $name . '</td>
                            </tr>
                            <tr>  
                            <th>Mobile Number</th>
                            <td>' . $mobile_no . '</td>
                            </tr>
                            <tr>  
                            <th>Pickup Location</th>
                            <td>' . $pickup_location . '</td>
                            </tr>
                            <tr>  
                            <th>Delivery Location</th>
                            <td>' . $delivery_location . '</td>
                            </tr>
                                
                            </table>
                        </body>
                        </html>';
            // $mail = send_mail('sathish.jc@kartwheelconsulting.com', $subject, $message);

            $data = [
                'admin_email' => 'bharathikinkwc@gmail.com',
                // 'admin_email' => 'sathish.jc@kartwheelconsulting.com',
                'admin_subject' => $subject,
                'admin_message' => $message
            ];

            $mail = send_mail($data);

            header("Content-Type: application/json");

            echo json_encode([
                "insert_id" => $last_inserted_id,
                "mail" => $mail
            ]);
        }
    }

    if ($_POST['section'] == 'full_data_insert') {

        $insert_id = mysqli_real_escape_string($conn, $_POST['insert_id']);
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $payment_type = mysqli_real_escape_string($conn, $_POST['payment_type']);
        $company_name = mysqli_real_escape_string($conn, $_POST['company_name']);
        $company_payment_type = mysqli_real_escape_string($conn, $_POST['company_payment_type']);
        $car_number = mysqli_real_escape_string($conn, $_POST['car_number']);
        $car_make = mysqli_real_escape_string($conn, $_POST['car_make']);
        $car_model = mysqli_real_escape_string($conn, $_POST['car_model']);
        $body_type = mysqli_real_escape_string($conn, $_POST['body_type']);
        $car_color = mysqli_real_escape_string($conn, $_POST['car_color']);
        $chassis_no = mysqli_real_escape_string($conn, $_POST['chassis_no']);
        $engine_no = mysqli_real_escape_string($conn, $_POST['engine_no']);
        $policy_no = mysqli_real_escape_string($conn, $_POST['policy_no']);
        $insurance_company = mysqli_real_escape_string($conn, $_POST['insurance_company']);
        $pickup_geo_location = mysqli_real_escape_string($conn, $_POST['pickup_geo_location']);
        $delivery_geo_location = mysqli_real_escape_string($conn, $_POST['delivery_geo_location']);
        $pickup_date = mysqli_real_escape_string($conn, $_POST['pickup_date']);

        $sql = "UPDATE enquiries_form SET email = '{$email}',payment_type = '{$payment_type}', company_name = '{$company_name}', company_payment_type = '{$company_payment_type}',  car_number = '{$car_number}',car_make ='{$car_make}', car_model ='{$car_model}',body_type ='{$body_type}',car_color = '{$car_color}',chassis_no ='{$chassis_no}',engine_no ='{$engine_no}',policy_no ='{$policy_no}',insurance_company ='{$insurance_company}',pickup_geo_location ='{$pickup_geo_location}',delivery_geo_location ='{$delivery_geo_location}',pickup_date ='{$pickup_date}' WHERE id = {$insert_id}";

        if (mysqli_query($conn, $sql)) {

            // $last_inserted_id = mysqli_insert_id($conn);
            $subject = 'Car Carrier Full Enquiry';
            $message = '<!DOCTYPE html>
                        <html>
                        <head>
                            <style>
                                table {
                                font-family: "Public Sans", sans-serif;
                                border-collapse: collapse;
                                width: 100%;
                                }
                                
                                td, th {
                                border: 1px solid #dddddd;
                                text-align: left;
                                padding: 8px;
                                }
                                
                                tr:nth-child(even) {
                                background-color: #dddddd;
                                }
                            </style>
                        </head>
                        <body>
                            <h2>Car Carrier Full Enquiry</h2>
                            <table>
                            <tr>
                            <th>Name</th>
                            <td>' . $name . '</td>
                            </tr>
                            <tr>
                            <th>Phone</th>
                            <td>' . $mobile_no . '</td>
                            </tr>
                            <tr>
                            <th>Pickup Location</th>
                            <td>' . $pickup_location . '</td>
                            </tr>
                            <tr>
                            <th>Delivery Location</th>
                            <td>' . $delivery_location . '</td>
                            </tr>
                            <tr>
                            <th>Email</th>
                            <td>' . $email . '</td>
                            </tr>
                            <tr>
                            <th>Payment Type</th>
                            <td>' . $payment_type . '</td>
                            </tr>
                            <tr>
                            <th>Company Name</th>
                            <td>' . $company_name . '</td>
                            </tr>
                            <tr>
                            <th>Company Payment Type</th>
                            <td>' . $company_payment_type . '</td>
                            </tr>
                            <tr>
                            <th>Car Number</th>
                            <td>' . $car_number . '</td>
                            </tr>
                            <tr>
                            <th>Car Make</th>
                            <td>' . $car_make . '</td>
                            </tr>
                            <tr>
                            <th>Car Model</th>
                            <td>' . $car_model . '</td>
                            </tr>
                            <tr>
                            <th>Body Type</th>
                            <td>' . $body_type . '</td>
                            </tr>
                            <tr>
                            <th>Car Color</th>
                            <td>' . $car_color . '</td>
                            </tr>
                            <tr>
                            <th>Chassis No</th>
                            <td>' . $chassis_no . '</td>
                            </tr>
                            <tr>
                            <th>Engine No</th>
                            <td>' . $engine_no . '</td>
                            </tr>
                            <tr>
                            <th>Insurance Policy No</th>
                            <td>' . $policy_no . '</td>
                            </tr>
                            <tr>
                            <th>Insurance Company</th>
                            <td>' . $insurance_company . '</td>
                            </tr>
                            <tr>
                            <th>Pickup Map Location</th>
                            <td>' . $pickup_geo_location . '</td>
                            </tr>
                            <tr>
                            <th>Delivery Map Location</th>
                            <td>' . $delivery_geo_location . '</td>
                            </tr>
                            <tr>
                            <th>Pickup Date & Time</th>
                            <td>' . $pickup_date . '</td>
                            </tr>
                            </table>
                        </body>
                        </html>';
            $data = [
                'admin_email' => 'bharathikinkwc@gmail.com',
                // 'admin_email' => 'sathish.jc@kartwheelconsulting.com',
                'admin_subject' => $subject,
                'admin_message' => $message,
                'user_email' => $email,
                'user_subject' => 'Welcome - ' . $name,
                'user_message' => welcomeMailDesign()
            ];

            send_mail($data);

            header("Content-Type: application/json");

            echo json_encode([
                "success" => true,
                "msg" => "We have received your request. We'll get in touch with you as soon as possible!"
            ]);
        }
    }

    if ($_POST['section'] == 'contact_data_insert') {
        $firstname = mysqli_real_escape_string($conn, $_POST['firstname']);
        $lastname = mysqli_real_escape_string($conn, $_POST['lastname']);
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $comments = mysqli_real_escape_string($conn, $_POST['comments']);

        $sql = "INSERT INTO contact_form ( firstname, lastname, email, comments) VALUES ('{$firstname}', '{$lastname}', '{$email}', '{$comments}')";

        if (mysqli_query($conn, $sql)) {
            $subject = 'Contact Enquiry';
            $message = '<!DOCTYPE html>
                        <html>
                        <head>
                            <style>
                                table {
                                font-family: "Public Sans", sans-serif;
                                border-collapse: collapse;
                                width: 100%;
                                }
                                
                                td, th {
                                border: 1px solid #dddddd;
                                text-align: left;
                                padding: 8px;
                                }
                                
                                tr:nth-child(even) {
                                background-color: #dddddd;
                                }
                            </style>
                        </head>
                        <body>
                            <h2>Contact Enquiry</h2>
                            <table>
                                <tr>
                                    <th>Firstname</th>
                                    <td>' . $firstname . '</td>
                                    </tr>
                                <tr>
                                    <th>Lastname</th>
                                    <td>' . $lastname . '</td>
                                    </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>' . $email . '</td>
                                    </tr>
                                <tr>
                                    <th>Comments</th>
                                    <td>' . $comments . '</td>
                                </tr>
                                
                            </table>
                        </body>
                        </html>';

            $data = [
                'admin_email' => 'bharathikinkwc@gmail.com',
                // 'admin_email' => 'sathish.jc@kartwheelconsulting.com',
                'admin_subject' => $subject,
                'admin_message' => $message
            ];

            $mail = send_mail($data);
            header("Content-Type: application/json");

            echo json_encode([
                "success" => true,
                "msg" => $mail
            ]);
        }
    }
}

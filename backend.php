<?php

require_once 'dbConfig.php';
require_once 'functions.php';


date_default_timezone_set('Asia/Kolkata');

$created_on = date('Y-m-d H:i:s'); // Format the date and time


if (isset($_SERVER['HTTP_CF_CONNECTING_IP'])) {
    $ipaddress = $_SERVER['HTTP_CF_CONNECTING_IP'];
} else {
    $ipaddress = "00.00.000.00";
}

if (isset($_SERVER['HTTP_CF_IPCOUNTRY'])) {
    $ipcountry = $_SERVER['HTTP_CF_IPCOUNTRY'];
} else {
    $ipcountry = "00";
}

if (isset($_POST['section'])) {

    if ($_POST['section'] == 'initial_data_insert' || $_POST['section'] == 'full_data_insert') {
        $name = mysqli_real_escape_string($conn, $_POST['name']);
        $mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
        $pickuplocation = mysqli_real_escape_string($conn, $_POST['pickuplocation']);
        $deliverylocation = mysqli_real_escape_string($conn, $_POST['deliverylocation']);
    }

    if ($_POST['section'] == 'initial_data_insert') {

        $utmCampaign = $_POST['utm_campaign'];
        $utmSource = $_POST['utm_source'];
        $utmMedium = $_POST['utm_medium'];
        $utmTerm = $_POST['utm_term'];
        $utmContent = $_POST['utm_content'];

        $sql = "INSERT INTO enquiries_form ( name, mobile, pickuplocation, deliverylocation, utm_campaign, utm_source, utm_medium, utm_term, utm_content, ipaddress, ipcountry, created_on) VALUES ('{$name}', '{$mobile}', '{$pickuplocation}', '{$deliverylocation}', '{$utmCampaign}', '{$utmSource}', '{$utmMedium}', '{$utmTerm}', '{$utmContent}','{$ipaddress}','{$ipcountry}','{$created_on}')";

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
                            <td>' . $mobile . '</td>
                            </tr>
                            <tr>  
                            <th>Pickup Location</th>
                            <td>' . $pickuplocation . '</td>
                            </tr>
                            <tr>  
                            <th>Delivery Location</th>
                            <td>' . $deliverylocation . '</td>
                            </tr>
                                
                            </table>
                        </body>
                        </html>';
            // $mail = send_mail('sathish.jc@kartwheelconsulting.com', $subject, $message);

            $data = [
                // 'admin_email' => 'bharathikinkwc@gmail.com',
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
        $bill_status = mysqli_real_escape_string($conn, $_POST['bill_status']);
        $carno = mysqli_real_escape_string($conn, $_POST['carno']);
        $carmake = mysqli_real_escape_string($conn, $_POST['carmake']);
        $carmodel = mysqli_real_escape_string($conn, $_POST['carmodel']);
        $cartype = mysqli_real_escape_string($conn, $_POST['cartype']);
        $carcolour = mysqli_real_escape_string($conn, $_POST['carcolour']);
        $chasisno = mysqli_real_escape_string($conn, $_POST['chasisno']);
        $engineno = mysqli_real_escape_string($conn, $_POST['engineno']);
        $insurance_no = mysqli_real_escape_string($conn, $_POST['insurance_no']);
        $insurance_company = mysqli_real_escape_string($conn, $_POST['insurance_company']);
        $pickuplocation_latlon = mysqli_real_escape_string($conn, $_POST['pickuplocation_latlon']);
        $deliverylocation_latlon = mysqli_real_escape_string($conn, $_POST['deliverylocation_latlon']);
        $pickuptime = mysqli_real_escape_string($conn, $_POST['pickuptime']);

        $sql = "UPDATE enquiries_form SET email = '{$email}',payment_type = '{$payment_type}', company_name = '{$company_name}', bill_status = '{$bill_status}',  carno = '{$carno}',carmake ='{$carmake}', carmodel ='{$carmodel}',cartype ='{$cartype}',carcolour = '{$carcolour}',chasisno ='{$chasisno}',engineno ='{$engineno}',insurance_no ='{$insurance_no}',insurance_company ='{$insurance_company}',pickuplocation_latlon ='{$pickuplocation_latlon}',deliverylocation_latlon ='{$deliverylocation_latlon}',pickuptime ='{$pickuptime}' WHERE id = {$insert_id}";

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
                            <td>' . $mobile . '</td>
                            </tr>
                            <tr>
                            <th>Pickup Location</th>
                            <td>' . $pickuplocation . '</td>
                            </tr>
                            <tr>
                            <th>Delivery Location</th>
                            <td>' . $deliverylocation . '</td>
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
                            <td>' . $carno . '</td>
                            </tr>
                            <tr>
                            <th>Car Make</th>
                            <td>' . $carmake . '</td>
                            </tr>
                            <tr>
                            <th>Car Model</th>
                            <td>' . $carmodel . '</td>
                            </tr>
                            <tr>
                            <th>Body Type</th>
                            <td>' . $cartype . '</td>
                            </tr>
                            <tr>
                            <th>Car Color</th>
                            <td>' . $carcolour . '</td>
                            </tr>
                            <tr>
                            <th>Chassis No</th>
                            <td>' . $chassis_no . '</td>
                            </tr>
                            <tr>
                            <th>Engine No</th>
                            <td>' . $engineno . '</td>
                            </tr>
                            <tr>
                            <th>Insurance Policy No</th>
                            <td>' . $insurance_no . '</td>
                            </tr>
                            <tr>
                            <th>Insurance Company</th>
                            <td>' . $insurance_company . '</td>
                            </tr>
                            <tr>
                            <th>Pickup Map Location</th>
                            <td>' . $pickuplocation_latlon . '</td>
                            </tr>
                            <tr>
                            <th>Delivery Map Location</th>
                            <td>' . $deliverylocation_latlon . '</td>
                            </tr>
                            <tr>
                            <th>Pickup Date & Time</th>
                            <td>' . $pickuptime . '</td>
                            </tr>
                            </table>
                        </body>
                        </html>';
            $data = [
                // 'admin_email' => 'bharathikinkwc@gmail.com',
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
                // 'admin_email' => 'bharathikinkwc@gmail.com',
                'admin_email' => 'sathish.jc@kartwheelconsulting.com',
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

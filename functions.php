<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

function send_mail($data)
{

    require 'PhpMailer/Exception.php';
    require 'PhpMailer/PHPMailer.php';
    require 'PhpMailer/SMTP.php';

    $mail = new PHPMailer(true);

    $admin_email = $data['admin_email'];
    $admin_subject = $data['admin_subject'];
    $admin_message = $data['admin_message'];

    $user_email = $data['user_email'] ?? null;
    $user_subject = $data['user_subject'] ?? null;
    $user_message = $data['user_message'] ?? null;

    try {

        // $mail->SMTPDebug = SMTP::DEBUG_SERVER;
        $mail->SMTPDebug = false;
        $mail->isSMTP();
        $mail->Host       = 'mail.authsmtp.com';
        $mail->SMTPAuth   = true;
        $mail->Username   = 'ac80073';
        $mail->Password   = 'busch-dried-drape-d';
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port       = 465;

        //Recipients
        $mail->setfrom('support@kancaroo.com', 'Kancaroo');
        $mail->addAddress($admin_email);
        // $mail->addBCC('kaleel.s@kartwheelconsulting.com');
        // $mail->addBCC('bharathikinkwc@gmail.com');
        // $mail->addAddress('ellen@example.com');               
        // $mail->addReplyTo('info@example.com', 'Information');
        // $mail->addCC('cc@example.com');

        //Attachments
        // $mail->addAttachment('/var/tmp/file.tar.gz');         
        // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    

        //Content
        $mail->isHTML(true);
        $mail->Subject = $admin_subject;
        $mail->Body    = $admin_message;
        // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        $mail->send();
        if (empty($user_email)) {
            return 'Admin Message has been sent';
        }
    } catch (Exception $e) {
        if (empty($user_email)) {
            return "Admin Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }

    if (!empty($user_email)) {

        try {
            // $mail->SMTPDebug = SMTP::DEBUG_SERVER;
            $mail->SMTPDebug = false;
            $mail->isSMTP();
            $mail->Host       = 'mail.authsmtp.com';
            $mail->SMTPAuth   = true;
            $mail->Username   = 'ac80073';
            $mail->Password   = 'busch-dried-drape-d';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
            $mail->Port       = 465;

            //Recipients
            $mail->setfrom('support@kancaroo.com', 'Kancaroo');
            $mail->addAddress($user_email);
            // $mail->addBCC('kaleel.s@kartwheelconsulting.com');
            // $mail->addBCC('bharathikinkwc@gmail.com');
            // $mail->addAddress('ellen@example.com');               
            // $mail->addReplyTo('info@example.com', 'Information');
            // $mail->addCC('cc@example.com');

            //Attachments
            // $mail->addAttachment('/var/tmp/file.tar.gz');         
            // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    

            //Content
            $mail->isHTML(true);
            $mail->Subject = $user_subject;
            $mail->Body    = $user_message;
            // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            return 'Admin and Client Message has been sent';
        } catch (Exception $e) {
            return "Admin and Client Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
}

function welcomeMailDesign()
{
    return '<!DOCTYPE html>
    <html>
    <head>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
    </style>
</head>

<body>
    <table style="min-width: 280px; max-width: 600px;margin: auto;text-align: center;font-weight: 400;font-family: Poppins, sans-serif;">
        <thead>
            <tr>
                <th style="height: 170px;width: 100%;">
                    <img src="https://kancaroo.com/assets/images/mailer/mailer-logo.png" alt="Logo for Kancaroo Trusted Car Carriers, featuring a sleek design with a car silhouette and the company name." width="147" height="147" loading="lazy">
                </th>
            </tr>
        </thead>
        <tbody style="display: block; padding-bottom: 30px; background-color: #ffffff;">
            <tr>
                <td style="background-color: #ECECEC;">
                    <img src="https://kancaroo.com/assets/images/mailer/mail-banner.png" alt="Kancaroo Trusted Car Carriers, featuring a sleek design with a car silhouette and the company name." width="600" height="548" loading="lazy">

                </td>
            </tr>
            <tr>
                <td style="padding: 30px 15px 0px 15px;">
                    <h1 style="font-size: 30px; line-height: 40px; font-weight: 600; color: #D7000C;">Thank you for reaching out to Kancaroo Car Carriers!</h1>
                    <p style="font-size: 16px; margin: 0; line-height: 24px;padding: 0px 25px;">Your inquiry is important to us. Our team will review it
                        promptly and get back to you with the information you need. Safe travels ahead!</p>
                </td>
            </tr>
            <tr>
                <td style="padding-top:40px;padding-bottom:15px;">
                    <span style="font-size: 16px;font-weight: 600;color: #D60011;line-height: 24px;">Follow us on</span>
                </td>
            </tr>
            <tr>
                <td style="display:inline;padding: 10px;">
                    <a style="text-decoration: none;" target="_blank" rel="nofollow" href="https://twitter.com/kancaroocar">
                        <img src="https://kancaroo.com/assets/images/mailer/twitter.png" width="32" height="32" loading="lazy" alt="Represents connectivity, social media engagement, and networking.">
                    </a>
                </td>
                <td style="display:inline;padding: 10px;">
                    <a style="text-decoration: none;" target="_blank" rel="nofollow" href="https://www.instagram.com/kancaroocarcarriers/">
                        <img src="https://kancaroo.com/assets/images/mailer/instagram.png" width="32" height="32" loading="lazy" alt="Symbolizes visual storytelling, creativity, and social interaction.">
                    </a>
                </td>
                <td style="display:inline;padding: 10px;">
                    <a style="text-decoration: none;" target="_blank" rel="nofollow" href="https://www.facebook.com/people/Kancaroo-Car-Carriers/61557762279110/">
                        <img src="https://kancaroo.com/assets/images/mailer/facebook.png" width="32" height="32" loading="lazy" alt="Represents social connection, community engagement, and brand presence.">
                    </a>
                </td>
            </tr>
        </tbody>
    </table>
</body>
    
    </html>';
}

<?php

header('Content-Type: application/json');

date_default_timezone_set('Asia/Kolkata');

$createdAt = date('Y-m-d H:i:s'); // Format the date and time

if (isset($_SERVER['HTTP_CF_CONNECTING_IP'])) {
  $visitorIp = $_SERVER['HTTP_CF_CONNECTING_IP'];
} else {
  $visitorIp = $_SERVER['REMOTE_ADDR'] ?? "00.00.000.00";
}

if (isset($_SERVER['HTTP_CF_IPCOUNTRY'])) {
  $visitorCountry = $_SERVER['HTTP_CF_IPCOUNTRY'];
} else {
  $visitorCountry = "00";
}

echo json_encode([
  'created_at' => $createdAt,
  'ip_address' => $visitorIp,
  'ip_country' => $visitorCountry
]);
die;
?>

/ Set cookies  /

//  https://kancaroo.com/?utm_source=Search&utm_medium=SERP&utm_campaign=googleSERP


function getUrlParameter(name) {
  name = name.replace(/[\[\]]/g, "\\$&");
  var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
    results = regex.exec(window.location.href);
  if (!results) return null;
  if (!results[2]) return '';
  return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function setCookie(name, value, days) {
  var expires = "";
  if (days) {
    var date = new Date();
    // date.setTime(date.getTime() + (days  24  60  60  1000));
    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000)); 
    expires = "; expires=" + date.toUTCString();
  }
  document.cookie = name + "=" + value + expires + "; path=/";
}

function getCookie(name) {
  var nameEQ = name + "=";
  var cookies = document.cookie.split(';');
  for (var i = 0; i < cookies.length; i++) {
    var cookie = cookies[i];
    while (cookie.charAt(0) === ' ') {
      cookie = cookie.substring(1, cookie.length);
    }
    if (cookie.indexOf(nameEQ) === 0) {
      return cookie.substring(nameEQ.length, cookie.length);
    }
  }
  return null;
}

function setUtmSourceCookie() {
  var utmCampaign = getUrlParameter('utm_campaign');
  var utmSource = getUrlParameter('utm_source');
  var utmMedium = getUrlParameter('utm_medium');
  var utmTerm = getUrlParameter('utm_term');
  var utmContent = getUrlParameter('utm_content');

  var existingutmCampaign = getCookie('utm_campaign');
  var existingutmSource = getCookie('utm_source');
  var existingutmMedium = getCookie('utm_medium');
  var existingutmTerm = getCookie('utm_term');
  var existingutmContent = getCookie('utm_content');
  // console.log(existingCampaignSource);die('s');

  //   if (!existingCampaignSource && !campaignSource) {
  //   campaignSource = 'default_campaign_source'; // Set a default value if campaign_source is not in the URL
  // }


  // UTMCAMPAIN 

  if (utmCampaign && !existingutmCampaign) {
    document.getElementById('utm_campaign').value = utmCampaign;
    setCookie('utm_campaign', utmCampaign, 30); // Set the cookie for 30 days
  }
  else if (!utmCampaign && existingutmCampaign) {
    document.getElementById('utm_campaign').value = existingutmCampaign;
    //  console.log(document.getElementById('utm_campaign').value);
  }
  else if (utmCampaign && existingutmCampaign) {
    document.getElementById('utm_campaign').value = utmCampaign;
  }


  // utmSource

  if (utmSource && !existingutmSource) {
    document.getElementById('utm_source').value = utmSource;
    setCookie('utm_source', utmSource, 30); // Set the cookie for 30 days
  }
  else if (!utmSource && existingutmSource) {
    document.getElementById('utm_source').value = existingutmSource;
  }
  else if (utmSource && existingutmSource) {
    document.getElementById('utm_source').value = utmSource;
  }


  // utmMedium

  if (utmMedium && !existingutmMedium) {
    document.getElementById('utm_medium').value = utmMedium;
    setCookie('utm_medium', utmMedium, 30); // Set the campaign_medium cookie for 30 days
  }
  else if (!utmMedium && existingutmMedium) {
    document.getElementById('utm_medium').value = existingutmMedium;
  }
  else if (utmMedium && existingutmMedium) {
    document.getElementById('utm_medium').value = utmMedium;
  }

  // utmTerm

  if (utmTerm && !existingutmTerm) {
    document.getElementById('utm_term').value = utmTerm;
    setCookie('utm_term', utmTerm, 30); // Set the campaign_medium cookie for 30 days
  }
  else if (!utmTerm && existingutmTerm) {
    document.getElementById('utm_term').value = existingutmTerm;
  }
  else if (utmTerm && existingutmTerm) {
    document.getElementById('utm_term').value = utmTerm;
  }


  //utmContent

  if (utmContent && !existingutmContent) {
    document.getElementById('utm_content').value = utmContent;
    setCookie('utm_content', utmContent, 30); // Set the campaign_medium cookie for 30 days
  }
  else if (!utmContent && existingutmContent) {
    document.getElementById('utm_content').value = existingutmContent;
  }
  else if (utmContent && existingutmContent) {
    document.getElementById('utm_content').value = utmContent;
  }
}

window.onload = setUtmSourceCookie;

/ Set cookie end /


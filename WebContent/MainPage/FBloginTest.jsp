<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>


</head>
<body>

<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '{146058172693840}',
      cookie     : true,
      xfbml      : true,
      version    : '{v2.11}'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));

  FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
  });
  

  {
      status: 'connected',
      authResponse: {
          accessToken: '...',
          expiresIn:'...',
          signedRequest:'...',
          userID:'...'
      }
  }
  

  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }
</script>
  <fb:login-button 
    scope="public_profile,email"
    onlogin="checkLoginState();">
  </fb:login-button>
</body>
</html>
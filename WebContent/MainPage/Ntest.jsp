<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>���̹��α���</title>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  </head>
  <body>
   <!-- ���̹����̵�ηα��� ��ư ���� ���� -->
  <div id="naver_id_login"></div>
  <!-- //���̹����̵�ηα��� ��ư ���� ���� -->
  <script type="text/javascript">
  	var naver_id_login = new naver_id_login("SIQHbLAs_dHT9FjtBD45", "http://192.168.219.105:8080/SP/Ntest.jsp");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain(".service.com");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
  
  <script type="text/javascript">
  var naver_id_login = new naver_id_login("SIQHbLAs_dHT9FjtBD45", "http://192.168.219.105:8080/SP/Ntest.jsp");
  // ���� ��ū �� ���
  alert(naver_id_login.oauthParams.access_token);
  // ���̹� ����� ������ ��ȸ
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // ���̹� ����� ������ ��ȸ ���� ������ ������ ó���� callback function
  function naverSignInCallback() {
    alert(naver_id_login.getProfileData('email'));
    alert(naver_id_login.getProfileData('nickname'));
    alert(naver_id_login.getProfileData('age'));
  }
</script>
  
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>KAKAO PAY</title>
</head>
<body>
<script type="text/javascript">

var IMP = window.IMP; // 생략가능
IMP.init('imp04196305'); 
IMP.request_pay({
   pg : 'kakao', // 결제방식
    pay_method : 'card',	// 결제 수단
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '고봉민김밥',	// order 테이블에 들어갈 주문명 혹은 주문 번호
    amount : '1500',	// 결제 금액
    buyer_email : '',	// 구매자 email
    buyer_name :  '',	// 구매자 이름
    buyer_tel :  '',	// 구매자 전화번호
    buyer_addr :  '',	// 구매자 주소
    buyer_postcode :  '',	// 구매자 우편번호
    m_redirect_url : '/khx/payEnd.action'	// 결제 완료 후 보낼 컨트롤러의 메소드명
}, function(rsp) {
	if ( rsp.success ) { // 성공시
		var msg = '결제가 완료되었습니다.';
		msg += '고유ID : ' + rsp.imp_uid;
		msg += '상점 거래ID : ' + rsp.merchant_uid;
		msg += '결제 금액 : ' + rsp.paid_amount;
		msg += '카드 승인번호 : ' + rsp.apply_num;
	} else { // 실패시
		var msg = '결제에 실패하였습니다.';
		msg += '에러내용 : ' + rsp.error_msg;
	}
});
</script>
</body>
</html>
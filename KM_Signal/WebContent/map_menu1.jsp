<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>마커 클러스터러에 클릭이벤트 추가하기</title>
<script type = "text/javascript" src = "http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<link rel = "stylesheet" href = "./css/infowindow_style.css">
</head>
<body>
<p style="margin-top:-12px">
    <em class="link">
      
    </em>
</p>
<div id="map" style="width:85%;height:800px;margin:0 auto;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5cf392dde7cf12d178ac57abcafcd80e&libraries=clusterer"></script>
<script>
$(document).ready(function() {
	
	 var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
	        center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
	        level : 12 // 지도의 확대 레벨 
	    });
	    // 마커 클러스터러를 생성합니다
	    var clusterer = new kakao.maps.MarkerClusterer({
	        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
	        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
	        minLevel: 10 // 클러스터 할 최소 지도 레벨
	    });
	    // 데이터를 가져오기 위해 jQuery를 사용합니다
	    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
	    $.get("resources/gyeonggi-do_high_school20.json", function(data) {
	        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
	        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
	        var markers = $(data.positions).map(function(i, position) {
	        	var marker = new kakao.maps.Marker({
	                position : new kakao.maps.LatLng(position.latitude, position.longitude),
	            	clickable: true
	            });
	            
	            var infowindow = new kakao.maps.InfoWindow({
	                content : '<div class ="info"><div class = "info-title"><strong>'+ position.high_school_name +
	                '</strong></div><div class = "info-body">'+ position.applicant +'</div>'+
	                '<div class = "info-sub">'+ position.major_applicant +'</div><div class = "info-button"><a href="ranking.jsp?pageChange=ranking_menu_department1.jsp">이동</a></div></div>',
	            });
	            
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	            	    infowindow.open(map, marker);
	            	});
	            
	            kakao.maps.event.addListener(map, 'click', function() {
	                // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
	                infowindow.close();
	            });
	        	return marker;
	            
	        });

	        // 클러스터러에 마커들을 추가합니다
	        clusterer.addMarkers(markers);
	        
	        console.log(markers);
	    });
	    
	 	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	    var mapTypeControl = new kakao.maps.MapTypeControl();

	    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	    var zoomControl = new kakao.maps.ZoomControl();
	    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
});

</script>
</body>
</html>
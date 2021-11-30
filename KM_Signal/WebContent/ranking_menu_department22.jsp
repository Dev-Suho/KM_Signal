<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ranking</title>
	
	<!-- datatable library -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>

	<!-- css -->
	<link rel = "stylesheet" href = "./css/sub_header.css">
	<link rel = "stylesheet" href="./css/table_style.css">
		
	<link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css ">
      <script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

</head>
<body>
	<main class="container text-center">
 		<div class="bg-right p-3 rounded">
    		<h1>2021년 호텔외식조리과 지원자 통계</h1>  
  		</div>
		<table id="myTable" class="cell-border stripe order-column hover">
			<thead>
				<tr>
					<th>고등학교</th>
					<th>분류</th>
					<th>지원자 수</th>
					<th>합격자 수</th>
					<th>등록자 수</th>
					<th>선호도( Z점수 )</th>
				</tr>
			</thead>
		</table>

		<script>
	<!-- Datatable에 사용할 한글 세팅 -->
	var lang_kor = {
	        "decimal" : "",
	        "emptyTable" : "데이터가 없습니다.",
	        "info" : "_START_ - _END_ (총 _TOTAL_ 개)",
	        "infoEmpty" : "0명",
	        "infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
	        "infoPostFix" : "",
	        "thousands" : ",",
	        "lengthMenu" : "_MENU_ 개씩 보기",
	        "loadingRecords" : "로딩중...",
	        "processing" : "처리중...",
	        "search" : "검색 : ",
	        "zeroRecords" : "검색된 데이터가 없습니다.",
	        "paginate" : {
	            "first" : "첫 페이지",
	            "last" : "마지막 페이지",
	            "next" : "다음",
	            "previous" : "이전"
	        },
	        "aria" : {
	            "sortAscending" : " :  오름차순 정렬",
	            "sortDescending" : " :  내림차순 정렬"
	        }
	    };
	
		$(document).ready(function() {
			$("#myTable").DataTable({
				order : [ [ 0, "asc" ] ], // 항목 정렬
				displayLength : 25,
				className : 'dt-body-center',
				<!-- dataframe형태를 datatable로 표현하려면 record 형태로 추출해야함  -->
				ajax : {
					url : "resources/department/department_volunteer_2021_호텔외식조리과.json",
					dataSrc : ''
				},
				columns : [ 
					{ "data" : "고등학교" }, 
					{ "data" : "고교구분" },
					{ "data" : "지원자" },
					{ "data" : "합격자" }, 
					{ "data" : "등록자" },
					{ "data" : "Z_Score" }
					],
					language : lang_kor
			});
		})

	</script>

	</main>
</body>
</html>
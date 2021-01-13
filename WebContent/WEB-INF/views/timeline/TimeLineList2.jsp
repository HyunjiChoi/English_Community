<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('.Update').click(function() {
			console.log($(this).val())
			$.ajax({
				url : "TimeLineEdit.tc",
				dataType : "html",
				type : "post", // post 또는 get
				data : {
					timeLineNumber : $(this).val()
				},
				success : function(result) {
					$("#Edit").html(result);
				}
			});
		});

		$('.next').click(function() {
			console.log($(this).val())
			$.ajax({
				url : "TimeLineList.tc",
				dataType : "html",
				type : "post", // post 또는 get
				data : {
					cp : $(this).val()
				},
				success : function(result) {
					$("#Edit").html(result);
				}
			});
		});

		$('.prev').click(function() {
			console.log($(this).val())
			$.ajax({
				url : "TimeLineList.tc",
				dataType : "html",
				type : "post", // post 또는 get
				data : {
					cp : $(this).val()
				},
				success : function(result) {
					$("#Edit").html(result);
				}
			});
		});
		$('.page').click(function() {
			console.log($(this).val())
			$.ajax({
				url : "TimeLineList.tc",
				dataType : "html",
				type : "post", // post 또는 get
				data : {
					cp : $(this).val()
				},
				success : function(result) {
					$("#Edit").html(result);
				}
			});
		});

	});
</script>

</head>
<body>


	<c:set var="timelinelist" value="${requestScope.timelinelist}" />
	<c:set var="pagesize" value="${requestScope.pagesize}" />
	<c:set var="pagecount" value="${requestScope.pagecount}" />
	<c:set var="currpage" value="${requestScope.currpage}" />

	<div class="TimeLineContent">
		<!-- 오늘의 회화 -->
		<div class="row" id="Edit">
			<div class="form-group" id="List" style="width:100%">
					<section class="panel">
						<div class="table-responsive">
							<table id="customers" style="width:100%">
								<tbody>
									<c:forEach var="timeline" items="${requestScope.timelinelist}"
										varStatus="status">
										<tr>
											<td class="number"><b>${timeline.timeLineNumber}</b></td>
											<td style="whidt: 100%"><b style="float: left">영문:${timeline.content_eng}</b>
											<br> 
											<b style="float: left">한글:${timeline.content_kor}</b>												
											</td>
											<td class="edit">
												<button type="" class="Update" id="Up"
													value="${timeline.timeLineNumber}">수정</button>
												<br> 
												<div class="today-delete">
													<a href="TimeLineDelete.tc?timeLineNumber=${timeline.timeLineNumber}">삭제</a>
												</div>
											</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</section>


				<div class="d-flex justify-content-between mt-0">
					<ul class="pagination pagination-lg" style="margin: 0 auto;text-align:center;">
						<c:if test="${currpage>1}">
							<!-- 이전 버튼 생성 조건 -->
							<li class="page-item"><button class="page-link prev"
									id="prev" value="${currpage-1}">이전</button></li>
						</c:if>

						<!-- 페이지 번호 -->
						<c:forEach var="pnum" begin="1" end="${pagecount}" step="1">
							<c:choose>
								<c:when test="${currpage == pnum}">
									<li class="page-item"><a href="#" class="page-link">${pnum}</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item">
										<button class="page-link page" value="${pnum}">${pnum}</button>
									</li>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<!-- 다음 버튼 -->
						<c:if test="${currpage < pagecount}">
							<li class="page-item">
								<button class="page-link next" id="next" value="${currpage+1}">다음</button>
							</li>
						</c:if>
					</ul>
				</div>

			</div>

		</div>
	</div>


</body>
</html>


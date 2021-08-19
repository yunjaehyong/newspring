<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="${pageContext.request.contextPath}/resources/js1/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js1/common.js"></script>
<jsp:include page="/WEB-INF/views/include/top.jsp" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button type="button" onclick="randomLaunch()" style="position: relative;height: 300px;width: 300px;top: 165px">오늘의 점심추천 메뉴는???</button>
</body>

<script>

var rd = new Array('김치찌개','라면','비빔밥','돌솥비빔밥','제육볶음','된장찌개')

rd[Math.floor(Math.random() * rd.length)]


function randomLaunch(){
	
	var cf = confirm("준비하시고 누르세요~!~~~")
	
	if(cf){
		
		if(confirm(rd[Math.floor(Math.random() * rd.length)])){
			
		}else if (confirm("싫어 그럼 이건?")){
			
			if(confirm(rd[Math.floor(Math.random() * rd.length)])){
				
			}else if(confirm("너 까다롭구나 그럼 이건?")){
				if(confirm(rd[Math.floor(Math.random() * rd.length)])){
					
				}else if(confirm("너 까다롭구나 그럼 이건?2")){
					if(confirm(rd[Math.floor(Math.random() * rd.length)])){
						
					}else if(confirm("너 까다롭구나 그럼 이건?3")){
						if(confirm(rd[Math.floor(Math.random() * rd.length)])){
						}else if(confirm("너 까다롭구나 그럼 이건?3")){
							if(confirm(rd[Math.floor(Math.random() * rd.length)])){
							}else if(confirm("너 까다롭구나 그럼 이건?4")){
								if(confirm(rd[Math.floor(Math.random() * rd.length)])){
								}else if(confirm("너 까다롭구나 그럼 이건?5")){
									if(confirm(rd[Math.floor(Math.random() * rd.length)])){
									}else if(confirm("너 까다롭구나 그럼 이건?6")){
										if(confirm(rd[Math.floor(Math.random() * rd.length)])){
										}else if(confirm("너 까다롭구나 그럼 이건?7")){
											if(confirm(rd[Math.floor(Math.random() * rd.length)])){
											}else if(confirm("너 까다롭구나 그럼 이건?8")){
												if(confirm(rd[Math.floor(Math.random() * rd.length)])){
												}else if(confirm("너 까다롭구나 그럼 이건?9")){
													if(confirm(rd[Math.floor(Math.random() * rd.length)])){
													}else if(confirm("너 까다롭구나 그럼 이건?10")){
														if(confirm(rd[Math.floor(Math.random() * rd.length)])){
														}else if(confirm("너 까다롭구나 그럼 이건?11")){
															if(confirm(rd[Math.floor(Math.random() * rd.length)])){
															}else if(confirm("너 까다롭구나 그럼 이건?12")){
																if(confirm(rd[Math.floor(Math.random() * rd.length)])){
																	
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						
					}
				}
			}
		}
	}
	
	
}



</script>

</html>
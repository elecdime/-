<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <!-- dataTables GRID CDN -->
   <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css" />
    <script src="//cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script> 
<style type="text/css">
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
</style>

</head>

<body>
        
   <table class="table table-striped dataTable mt-0" id="bbsTable">
                        <thead>
                            <tr>
                           
                                <th>번호</th>
                              	<th>제목</th>
                              	<th>작성자</th>
                              	<th>카테고리</th>	
                              
                              	<th>조회수</th>
                              	<th>작성일</th>
                              	<th>상단고정</th>
                                    	<th>그룹</th>
                                    	<th>답글1</th>
                                    	<th>답글2</th>
                            </tr>
                        </thead>
                      		
                               <c:forEach items="${list}" var="bbs" >
                            
                               	
                             
                               
                               
                               
                               
                            <tr id="tr1">
                			
                             <td><b><a href="${pageContext.request.contextPath}/board/boardview?n=${bbs.bbsno}&
										page=${scri.page}&
										perPageNum=${scri.perPageNum}&
										searchType=${scri.searchType}&
										keyword=${scri.keyword}">${bbs.bbsno}</a></b></nobr></td>
                			
								<td>
								<c:if test="${bbs.bbsStep>0}">
								<b style="color: blue">RE:)</b>
								</c:if>
								<c:if test="${bbs.bbsDent>1}">
								<b style="color: blue">RE:)</b>
								</c:if>
							
								<a href="${pageContext.request.contextPath}/board/boardview?n=${bbs.bbsno}&
										page=${scri.page}&
										perPageNum=${scri.perPageNum}&
										searchType=${scri.searchType}&
										keyword=${scri.keyword}">
									<c:if test="${bbs.notice > 0}">
									<img src="../resources/img/notice.png"/>
								</c:if>
								${bbs.title}</a>
							
							
								</td>
                           
     				
								
						
                              	<td>${bbs.writer}</td>
                              	<td>${bbs.cateName }</td>
                             
                              	
                              	<td>${bbs.viewCnt}</td>
                              	<td>${bbs.regDate}</td>
                              	<td id="noti">${bbs.notice}</td>
                              	 	<td>${bbs.bbsGroup}</td>
                              	 	 	<td>${bbs.bbsStep}</td>
                              	 	 	 	<td>${bbs.bbsDent}</td>
                            </tr>

                            
                        </c:forEach>
                        
                        </tbody> 
                   
                    </table>
                    <a class ="btn btn-primary" href ="${pageContext.request.contextPath}/board/boardinsert"> 글 쓰 기 </a>
                    <div class="search">
 <select name="searchType">
  <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
  <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
  <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
  <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
  <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
 </select>
 
 <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>

 <button id="searchBtn">검색</button>
 
 <script>
 $(function(){
  $('#searchBtn').click(function() {
   self.location = "listSearch"
     + '${pageMaker.makeQuery(1)}'
     + "&searchType="
     + $("select option:selected").val()
     + "&keyword="
     + encodeURIComponent($('#keywordInput').val());
    });
 });   
 </script>
</div>
<div>
 <ul class ="pagination pagination-lg">
  <c:if test="${pageMaker.prev}">
   <li><a href="listSearch${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
  </c:if> 
  
  <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
   <li><a href="listSearch${pageMaker.makeSearch(idx)}">${idx}</a></li>
  </c:forEach>
    
  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
   <li><a href="listSearch${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
  </c:if> 
 </ul>
</div>

	<!-- <script>
		
 $(document).ready(function() {
    $('#bbsTable').DataTable({
    	ordering: false
  
    	
    }
    		
    
    );
    
});
</script> -->


</body>
</html>
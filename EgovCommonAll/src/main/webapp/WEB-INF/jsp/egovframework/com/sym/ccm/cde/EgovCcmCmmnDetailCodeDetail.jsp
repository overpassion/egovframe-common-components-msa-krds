<%
 /**
  * @Class Name : EgovCcmCmmnDetailCodeDetail.jsp
  * @Description : 공통상세코드 상세조회 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.02.01   박정규              최초 생성
  *   2017.08.09   이정은              표준프레임워크 v3.7 개선
  *   2024.10.29	LeeBaekHaeng	검색조건 유지
  *  @author 공통서비스팀 
  *  @since 2009.02.01
  *  @version 1.0
  *  @see
  *  
  */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<c:set var="pageTitle"><spring:message code="comSymCcmCde.cmmnDetailCodeVO.title"/></c:set>
<!DOCTYPE html>
<html>
<head>
<title>${pageTitle} <spring:message code="title.detail" /></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">
<script type="text/javascript">
/* ********************************************************
 * 삭제처리
 ******************************************************** */
 function fn_egov_delete_code(codeId, code){
	event.preventDefault();
	if(confirm("<spring:message code="common.delete.msg" />")){	
		// Delete하기 위한 키값을 셋팅
		document.CcmDeCodeForm.codeId.value = codeId;
		document.CcmDeCodeForm.code.value = code;	
		document.CcmDeCodeForm.action = "<c:url value='/sym/ccm/cde/RemoveCcmCmmnDetailCode.do'/>";
		document.CcmDeCodeForm.method = 'post';
		document.CcmDeCodeForm.submit();
	}	
}	
</script>
</head>
<body>

<form name="CcmDeCodeForm" action="<c:url value='/sym/ccm/cde/UpdateCcmCmmnDetailCodeView.do'/>" method="get">
<div class="wTableFrm">
	<!-- 타이틀 -->
	<h2>${pageTitle} <spring:message code="title.detail" /></h2>

	<!-- 상세조회 -->
	<table class="wTable" summary="<spring:message code="common.summary.inqire" arguments="${pageTitle}" />">
	<caption>${pageTitle} <spring:message code="title.detail" /></caption>
	<colgroup>
		<col style="width: 20%;">
		<col style="width: ;">
	</colgroup>
	<tbody>
		<!-- 코드ID명 -->
		<tr>
			<th><spring:message code="comSymCcmCde.cmmnDetailCodeVO.codeIdNm" /></th>
			<td class="left"><c:out value="${result.codeIdNm}"/></td>
		</tr>
		<!-- 상세코드 -->
		<tr>
			<th><spring:message code="comSymCcmCde.cmmnDetailCodeVO.code" /></th>
			<td class="left"><c:out value="${result.code}"/></td>
		</tr>
		<!-- 상세코드명 -->
		<tr>
			<th><spring:message code="comSymCcmCde.cmmnDetailCodeVO.codeNm" /></th>
			<td class="left"><c:out value="${result.codeNm}"/></td>
		</tr>
		<!-- 상세코드설명 -->
		<tr>
			<th class="vtop"><spring:message code="comSymCcmCde.cmmnDetailCodeVO.codeDc" /></th>
			<td class="cnt">
				<c:out value="${fn:replace(result.codeDc , crlf , '<br/>')}" escapeXml="false" />
			</td>
		</tr>
		<!-- 사용여부 -->
		<tr>
			<th><spring:message code="comSymCcmCde.cmmnDetailCodeVO.useAt" /></th>
			<td class="left"><c:out value="${result.useAt}"/></td>
		</tr>
		
		
	</tbody>
	</table>
	<!-- 하단 버튼 -->
	<div class="btn">
		<input type="submit" class="s_submit" value="<spring:message code="button.update" />" title="<spring:message code="title.update" /> <spring:message code="input.button" />" />
		<span class="btn_s"><a href="<c:url value='/sym/ccm/cde/RemoveCcmCmmnDetailCode.do?codeId=${result.codeId}&amp;code=${result.code}' />" onclick="fn_egov_delete_code('<c:out value="${result.codeId}"/>','<c:out value="${result.code}"/>');" title="<spring:message code="title.delete" /> <spring:message code="input.button" />"><spring:message code="button.delete" /></a></span>
		<span class="btn_s"><a href="<c:url value='/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do' />?searchCondition=<c:out value="${cmmnDetailCodeVO.searchCondition}" />&searchKeyword=<c:out value="${cmmnDetailCodeVO.searchKeyword}" />&pageIndex=<c:out value="${cmmnDetailCodeVO.pageIndex}" />"  title="<spring:message code="title.list" /> <spring:message code="input.button" />"><spring:message code="button.list" /></a></span>
	</div><div style="clear:both;"></div>
	
</div>

<input name="codeId" type="hidden" value="<c:out value="${result.codeId}" />">
<input name="code" type="hidden" value="<c:out value="${result.code}" />">

<input name="searchCondition" type="hidden" value="<c:out value="${cmmnDetailCodeVO.searchCondition}" />">
<input name="searchKeyword" type="hidden" value="<c:out value="${cmmnDetailCodeVO.searchKeyword}" />">
<input name="pageIndex" type="hidden" value="<c:out value="${cmmnDetailCodeVO.pageIndex}" />">
</form>

</body>
</html>

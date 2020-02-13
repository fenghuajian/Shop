<%@ page language="java" contentType="text/html; charset=GB18030"
		 pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
	<title>Insert title here</title>
	<style type="text/css">
		table,tr,th,td{
			border:1px solid black;
			border-collapse:collapse;
		}
	</style>
</head>
<body>
<table>
	<tr>
		<th>��Ʒ���ID</th>
		<th>�������</th>
		<th>����</th>>
	</tr>
	<c:forEach items="${pm.list}" var="category">
		<tr>
			<td>${category.categoryid}</td>
			<td>${category.name}</td>

			<td>
				<a href="category?method=deleteCategory&categoryId=${category.categoryid}">ɾ��</a>
				<a href="">�޸�</a>

			</td>
		</tr>
	</c:forEach>
</table>
<input type="button" value="��ҳ" onclick="goFirst()" id="first"/>
<input type="button" value="��һҳ" onclick="goPrev()" id="prev"/>
<input type="button" value="��һҳ" onclick="goNext()" id="next"/>
<input type="button" value="���һҳ" onclick="goLast()" id="last"/>
<script type="text/javascript">
    totalPage='${pm.totalPage}';
    currentPage='${currentPage}';
    if(currentPage==1){
        document.getElementById("first").disabled=true;
        document.getElementById("prev").disabled=true;
        document.getElementById("next").disabled=false;
        document.getElementById("last").disabled=false;
    }
    else if(currentPage==totalPage){
        document.getElementById("first").disabled=false;
        document.getElementById("prev").disabled=false;
        document.getElementById("next").disabled=true;
        document.getElementById("last").disabled=true;
    }
    function goFirst(){
        //JavaScript��θ�һ��Servelt��������
        window.location.href="user?method=viewUser&currentPage=1";
    }
    function goPrev(){
        currentPage=parseInt(currentPage)-1;
        window.location.href="user?method=viewUser&currentPage="+currentPage;
    }
    function goNext(){
        currentPage=parseInt(currentPage)+1;
        window.location.href="user?method=viewUser&currentPage="+currentPage;
    }
    function goLast(){
        window.location.href="user?method=viewUser&currentPage="+totalPage;
    }
</script>
</body>
</html>
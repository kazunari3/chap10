<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title></title>
</head>
<body>

<%
String prev_name;
if (session != null){
	prev_name = (String)session.getAttribute("prev_name");
	if (prev_name != null){
%>
	<font color="red">
		�ȑO�A���Ȃ��̓A�N�Z�X�������Ƃ�����܂�<br>
	</font>
	���v���Ԃ�ł��@<%= prev_name %> ����<br>
<%
	}
}
%>
<br>

���O�A���ʁA�N�����͂��Ă��������B<br>
<br>
<s:form action="/Check"  method="post">
    <s:textfield key="name" label="����" /> <br>
	<s:radio list="#{'male':'�j��','female':'����'}" name="sex" label="����"/><br>
	<s:textfield key="age" label="�N��"/> <br>
    <s:submit value="submit" />
</s:form>
</body>
</html>
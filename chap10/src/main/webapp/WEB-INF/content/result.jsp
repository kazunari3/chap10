<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title></title>
</head>
<body>
���Ȃ��́A <br>
����: <%= request.getParameter("name") %> <br>
<%
	String sex_string;
	if ("male".equals(request.getParameter("sex"))){
		sex_string = "�j��";
	}else{
		sex_string = "����";
	}

	int age = Integer.parseInt(request.getParameter( "age" ));
	String drink;
	if( age >= 20 ){
		drink = "���Ȃ��͂��������߂܂��ˁB";
	}else{
		drink = "���Ȃ��͂���������ł͂����܂���B";
	}
	
%>
����: <%= sex_string %> <br>
�N��: <%= request.getParameter("age") %>��<br>

<br>
����ɂ��� <%= (String)request.getAttribute("new_name") %> ����<br>

<br>

<%= drink %> <br>

<a href="/chap10/index.jsp">�g�b�v</a>�֖߂�B
</body>

</html>
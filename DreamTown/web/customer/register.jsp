<%@page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%
	String path=config.getServletContext().getContextPath();
%>
<html>
    <head>
        <title>����ע��</title>
        <link rel="stylesheet" type="text/css" href="./css/register.css">
        <meta http-equiv="Content-Type" content="text/html; charset=GBK" /> 
        <script type="text/javascript" src="http://localhost:8080<%=path %>/jquery-3.3.1.js"></script>
        <script type="text/javascript">
        	$(document).ready(function(){
        		$("#check").on("click",function(){
        			/*
        			�Ժ�̨��Servlet��������
        			(1)����sendVerifyCode����
        			(2)��ȡ�ֻ���
        			*/
        			//ȡ�ı����ֵ
        			$.ajax({
        				url:'http://localhost:8080<%=path %>/customer?method=sendVerifyCode&phone='+$("#key").val(),
        				method:"GET",
        				dataType:'text',
        				success:function(){
        				}
        			});
        		});
        	});
        </script>
    </head>
    <body>
        <div class="header">
            <div class="logo-con w clearfix">
                <a href="" class="logo "><img src="./images/JDlogo.jpg" alt="����ͼ��" width="160px" height="90px" id="JDlogo">
                </a>
                <div id="logo-title">��ӭע��</div>
    
                <div id="have-account" style="color:rgb(153, 153, 153)">�����˺ţ� <a href="" style="color:red;text-decoration: none;">���¼&gt;</a></div>
   
            </div>
        </div>
        
        <div id="cheek">
        </div>
    
        <div id="center">
            <img src="./images/tips.PNG" alt="����" id="tips" >
            <div id="word">
                <ul id="word">
                    <li id="word1">��֤�ֻ���</li>
                    <li id="word2">��д�˺���Ϣ</li>
                    <li id="word3">ע��ɹ�</li>
                </ul>
            </div>
            <div id="number">
                <input id="key" type="text" class="itxt"  style="color: rgb(153, 153, 153);width: 290px;height: 50px;">
                <input id="local" type="button" class="button" value=" �й� 0086" style="width:80px; height:50px;">
                <input id="check" type="button" class="itxt" value="�����ť������֤" style="color: black;width: 370px;height: 50px;">
                <input id="next" type="button" class="itxt" value="��һ��" style="color: white;width: 370px;height: 50px;">
                <li id="user1"><a href="" style="text-decoration: none;">��ҵ�û�ע��</a></li>
                <li id="user2"><a href="" style="text-decoration: none;">�����û�ע��</a></li>
            </div>
        </div>
    </body>
</html>
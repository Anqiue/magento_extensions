<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<%
' ���ܣ�֧����ҳ����תͬ��֪ͨҳ��
' �汾��3.2
' ���ڣ�2011-03-31
' ˵����
' ���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
' �ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���
	
' //////////////ҳ�湦��˵��//////////////
' ��ҳ����ڱ������Բ���
' �ɷ���HTML������ҳ��Ĵ��롢�̻�ҵ���߼��������
' ��ҳ�����ʹ��ASP�������ߵ��ԣ�Ҳ����ʹ��д�ı�����LogResult���е��ԣ��ú����ѱ�Ĭ�Ϲرգ���alipay_notify.asp�еĺ���VerifyReturn
'////////////////////////////////////////
%>

<!--#include file="class/alipay_notify.asp"-->

<%
'����ó�֪ͨ��֤���
Set objNotify = New AlipayNotify
sVerifyResult = objNotify.VerifyReturn()

If sVerifyResult Then	'��֤�ɹ�
	'*********************************************************************
	'������������̻���ҵ���߼��������

	'�������������ҵ���߼�����д�������´�������ο�������
    '��ȡ֧������֪ͨ���ز������ɲο������ĵ���ҳ����תͬ��֪ͨ�����б�
    user_id = request.QueryString("user_id")	'֧�����û�id
    token	= request.QueryString("token")		'��Ȩ����
	
	'ִ���̻���ҵ�����
	
	response.Write "��֤�ɹ�<br />"
	response.Write "token:"&token

	'etaoר��
	If request.QueryString("target_url") <> "" Then
		'�����Զ���ת��target_url����ָ����urlȥ
	End If

	'�������������ҵ���߼�����д�������ϴ�������ο�������
	
	'*********************************************************************
Else '��֤ʧ��
    '��Ҫ���ԣ��뿴alipay_notify.aspҳ���VerifyReturn�������ȶ�sign��mysign��ֵ�Ƿ���ȣ����߼��responseTxt��û�з���true
    Response.Write "��֤ʧ��"
End If
%>
<title>֧������ݵ�¼�ӿ�</title>
</head>
<body>
</body>
</html>

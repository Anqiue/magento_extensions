<%
' ���ܣ���ݵ�¼�ӿڽ���ҳ
' �汾��3.2
' ���ڣ�2011-03-31
' ˵����
' ���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
' �ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���
	
' /////////////////ע��/////////////////
' ������ڽӿڼ��ɹ������������⣬���԰��������;�������
' 1���̻��������ģ�https://b.alipay.com/support/helperApply.htm?action=consultationApply�����ύ���뼯��Э�������ǻ���רҵ�ļ�������ʦ������ϵ��Э�����
' 2���̻��������ģ�http://help.alipay.com/support/232511-16307/0-16307.htm?sh=Y&info_type=9��
' 3��֧������̳��http://club.alipay.com/read-htm-tid-8681712.html��
' /////////////////////////////////////

%>

<!--#include file="class/alipay_service.asp"-->

<%
'/////////////////////�������/////////////////////

'//ѡ�����//

'//������
'��ȡ�ͻ��˵�IP��ַ�����飺��д��ȡ�ͻ���IP��ַ�ĳ���
exter_invoke_ip   = ""
'������ʱ���
anti_phishing_key = ""
'ע�⣺
'������ѡ���Ƿ��������㹦��
'exter_invoke_ip��anti_phishing_keyһ�������ù�����ô���Ǿͻ��Ϊ�������
'��Ҫʹ�÷����㹦�ܣ�����ʹ��POST��ʽ��������
'ʾ����
'exter_invoke_ip = "202.1.1.1"
'Set objQuery_timestamp = New AlipayService
'anti_phishing_key = objQuery_timestamp.Query_timestamp()		'��ȡ������ʱ�������

'/////////////////////�������/////////////////////

'���������������
sParaTemp = Array("service=alipay.auth.authorize","target_service=user.auth.quick.login","partner="&partner,"return_url="&return_url,"_input_charset="&input_charset,"anti_phishing_key="&anti_phishing_key,"exter_invoke_ip="&exter_invoke_ip)

'�����ݵ�¼�ӿڱ��ύHTML���ݣ������޸�
Set objService = New AlipayService
sHtml = objService.Alipay_auth_authorize(sParaTemp)
response.Write sHtml
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>֧������ݵ�¼�ӿ�</title>
</head>
<body>
</body>
</html>

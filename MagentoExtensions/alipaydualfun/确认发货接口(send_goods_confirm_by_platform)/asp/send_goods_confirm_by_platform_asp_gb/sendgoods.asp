<%
' ���ܣ�ȷ�Ϸ����ӿڽ���ҳ
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

' ȷ�Ϸ���û�з������첽֪ͨҳ�棨notify_url����ҳ����תͬ��֪ͨҳ�棨return_url����
' ���������󣬸ñʽ��׵�״̬�����˱����֧��������������֪ͨ���̻���վ�����̻���վ�ڵ������׻�˫���ܵĽӿ��еķ������첽֪ͨҳ�棨notify_url��
' �÷����ӿڽ���Ե������׽ӿڡ�˫���ܽӿ��еĵ�������֧�����漰����Ҫ�����������Ĳ���

' ���ҿ�ݹ�˾������EXPRESS����ݣ��ķ���
' /////////////////////////////////////
%>

<!--#include file="class/alipay_service.asp"-->

<%
'/////////////////////�������/////////////////////
'//�������//

'֧�������׺š����ǵ�½֧������վ�ڽ��׹����в�ѯ�õ���һ����8λ���ڿ�ͷ�Ĵ����֣��磺20100419XXXXXXXXXX�� 
trade_no		= request.Form("trade_no")

'������˾����
logistics_name	= request.Form("logistics_name")

'������������
invoice_no		= request.Form("invoice_no")

'��������ʱ���������ͣ�����ֵ��ѡ��POST��ƽ�ʣ���EXPRESS����ݣ���EMS��EMS��
transport_type	= request.Form("transport_type")

'/////////////////////�������/////////////////////

'���������������
sParaTemp = Array("service=send_goods_confirm_by_platform","partner="&partner,"trade_no="&trade_no,"logistics_name="&logistics_name,"invoice_no="&invoice_no,"transport_type="&transport_type,"_input_charset="&input_charset)

'����ȷ�Ϸ����ӿڣ������޸�
Set objService = New AlipayService

'������������̻���ҵ���߼��������

'�������������ҵ���߼�����д�������´�������ο�������

'��ȡ֧������֪ͨ���ز������ɲο������ĵ���ҳ����תͬ��֪ͨ�����б�

'�˴�����������Ҫ��ȡ�Ľڵ㣬��ѽڵ������õ������С�
sParaNode = Array("response")

'���ָ���ڵ��ֵ
sParaXml = objService.Send_goods_confirm_by_platform(sParaTemp, sParaNode)

response.Write sParaXml(0)

'�������������ҵ���߼�����д�������ϴ�������ο�������

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>֧����ȷ�Ϸ���</title>
</head>
<body>
</body>
</html>

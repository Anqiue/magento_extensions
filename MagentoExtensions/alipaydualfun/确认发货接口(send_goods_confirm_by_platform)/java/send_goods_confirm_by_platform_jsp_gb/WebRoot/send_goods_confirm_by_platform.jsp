<%
/* *
 *���ܣ�ȷ�Ϸ����ӿڽ���ҳ
 *�汾��3.2
 *���ڣ�2011-03-17
 *˵����
 *���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 *�ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���

 *************************ע��*****************
 *������ڽӿڼ��ɹ������������⣬���԰��������;�������
 *1���̻��������ģ�https://b.alipay.com/support/helperApply.htm?action=consultationApply�����ύ���뼯��Э�������ǻ���רҵ�ļ�������ʦ������ϵ��Э�����
 *2���̻��������ģ�http://help.alipay.com/support/232511-16307/0-16307.htm?sh=Y&info_type=9��
 *3��֧������̳��http://club.alipay.com/read-htm-tid-8681712.html��
 *�������ʹ����չ���������չ���ܲ�������ֵ��
 **********************************************
 */
%>
<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page import="com.alipay.services.*"%>
<%@ page import="com.alipay.util.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<title>ȷ�Ϸ����ӿ�</title>
	</head>
	<%
    
		////////////////////////////////////�������//////////////////////////////////////
		
		//�������//
		//֧�������׺�
		String trade_no = request.getParameter("trade_no");
		
		//������˾����
		String logistics_name = request.getParameter("logistics_name");
		
		//����ʱ����������
		String transport_type = "EXPRESS";
		
		//ѡ�����
        //������������
		String invoice_no = request.getParameter("invoice_no");
		
		//////////////////////////////////////////////////////////////////////////////////
		
		//������������������
		Map<String, String> sParaTemp = new HashMap<String, String>();
        sParaTemp.put("trade_no", trade_no);
        sParaTemp.put("logistics_name", logistics_name);
		sParaTemp.put("invoice_no", invoice_no);
		sParaTemp.put("transport_type", transport_type);
		//���캯������������URL  
		String sHtmlText = AlipayService.send_goods_confirm_by_platform(sParaTemp);

		//������������̻���ҵ���߼��������

		//�������������ҵ���߼�����д�������´�������ο�������

		//��ȡ֧������֪ͨ���ز������ɲο������ĵ���ҳ����תͬ��֪ͨ�����б�

		out.println(sHtmlText);

        	//�������������ҵ���߼�����д�������ϴ�������ο�������
	%>
	<body>
	</body>
</html>

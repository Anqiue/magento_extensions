<%
/* *
 *���ܣ���׼˫�ӿڽ���ҳ
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
 * �ܽ����㷽ʽ�ǣ��ܽ��=price*quantity+logistics_fee+discount��
 * �����price����Ϊ�ܽ��������˷ѡ��ۿۡ����ﳵ�й�����Ʒ�ܶ�ȼ��������ն�����Ӧ���ܶ
 * ������������ֻʹ��һ�飬����������̻���վ���µ�ʱѡ����������ͣ���ݡ�ƽ�ʡ�EMS���������Զ�ʶ��logistics_type�����������е�һ��ֵ
 * ���ҿ�ݹ�˾������EXPRESS����ݣ��ķ���
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
		<title>֧������������</title>
	</head>
	<%
    
		////////////////////////////////////�������//////////////////////////////////////
		
		//�������//

		UtilDate date = new UtilDate();//��ȡ֧�������������ɶ�����
		//�������վ����ϵͳ�е�Ψһ������ƥ��
		String out_trade_no = date.getOrderNum();
		//�������ƣ���ʾ��֧��������̨��ġ���Ʒ���ơ����ʾ��֧�����Ľ��׹���ġ���Ʒ���ơ����б��
		String subject = new String(request.getParameter("subject").getBytes("ISO-8859-1"),"GBK");
		//����������������ϸ��������ע����ʾ��֧��������̨��ġ���Ʒ��������
		String body = new String(request.getParameter("alibody").getBytes("ISO-8859-1"),"GBK");
		//�����ܽ���ʾ��֧��������̨��ġ�Ӧ���ܶ��
		String price = new String(request.getParameter("total_fee").getBytes("ISO-8859-1"),"GBK");
		
		//�������ã����˷ѡ�
		String logistics_fee = "0.00";
		//�������ͣ�����ֵ��ѡ��EXPRESS����ݣ���POST��ƽ�ʣ���EMS��EMS��
		String logistics_type = "EXPRESS";
		//����֧����ʽ������ֵ��ѡ��SELLER_PAY�����ҳе��˷ѣ���BUYER_PAY����ҳе��˷ѣ�
		String logistics_payment = "SELLER_PAY";
		
		//��Ʒ����������Ĭ��Ϊ1�����ı�ֵ����һ�ν��׿�����һ���¶������ǹ���һ����Ʒ��
		String quantity = "1";
		
		//��չ����//
		
		//����ջ���Ϣ���Ƽ���Ϊ���
		//�ù���������������Ѿ����̻���վ���µ����������һ���ջ���Ϣ��������Ҫ�����֧�����ĸ����������ٴ���д�ջ���Ϣ��
		//��Ҫʹ�øù��ܣ������ٱ�֤receive_name��receive_address��ֵ
		String receive_name	= "�ջ�������";			//�ջ����������磺����
		String receive_address = "�ջ��˵�ַ";		//�ջ��˵�ַ���磺XXʡXXX��XXX��XXX·XXXС��XXX��XXX��ԪXXX��
		String receive_zip = "123456";				//�ջ����ʱ࣬�磺123456
		String receive_phone = "0571-81234567";		//�ջ��˵绰���룬�磺0571-81234567
		String receive_mobile = "13312341234";		//�ջ����ֻ����룬�磺13312341234
		
		// ��վ��Ʒ��չʾ��ַ���������?id=123�����Զ������
		String show_url = "http://www.xxx.com/myorder.jsp";

		//////////////////////////////////////////////////////////////////////////////////
		
		//������������������
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("payment_type","1");
		sParaTemp.put("show_url", show_url);
		sParaTemp.put("out_trade_no", out_trade_no);
		sParaTemp.put("subject", subject);
		sParaTemp.put("body", body);
		sParaTemp.put("price", price);
		sParaTemp.put("logistics_fee", logistics_fee);
		sParaTemp.put("logistics_type", logistics_type);
		sParaTemp.put("logistics_payment", logistics_payment);
		sParaTemp.put("quantity", quantity);
		sParaTemp.put("receive_name", receive_name);
		sParaTemp.put("receive_address", receive_address);
		sParaTemp.put("receive_zip", receive_zip);
		sParaTemp.put("receive_phone", receive_phone);
		sParaTemp.put("receive_mobile", receive_mobile);
		
		//���캯������������URL
		String sHtmlText = AlipayService.trade_create_by_buyer(sParaTemp);
		out.println(sHtmlText);
	%>
	<body>
	</body>
</html>

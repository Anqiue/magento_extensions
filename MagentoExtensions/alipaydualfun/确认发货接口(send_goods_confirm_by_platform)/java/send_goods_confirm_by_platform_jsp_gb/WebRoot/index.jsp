<%
	/* *
	 *���ܣ�ȷ�Ϸ����ӿڵ������ҳ��
	 *�汾��3.2
	 *���ڣ�2011-03-17
	 *˵����
	 *���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
	 */
%>
<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page import="com.alipay.services.*"%>
<%@ page import="com.alipay.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<title>ȷ�Ϸ����ӿ�</title>
	</head>
	<BODY>
		<FORM name=alisubmit action=send_goods_confirm_by_platform.jsp method=post target="_blank">
			<div style="text-align: center; font-size: 9pt; font-family: ����">
			  ֧�������׺ţ�<INPUT type="text" size="30" name="trade_no" value=""><br />
			 ������˾���ƣ�<INPUT type="text" size="30" name="logistics_name" value=""><br />
              �����������ţ�<INPUT type="text" size="30" name="invoice_no" value=""><br />
                <INPUT type="submit" value="ȷ�Ϸ���"  name="btnAlipay">
			</div>
		</FORM>
	</BODY>
</html>
<?php
/* *
 * ���ܣ�֧����ȷ�Ϸ����ӿڵ������ҳ��
 * �汾��3.2
 * ���ڣ�2011-03-17
 * ˵����
 * ���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 */

?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<HEAD><TITLE>֧����ȷ�Ϸ����ӿ�</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</HEAD>
<BODY>
	<FORM name=alisubmit action=sendgoods.php method=post target="_blank">
		<div style="text-align: center; font-size: 9pt; font-family: ����">
                ֧�������׺ţ�<INPUT type="text" size="30" name="trade_no" value=""><br />
                ������˾���ƣ�<INPUT type="text" size="30" name="logistics_name" value=""><br />
                �����������ţ�<INPUT type="text" size="30" name="invoice_no" value=""><br />
              �����������ͣ�<select name="transport_type">
                  <option value="EMS">EMS</option>
                  <option value="POST">ƽ��</option>
                  <option value="EXPRESS" selected="selected">���</option>
                </select><br />
                <INPUT type="submit" value="ȷ��"  name="btnAlipay">
		</div>
	</FORM>
</BODY>
</HTML>

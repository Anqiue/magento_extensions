

            �q�����������������������������������������������r
  �q����������           ֧��������ʾ���ṹ˵��             �����������r
  ��        �t�����������������������������������������������s        ��
����                                                                  ��
����     �ӿ����ƣ�֧����ȷ�Ϸ����ӿ�(send_goods_confirm_by_platform) ��
������   ����汾��3.2                                                ��
  ��     �������ԣ�ASP.NET(c#)                                        ��
  ��     ��    Ȩ��֧�������й������缼�����޹�˾                     ��
����     �� �� �ߣ�֧�����̻���ҵ������֧����                         ��
  ��     ��ϵ��ʽ���̻�����绰0571-88158090                          ��
  ��                                                                  ��
  �t�������������������������������������������������������������������s

��������������
 �����ļ��ṹ
��������������

send_goods_confirm_by_platform_vs2005_gb
  ��
  ��app_code �����������������������ļ���
  ��  ��
  ��  ��AlipayConfig.cs���������������������ļ�
  ��  ��
  ��  ��AlipayCore.cs������������֧�����ӿڹ��ú������ļ�
  ��  ��
  ��  ��AlipayNotify.cs����������֧����֪ͨ�������ļ�
  ��  ��
  ��  ��AlipayService.cs ��������֧�������ӿڹ������ļ�
  ��  ��
  ��  ��AlipaySubmit.cs����������֧�������ӿ������ύ���ļ�
  ��
  ��log����������������������������־�ļ���
  ��
  ��default.aspx ����������������֧�����ӿ�����ļ�
  ��default.aspx.cs��������������֧�����ӿ�����ļ�
  ��
  ��Web.Config �����������������������ļ�������ʱɾ����
  ��
  ��readme.txt ������������������ʹ��˵���ı�

��ע���
��Ҫ���õ��ļ��ǣ�
alipay_config.cs��
default.aspx��
default.aspx.cs��

ͳһ�����ռ�Ϊ��namespace Com.Alipiay



������������������
 ���ļ������ṹ
������������������

AlipayCore.cs

public static string BuildMysign(Dictionary<string, string> dicArray, string key, string sign_type, string _input_charset)
���ܣ�����ǩ�����
���룺Dictionary<string, string>  dicArray Ҫǩ��������
      string key ��ȫУ����
      string sign_type ǩ������
      string _input_charset �����ʽ
�����string ǩ������ַ���

public static string CreateLinkstring(Dictionary<string, string> dicArray)
���ܣ�����������Ԫ�أ����ա�����=����ֵ����ģʽ�á�&���ַ�ƴ�ӳ��ַ���
���룺Dictionary<string, string> dicArray ��Ҫƴ�ӵ�����
�����string ƴ������Ժ���ַ���

public static Dictionary<string, string> ParaFilter(SortedDictionary<string, string> dicArrayPre)
���ܣ���ȥ�����еĿ�ֵ��ǩ������������ĸa��z��˳������
���룺SortedDictionary<string, string> dicArrayPre ����ǰ�Ĳ�����
�����Dictionary<string, string>  ȥ����ֵ��ǩ�����������ǩ��������

public static string Sign(string prestr, string sign_type, string _input_charset)
���ܣ�ǩ���ַ���
���룺string prestr ��Ҫǩ�����ַ���
      string sign_type ǩ������
      string _input_charset �����ʽ
�����string ǩ�����

public static void LogResult(string sPath, string sWord)
���ܣ�д��־��������ԣ�����վ����Ҳ���Ըĳɴ������ݿ⣩
���룺string sPath ��־�ı��ؾ���·��
      string sWord Ҫд����־����ı�����

��������������������������������������������������������������

AlipayNotify.cs

public Notify()
���ܣ����캯��
      �������ļ��г�ʼ������
      
public bool Verify(SortedDictionary<string, string> inputPara, string notify_id, string sign)
���ܣ���֤��Ϣ�Ƿ���֧���������ĺϷ���Ϣ
���룺SortedDictionary<string, string> inputPara ֪ͨ���ز�������
      string notify_id ֪ͨ��֤ID
      string sign ֧�������ɵ�ǩ�����
�����string ��֤���

private string GetPreSignStr(SortedDictionary<string, string> inputPara)
���ܣ���ȡ��ǩ���ַ����������ã�
���룺SortedDictionary<string, string> inputPara ֪ͨ���ز�������
�����string ��ǩ���ַ���

private string GetResponseMysign(SortedDictionary<string, string> inputPara)
���ܣ���ȡ���ػ����Ĵ�ǩ������ǩ������
���룺SortedDictionary<string, string> inputPara ֪ͨ���ز�������
�����string ǩ������ַ���

private string GetResponseTxt(string notify_id)
���ܣ���ȡ�Ƿ���֧�����������������������֤���
���룺string notify_id ֪ͨ��֤ID
�����string ��֤���

private string Get_Http(string strUrl, int timeout)
���ܣ���ȡԶ�̷�����ATN���
���룺string strUrl ָ��URL·����ַ
      int timeout ��ʱʱ������
�����string ������ATN����ַ���

��������������������������������������������������������������

AlipaySubmit.cs

private static Dictionary<string, string> BuildRequestPara(SortedDictionary<string, string> sParaTemp)
���ܣ�����Ҫ�����֧�����Ĳ�������
���룺SortedDictionary<string, string> sParaTemp ����ǰ�Ĳ�������
�����Dictionary<string, string> Ҫ����Ĳ�������

private static string BuildRequestParaToString(SortedDictionary<string, string> sParaTemp)
���ܣ�����Ҫ�����֧�����Ĳ�������
���룺SortedDictionary<string, string> sParaTemp ����ǰ�Ĳ�������
�����string Ҫ����Ĳ��������ַ���

public static string BuildFormHtml(
		SortedDictionary<string, string> sParaTemp, 
		string gateway, 
		string strMethod, 
		string strButtonValue)
���ܣ������ύ��HTML����
���룺SortedDictionary<string, string> sParaTemp �����������
	  string gateway ���ص�ַ
	  string strMethod �ύ��ʽ������ֵ��ѡ��post��get
	  string strButtonValue ȷ�ϰ�ť��ʾ����
�����string �ύ��HTML�ı�

public static XmlDocument SendPostInfo(SortedDictionary<string, string> sParaTemp, string gateway)
���ܣ�����ģ��Զ��HTTP��POST���󣬻�ȡ֧�����ķ���XML������
���룺SortedDictionary<string, string> sParaTemp �����������
      string gateway ���ص�ַ
�����XmlDocument ֧��������XML������

public static XmlDocument SendGetInfo(SortedDictionary<string, string> sParaTemp, string gateway)
���ܣ�����ģ��Զ��HTTP��GET���󣬻�ȡ֧�����ķ���XML������
���룺SortedDictionary<string, string> sParaTemp �����������
      string gateway ���ص�ַ
�����XmlDocument ֧��������XML������


��������������������������������������������������������������

AlipayService.cs



public string Send_goods_confirm_by_platform(SortedDictionary<string, string> sParaTemp)
���ܣ�����ȷ�Ϸ����ӿ�
���룺SortedDictionary<string, string> sParaTemp �����������
�����XmlDocument ֧��������XML������

public static string Query_timestamp()
���ܣ����ڷ����㣬���ýӿ�query_timestamp����ȡʱ����Ĵ�����
�����string ʱ����ַ���

public string AlipayInterface(SortedDictionary<string, string> sParaTemp)
���ܣ�����(֧�����ӿ�����)�ӿ�
���룺SortedDictionary<string, string> sParaTemp �����������
�����string ���ύHTML�ı�����֧��������XML������


��������������������
 �������⣬��������
��������������������

����ڼ���֧�����ӿ�ʱ�������ʻ�������⣬��ʹ����������ӣ��ύ���롣
https://b.alipay.com/support/helperApply.htm?action=supportHome
���ǻ���ר�ŵļ���֧����ԱΪ������





package com.alipay.services;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

import com.alipay.config.AlipayConfig;
import com.alipay.util.AlipaySubmit;

/* *
 *������AlipayService
 *���ܣ�֧�������ӿڹ�����
 *��ϸ������֧�������ӿ��������
 *�汾��3.2
 *�޸����ڣ�2011-03-17
 *˵����
 *���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 *�ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���
 */

public class AlipayService {
    
    /**
     * ֧�����ṩ���̻��ķ����������URL(��)
     */
    private static final String ALIPAY_GATEWAY_NEW = "https://mapi.alipay.com/gateway.do?";

    /**
     * ����ȷ�Ϸ����ӿ�
     * @param sParaTemp �����������
     * @return ֧��������XML������
     * @throws Exception 
     */
    public static String send_goods_confirm_by_platform(Map<String, String> sParaTemp) throws Exception {

    	//���ӻ�������
        sParaTemp.put("service", "send_goods_confirm_by_platform");
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
        return AlipaySubmit.sendPostInfo(sParaTemp, ALIPAY_GATEWAY_NEW);
    }

    /**
     * ���ڷ����㣬���ýӿ�query_timestamp����ȡʱ����Ĵ�����
     * ע�⣺Զ�̽���XML������������Ƿ�֧��SSL�������й�
     * @return ʱ����ַ���
     * @throws IOException
     * @throws DocumentException
     * @throws MalformedURLException
     */
    public static String query_timestamp() throws MalformedURLException,
                                                        DocumentException, IOException {

        //�������query_timestamp�ӿڵ�URL��
        String strUrl = ALIPAY_GATEWAY_NEW + "service=query_timestamp&partner=" + AlipayConfig.partner;
        StringBuffer result = new StringBuffer();

        SAXReader reader = new SAXReader();
        Document doc = reader.read(new URL(strUrl).openStream());

        List<Node> nodeList = doc.selectNodes("//alipay/*");

        for (Node node : nodeList) {
            // ��ȡ���ֲ���Ҫ��������Ϣ
            if (node.getName().equals("is_success") && node.getText().equals("T")) {
                // �ж��Ƿ��гɹ���ʾ
                List<Node> nodeList1 = doc.selectNodes("//response/timestamp/*");
                for (Node node1 : nodeList1) {
                    result.append(node1.getText());
                }
            }
        }

        return result.toString();
    }
}

package cn.lyl.tool;

import java.security.MessageDigest;
public class Md5Encrypt {
   
   public Md5Encrypt(String plainText) {

   }
   public static String to32MD5(String plainText){
	   StringBuffer buf = new StringBuffer("");
//	    MessageDigest md = MessageDigest.getInstance("MD5");  
	   MessageDigest md = null; 
       try {
       //����ʵ��ָ��ժҪ�㷨�� MessageDigest ����
       md = MessageDigest.getInstance("MD5"); 
       //ʹ��ָ�����ֽ��������ժҪ��
       md.update(plainText.getBytes());
       //ͨ��ִ���������֮������ղ�����ɹ�ϣ���㡣
       byte b[] = md.digest();
       //���ɾ����md5���뵽buf����
       int i;
       for (int offset = 0; offset < b.length; offset++) {
         i = b[offset];
         if (i < 0)
           i += 256;
         if (i < 16)
           buf.append("0");
         buf.append(Integer.toHexString(i));
       }
    } 
    catch (Exception e) {
      e.printStackTrace();
    }
	   return buf.toString();// 32λ�ļ��� 
   }
   
   public static String to32SaltMD5(String plainText){
	   plainText = plainText + "www.gdpa.com";
	   StringBuffer buf = new StringBuffer("");
//	    MessageDigest md = MessageDigest.getInstance("MD5");  
	   MessageDigest md = null; 
       try {
       //����ʵ��ָ��ժҪ�㷨�� MessageDigest ����
       md = MessageDigest.getInstance("MD5"); 
       //ʹ��ָ�����ֽ��������ժҪ��
       md.update(plainText.getBytes());
       //ͨ��ִ���������֮������ղ�����ɹ�ϣ���㡣
       byte b[] = md.digest();
       //���ɾ����md5���뵽buf����
       int i;
       for (int offset = 0; offset < b.length; offset++) {
         i = b[offset];
         if (i < 0)
           i += 256;
         if (i < 16)
           buf.append("0");
         buf.append(Integer.toHexString(i));
       }
    } 
    catch (Exception e) {
      e.printStackTrace();
    }
	   return buf.toString();// 32λ�ļ��� 
   }

}

package cn.lyl.tool;

public class TestMd5 {
	public static void main(String[] args){
		
		System.out.println(Md5Encrypt.to32MD5("hello,world"));
		System.out.println(Md5Encrypt.to32SaltMD5("hello,world"));
	}
}

package cn.lyl.junit;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TestTime {

	public static void main(String[] args) {
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss");
		String time =  format.format(date);
		System.out.println(time);
	}

}

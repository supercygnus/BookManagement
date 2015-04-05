package util;

import java.util.Calendar;

public class DateUtil {
	public static String getDateString(Calendar cal){
		int year=cal.YEAR;
		int month=cal.MONTH+1;
		int day=cal.DAY_OF_MONTH;
		return year+"-"+month+"-"+day;
	}
	
	public static Calendar changeStringToDate(String datestr){
		String regex="-";
		String[] d=datestr.split(regex);
		int year=Integer.parseInt(d[0]);
		int month=Integer.parseInt(d[1])-1;
		int day=Integer.parseInt(d[2]);
		Calendar cal=Calendar.getInstance();
		cal.set(year, month, day);
		return cal;
	}
	
	public static int getDay(String start,String end){
		Calendar before=DateUtil.changeStringToDate(start);
		Calendar after=DateUtil.changeStringToDate(end);
		long b=before.getTimeInMillis();
		long a=after.getTimeInMillis();
		//System.out.println(b);
		//System.out.println(a);
		int day=(int)((a-b)/(1000*60*60*24));
		return day;
	}
	
	public static void main(String[] args){
		System.out.println("123");
		System.out.println(DateUtil.getDay("2015-3-1","2015-3-7"));
		System.out.println(DateUtil.getDay("2015-3-20","2015-3-7"));
	}
}

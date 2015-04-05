package dao;

import java.util.*;

import org.springframework.jdbc.core.JdbcTemplate;

import util.DateUtil;

public class StuDB {
	private JdbcTemplate jt;
	private List list = null;
	private String sql = null;
	public JdbcTemplate getJt() {
		return jt;
	}
	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}
	
	public boolean verify(String username,String password){
		
		boolean result=false;
		sql="select * from student where StudentNO='"+username+"' and Password='"+password+"'";
		list=jt.queryForList(sql);
		if(list.size()!=0){
			result=true;
		}
		return result;
	}
	
	public Vector<String> getStuInfo(String stuno){
		Vector<String> vinfo=new Vector<String>();
		sql="select * from student where StudentNO='"+stuno+"'";
		list=jt.queryForList(sql);
		if(list.size()!=0){
			for(int i=0;i<list.size();i++){
				Map map=(Map) list.get(i);
				Set set=map.keySet();
				for(Object o:set){
					String info=map.get(o).toString();
					vinfo.add(info);
				}
				if(vinfo.get(6).equals("1")){
					String per=this.getCurMoney(stuno).size()>1?"0":"1";
					vinfo.set(6, per);
				}
			}
		}
		return vinfo;
	}
	
	
	public Vector<Vector<String>> getCurMoney(String stuno){
		Vector<Vector<String>> vlist=new Vector<Vector<String>>();
		sql="select * from book inner join borrow_list on book.BookNO=borrow_list.BookNO where StudentNO='"+stuno+"' and Deal='0'";
		
		list=jt.queryForList(sql);
		if(list.size()!=0){
			for(int i=0;i<list.size();i++){
				Map map=(Map) list.get(i);
				Set set=map.keySet();
				Vector<String> vtmp=new Vector<String>();
				for(Object o:set){
					String info=map.get(o).toString();
					vtmp.add(info);
				}
				String end=vtmp.get(3);
				String now=DateUtil.getDateString(Calendar.getInstance());
				int exceed=DateUtil.getDay(end, now);
				if(exceed>0){
					vtmp.add(String.valueOf(exceed/10.0));
					vlist.add(vtmp);
				}
				
			}
		}
		return vlist;
	}
	
}

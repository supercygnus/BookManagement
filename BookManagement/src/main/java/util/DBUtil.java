package util;

import java.util.*;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class DBUtil {
	private JdbcTemplate jt;
	private DataSource ds;
	private List list=null;
	private String sql=null;
	
	public JdbcTemplate getJt() {
		return jt;
	}
	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}
	public DataSource getDs() {
		return ds;
	}
	public void setDs(DataSource ds) {
		this.ds = ds;
	}
	
	
	public int getTotal(String sql,int span){
		int total=0;
		int rows=jt.queryForInt(sql);
		total=rows%span==0?rows/span:rows/span+1;
		return total;
	}
	
	public Vector<Vector<String>> getPageContent(String sql,int page,int span){
		
		Vector<Vector<String>> vlist=new Vector<Vector<String>>();
		int start=(page-1)*span;
		int end=start+span;
		list=jt.queryForList(sql);
		
		if(list.size()!=0){
			for(int i=start;i<end&&i<list.size();i++){
				Map map=(Map) list.get(i);
				Set set=map.keySet();
				Vector<String> vtmp=new Vector<String>();
				for(Object o:set){
					String info=(String) map.get(o);
					vtmp.add(info);
				}
				vlist.add(vtmp);
			}
		}
		return vlist;
		
	}
	
	public List query(){
		
		sql="select * from oa_role";
		list=jt.queryForList(sql);
		return list;
		
	}
	
}

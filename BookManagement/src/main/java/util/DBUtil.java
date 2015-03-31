package util;

import java.util.List;

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
	
	public List query(){
		
		sql="select * from oa_role";
		list=jt.queryForList(sql);
		return list;
		
	}
	
}

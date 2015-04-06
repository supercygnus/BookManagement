package util;

public class PageBean {
	private int currentPage;
	private int totalPage;
	private int span=5;
	private String money;
	private String sql;
	
	public PageBean(){}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getSpan() {
		return span;
	}

	public void setSpan(int span) {
		this.span = span;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}
	
	
	
}

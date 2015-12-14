package com.hnb.global;

public class Command {
	private String action, view, page, column, keyword; 
	public Command(String action, String page) {
		this.action = action;
		this.page = page;
		this.setView();
	}
	public String getAction() {
		return action;
	}
	public String getView() {
		return view;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public void setView() {
		this.view = Constants.VIEW+this.action+"/"+this.page+".jsp";
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getColumn() {
		return column;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setColumn(String column) {
		this.column = column;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}

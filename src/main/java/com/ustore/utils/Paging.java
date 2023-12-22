package com.ustore.utils;

public class Paging {
	private int totalPage;
	private int limit;
	
	public Paging(int totalPage, int limit) {
		this.limit = limit;
		this.totalPage = totalPage;
	}
	
	public int getPageNum() {
		int pageNum = 0;
		
		if((totalPage%limit) > 0) {
			pageNum = (totalPage/limit)+1;
			return pageNum;
		}else if((totalPage%limit) == 0) {
			pageNum = totalPage/limit;
			return pageNum;
		}else {
			return 1;
		}
	}
	
	
}

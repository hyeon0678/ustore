package com.ustore.utils;

public class Paging {
	private int totalPage;
	private int limit;
	
	
	public Paging(int totalPage, int limit) {
		this.limit = limit;
		this.totalPage = totalPage;
	}
	
	
	/**
	 * 페이지수를 계산해서 반환합니다
	 * @return : 총 페이지 수
	 */
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

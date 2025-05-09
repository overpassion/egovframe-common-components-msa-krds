package egovframework.com.utl.sys.fsm.service;

/**
 * 개요
 * - 파일시스템 모니터링 로그에 대한 Vo 클래스를 정의한다.
 * 
 * 상세내용
 * - 파일시스템 모니터링 로그의 목록 항목, 조회조건 등을 관리한다.
 * @author 장철호
 * @version 1.0
 * @created 28-6-2010 오전 11:33:26
 */
@SuppressWarnings("serial")
public class FileSysMntrngLogVO extends FileSysMntrngLog {

	/** 검색조건 */
    private String searchCnd = "";
    
    /** 검색단어 */
    private String searchWrd = "";
    
    /** 시작일자 조회조건 */
    private String searchBgnDe = "";
    
    /** 시작시간 조회조건 */
    private String searchBgnHour = "";
    
    /** 시작일시 조회조건 */
    private String searchBgnDt = "";
    
    /** 종료일자 조회조건 */
    private String searchEndDe = "";
    
    /** 종료시간 조회조건 */
    private String searchEndHour = "";
    
    /** 종료일시 조회조건 */
    private String searchEndDt = "";
    
    /** 현재페이지 */
    private int pageIndex = 1;

    /** 페이지개수 */
    private int pageUnit = 10;

    /** 페이지사이즈 */
    private int pageSize = 10;

    /** 첫페이지 인덱스 */
    private int firstIndex = 1;

    /** 마지막페이지 인덱스 */
    private int lastIndex = 1;

    /** 페이지당 레코드 개수 */
    private int recordCountPerPage = 10;

	/**
	 * 검색 조건 반환
	 */
	public String getSearchCnd() {
		return searchCnd;
	}

	/**
	 * 검색 조건 설정
	 */
	public void setSearchCnd(String searchCnd) {
		this.searchCnd = searchCnd;
	}

	/**
	 * 검색어 반환
	 */
	public String getSearchWrd() {
		return searchWrd;
	}

	/**
	 * 검색어 설정
	 */
	public void setSearchWrd(String searchWrd) {
		this.searchWrd = searchWrd;
	}

	/**
	 * 검색 시작일 반환
	 */
	public String getSearchBgnDe() {
		return searchBgnDe;
	}

	/**
	 * 검색 시작일 설정
	 */
	public void setSearchBgnDe(String searchBgnDe) {
		this.searchBgnDe = searchBgnDe;
	}

	/**
	 * 검색 시작 시간 반환
	 */
	public String getSearchBgnHour() {
		return searchBgnHour;
	}

	/**
	 * 검색 시작 시간 설정
	 */
	public void setSearchBgnHour(String searchBgnHour) {
		this.searchBgnHour = searchBgnHour;
	}

	/**
	 * 검색 시작 일시 반환
	 */
	public String getSearchBgnDt() {
		return searchBgnDt;
	}

	/**
	 * 검색 시작 일시 설정
	 */
	public void setSearchBgnDt(String searchBgnDt) {
		this.searchBgnDt = searchBgnDt;
	}

	/**
	 * 검색 종료일 반환
	 */
	public String getSearchEndDe() {
		return searchEndDe;
	}

	/**
	 * 검색 종료일 설정
	 */
	public void setSearchEndDe(String searchEndDe) {
		this.searchEndDe = searchEndDe;
	}

	/**
	 * 검색 종료 시간 반환
	 */
	public String getSearchEndHour() {
		return searchEndHour;
	}

	/**
	 * 검색 종료 시간 설정
	 */
	public void setSearchEndHour(String searchEndHour) {
		this.searchEndHour = searchEndHour;
	}

	/**
	 * 검색 종료 일시 반환
	 */
	public String getSearchEndDt() {
		return searchEndDt;
	}

	/**
	 * 검색 종료 일시 설정
	 */
	public void setSearchEndDt(String searchEndDt) {
		this.searchEndDt = searchEndDt;
	}

	/**
	 * 페이지 인덱스 반환
	 */
	public int getPageIndex() {
		return pageIndex;
	}

	/**
	 * 페이지 인덱스 설정
	 */
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	/**
	 * 페이지 단위 반환
	 */
	public int getPageUnit() {
		return pageUnit;
	}

	/**
	 * 페이지 단위 설정
	 */
	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}

	/**
	 * 페이지 크기 반환
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 페이지 크기 설정
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * 첫 페이지 인덱스 반환
	 */
	public int getFirstIndex() {
		return firstIndex;
	}

	/**
	 * 첫 페이지 인덱스 설정
	 */
	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	/**
	 * 마지막 페이지 인덱스 반환
	 */
	public int getLastIndex() {
		return lastIndex;
	}

	/**
	 * 마지막 페이지 인덱스 설정
	 */
	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}

	/**
	 * 페이지당 레코드 수 반환
	 */
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	/**
	 * 페이지당 레코드 수 설정
	 */
	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}



}
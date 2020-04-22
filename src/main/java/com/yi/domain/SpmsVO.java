package com.yi.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class SpmsVO {
	private int projectNo;
	private String projectName;
	private String projectContent;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date projectStart;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date projectEnd;
	private String projectState;
	
	
	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectContent() {
		return projectContent;
	}
	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}
	public Date getProjectStart() {
		return projectStart;
	}
	public void setProjectStart(Date projectStart) {
		this.projectStart = projectStart;
	}
	public Date getProjectEnd() {
		return projectEnd;
	}
	public void setProjectEnd(Date projectEnd) {
		this.projectEnd = projectEnd;
	}
	public String getProjectState() {
		return projectState;
	}
	public void setProjectState(String projectState) {
		this.projectState = projectState;
	}
	
	@Override
	public String toString() {
		return "SpmsVO [projectNo=" + projectNo + ", projectName=" + projectName + ", projectContent=" + projectContent
				+ ", projectStart=" + projectStart + ", projectEnd=" + projectEnd + ", projectState=" + projectState
				+ "]";
	}
	
	
}

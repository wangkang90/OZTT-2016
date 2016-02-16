package com.org.oztt.formDto;

/**
 * 分类一览
 * @author linliuan
 *
 */
public class OzTtAdClDto {

    private String no;

    private String classId;

    private String className;

    private String sortOrder;

    private String fatherClassId;
    
    private String fatherClassName;

    private String openFlg;

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(String sortOrder) {
        this.sortOrder = sortOrder;
    }

    public String getFatherClassId() {
        return fatherClassId;
    }

    public void setFatherClassId(String fatherClassId) {
        this.fatherClassId = fatherClassId;
    }

    public String getFatherClassName() {
        return fatherClassName;
    }

    public void setFatherClassName(String fatherClassName) {
        this.fatherClassName = fatherClassName;
    }

    public String getOpenFlg() {
        return openFlg;
    }

    public void setOpenFlg(String openFlg) {
        this.openFlg = openFlg;
    }
}

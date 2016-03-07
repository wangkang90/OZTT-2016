package com.org.oztt.entity;

import java.util.Date;

public class TSysAnnouncement {
    private Long no;

    private String announceno;

    private String announcetitle;

    private String announcecontent;

    private Date releasetime;

    private String ifrevoke;

    private Date revoketime;

    private String ifdelete;

    private Date deletetime;

    private String priority;

    public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getAnnounceno() {
        return announceno;
    }

    public void setAnnounceno(String announceno) {
        this.announceno = announceno;
    }

    public String getAnnouncetitle() {
        return announcetitle;
    }

    public void setAnnouncetitle(String announcetitle) {
        this.announcetitle = announcetitle;
    }

    public String getAnnouncecontent() {
        return announcecontent;
    }

    public void setAnnouncecontent(String announcecontent) {
        this.announcecontent = announcecontent;
    }

    public Date getReleasetime() {
        return releasetime;
    }

    public void setReleasetime(Date releasetime) {
        this.releasetime = releasetime;
    }

    public String getIfrevoke() {
        return ifrevoke;
    }

    public void setIfrevoke(String ifrevoke) {
        this.ifrevoke = ifrevoke;
    }

    public Date getRevoketime() {
        return revoketime;
    }

    public void setRevoketime(Date revoketime) {
        this.revoketime = revoketime;
    }

    public String getIfdelete() {
        return ifdelete;
    }

    public void setIfdelete(String ifdelete) {
        this.ifdelete = ifdelete;
    }

    public Date getDeletetime() {
        return deletetime;
    }

    public void setDeletetime(Date deletetime) {
        this.deletetime = deletetime;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }
}
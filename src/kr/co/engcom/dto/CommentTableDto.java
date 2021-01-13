package kr.co.engcom.dto;

import java.sql.Date;

public class CommentTableDto {
   private int commentNumber;
   private String commentContent;
   private int contentNumber;
   private String id;
   private Date redate;
   private String update_Flag;
   
   public int getCommentNumber() {
      return commentNumber;
   }
   public void setCommentNumber(int commentNumber) {
      this.commentNumber = commentNumber;
   }
   public String getCommentContent() {
      return commentContent;
   }
   public void setCommentContent(String commentContent) {
      this.commentContent = commentContent;
   }
   public int getContentNumber() {
      return contentNumber;
   }
   public void setContentNumber(int contentNumber) {
      this.contentNumber = contentNumber;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public Date getRedate() {
      return redate;
   }
   public void setRedate(Date redate) {
      this.redate = redate;
   }
   public String getUpdate_Flag() {
	      return update_Flag;
   }
   public void setUpdate_Flag(String update_Flag) {
	  this.update_Flag = update_Flag;
   }
   
}


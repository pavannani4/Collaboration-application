package com.letzchaat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ChatMessages {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int no_msgs;
    private String message;
    private String msgDate;

//private String messageIndex;
//private String chatContent;
//private String activePollingXhr;
public int getNo_msgs() {
	return no_msgs;
}
public void setNo_msgs(int no_msgs) {
	this.no_msgs = no_msgs;
}

public String getMessage() {
	return message;
}

public void setMessage(String message) {
	this.message = message;
}
public String getMsgDate() {
	return msgDate;
}
public void setMsgDate(String msgDate) {
	this.msgDate = msgDate;
}
/*public String getMessageIndex() {
	return messageIndex;
}
public void setMessageIndex(String messageIndex) {
	this.messageIndex = messageIndex;
}
public String getChatContent() {
	return chatContent;
}
public void setChatContent(String chatContent) {
	this.chatContent = chatContent;
}
public String getActivePollingXhr() {
	return activePollingXhr;
}
public void setActivePollingXhr(String activePollingXhr) {
	this.activePollingXhr = activePollingXhr;
}*/



}

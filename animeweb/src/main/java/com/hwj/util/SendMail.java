package com.hwj.util;

import java.util.Calendar;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Multipart;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendMail {
	public static void sendMessage(String smtpHost, String from, String fromUserPassword, String to, String subject,
			String messageText, String messageType) throws MessagingException {
		// 第一步：配置javax.mail.Session对象
		System.out.println("为" + smtpHost + "配置mail session对象");

		Properties props = new Properties();
		props.put("mail.smtp.host", smtpHost);
		props.put("mail.smtp.starttls.enable", "true");// 使用 STARTTLS安全连接
		props.put("mail.smtp.port", "25"); // google使用465或587端口
		props.put("mail.smtp.auth", "true"); // 使用验证
		// props.put("mail.debug", "true");
		// Session mailSession = Session.getInstance(props, new
		// MyAuthenticator(from, fromUserPassword));
		Authenticator authenticator = new MyAuthenticator("462580528", "cblbcuhwtlytcagc");
		Session mailSession = Session.getDefaultInstance(props, authenticator);

		// 第二步：编写消息
		System.out.println("编写消息from——to:" + from + "——" + to);

		InternetAddress fromAddress = new InternetAddress(from);
		InternetAddress toAddress = new InternetAddress(to);

		MimeMessage message = new MimeMessage(mailSession);

		message.setFrom(fromAddress);
		message.addRecipient(RecipientType.TO, toAddress);

		message.setSentDate(Calendar.getInstance().getTime());
		message.setSubject(subject, "UTF-8");
		;
		message.setContent(messageText, "UTF-8");
		message.setRecipient(javax.mail.internet.MimeMessage.RecipientType.TO, toAddress);

		Multipart mainPart = new MimeMultipart();
		BodyPart html = new MimeBodyPart();
		html.setContent(messageText.trim(), "text/html; charset=utf-8");
		mainPart.addBodyPart(html);
		message.setContent(mainPart);
		Transport.send(message);
		System.out.println("send successful");

		// 第三步：发送消息
		// Transport transport = mailSession.getTransport("smtp");
		// transport.connect(smtpHost, "462580528", "cblbcuhwtlytcagc");
		// transport.send(message);
		// System.out.println("message yes");
	}

	public static void main(String[] args) {
		try {
			SendMail.sendMessage("smtp.qq.com", "462580528@qq.com", "**********", "634104027@qq.com", "nihao",
					"是我，大事不好 不，不是那样的，8号机的资讯泄露给第三者了，我明白，我会想办法的。根据情况，不惜封口我也会阻止下来，毕竟无论如何都不能让机关知道。现在开始潜入会场 El Psy Congoo，人很少啊，果然是机关插手来干扰了吗？ ", "text/html;charset=gb2312");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

class MyAuthenticator extends Authenticator {
	String userName = "";
	String password = "";

	public MyAuthenticator() {

	}

	public MyAuthenticator(String userName, String password) {
		this.userName = userName;
		this.password = password;
	}

	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(userName, password);
	}
}

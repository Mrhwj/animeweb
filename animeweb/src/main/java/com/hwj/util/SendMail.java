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
		// ��һ��������javax.mail.Session����
		System.out.println("Ϊ" + smtpHost + "����mail session����");

		Properties props = new Properties();
		props.put("mail.smtp.host", smtpHost);
		props.put("mail.smtp.starttls.enable", "true");// ʹ�� STARTTLS��ȫ����
		props.put("mail.smtp.port", "25"); // googleʹ��465��587�˿�
		props.put("mail.smtp.auth", "true"); // ʹ����֤
		// props.put("mail.debug", "true");
		// Session mailSession = Session.getInstance(props, new
		// MyAuthenticator(from, fromUserPassword));
		Authenticator authenticator = new MyAuthenticator("462580528", "cblbcuhwtlytcagc");
		Session mailSession = Session.getDefaultInstance(props, authenticator);

		// �ڶ�������д��Ϣ
		System.out.println("��д��Ϣfrom����to:" + from + "����" + to);

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

		// ��������������Ϣ
		// Transport transport = mailSession.getTransport("smtp");
		// transport.connect(smtpHost, "462580528", "cblbcuhwtlytcagc");
		// transport.send(message);
		// System.out.println("message yes");
	}

	public static void main(String[] args) {
		try {
			SendMail.sendMessage("smtp.qq.com", "462580528@qq.com", "**********", "634104027@qq.com", "nihao",
					"���ң����²��� �������������ģ�8�Ż�����Ѷй¶���������ˣ������ף��һ���취�ġ������������ϧ�����Ҳ����ֹ�������Ͼ�������ζ������û���֪�������ڿ�ʼǱ��᳡ El Psy Congoo���˺��ٰ�����Ȼ�ǻ��ز������������� ", "text/html;charset=gb2312");
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

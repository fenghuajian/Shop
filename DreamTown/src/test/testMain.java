package test;

import org.junit.Test;

import javax.mail.Address;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//import java.util.Properties;
//
public class testMain {
   int i= (int) ((Math.random()*9+1)*100000);
  String content=String.valueOf(i);
 @Test
public void send(){/**/
     try {
           boolean flag=false;
           //TODO Auto-generated method stub
           Properties props = new Properties();
           // 开启debug调试（会提示发邮件的过程）
            props.setProperty("mail.debug", "true");
            // 发送服务器需要身份验证
            props.setProperty("mail.smtp.auth", "true");
            // 设置邮件服务器主机名
            props.setProperty("mail.host", "smtp.qq.com");
            // 发送邮件协议名称
            props.setProperty("mail.transport.protocol", "smtp");

            // 设置环境信息
            Session session = Session.getInstance(props);

            // 创建邮件对象
         MimeMessage msg = new MimeMessage(session);
         try {
             msg.setSubject("商城验证码");
         } catch (javax.mail.MessagingException e) {
             e.printStackTrace();
         }
         // 设置邮件内容
            String mail1="2274105767@qq.com";

            msg.setText(content);
            // 设置发件人
            msg.setFrom(new InternetAddress("2274105767@qq.com"));

            Transport transport = session.getTransport();

            //jbmhvmdlrymqeahf
            // 连接邮件服务器
            transport.connect("2274105767", "jbmhvmdlrymqeahf");
            // 发送邮件:mail1是接收者邮箱
            transport.sendMessage(msg, new Address[] { new InternetAddress(mail1) });
            flag=true;
            // 关闭连接
            transport.close();

        } catch (AddressException e) {
         e.printStackTrace();
     } catch (NoSuchProviderException e) {
         e.printStackTrace();
     } catch (javax.mail.MessagingException e) {
         e.printStackTrace();
     }

 }

    @Test
public  void random(){

   int i= (int) ((Math.random()*9+1)*100000);
    System.out.println(i);
}
//
}

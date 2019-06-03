using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EASendMail;

namespace Agon.Beta
{
    public partial class Mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void mailme( string receiver)
        {
           
            String r = receiver.ToString();
            SmtpMail oMail = new SmtpMail("TryIt");
            SmtpClient oSmtp = new SmtpClient();

            // Your gmail email address
            oMail.From = "vks.chanan95@gmail.com";

            // Set recipient email address
            oMail.To = r;

            // Set email subject
            oMail.Subject = "Request Confirmation";

            // Set email body
            string name;
            string address;
            name = "Vikas Chanan ";
            address = "CBD Belapur V-Time Square";
            //oMail.TextBody = name;
            oMail.TextBody = name+ "has requested to sell raag please send the collector to following address" +address;
            //oMail.TextBody = address;
            // Gmail SMTP server address
            SmtpServer oServer = new SmtpServer("smtp.gmail.com");

            // Set 465 port
            oServer.Port = 465;

            // detect SSL/TLS automatically
            oServer.ConnectType = SmtpConnectType.ConnectSSLAuto;

            // Gmail user authentication
            // For example: your email is "gmailid@gmail.com", then the user should be the same
            oServer.User = "vks.chanan95@gmail.com";
            oServer.Password = "testingmailserver";

            try
            {
                Console.WriteLine("start to send email over SSL ...");
                oSmtp.SendMail(oServer, oMail);
                Console.WriteLine("email was sent successfully!");
            }
            catch (Exception ep)
            {
                Console.WriteLine("failed to send email with the following error:");
                Console.WriteLine(ep.Message);
                Console.ReadKey();
            }
        }
    }
}
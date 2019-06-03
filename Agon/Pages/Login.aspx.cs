using EASendMail;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agon.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_login_Click(object sender, EventArgs e)
        {

            NameValueCollection section = (NameValueCollection)ConfigurationManager.GetSection("appSettings");

            var getconnect = section["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(getconnect);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from login where username=@username and passwordhash=@passwordhash", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@passwordhash", TextBox2.Text);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            //MailAddress myid = new MailAddress("vicke008@gmail.com");
            //String myd = myid.ToString();
            //Login log = new Login();
            //log.mailme(myd);

            int exquery = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["id"] = TextBox1;

                Response.Redirect("~/LandingPage.aspx");
                Session.RemoveAll();

                

            }

        }



        protected void btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Registration.aspx");
        }

        //protected void mailme(String receiver)
        //{

        //    String r = receiver.ToString();
        //    SmtpMail oMail = new SmtpMail("TryIt");
        //    SmtpClient oSmtp = new SmtpClient();

        //    // Your gmail email address
        //    oMail.From = "gweg@gmail.com";

        //    // Set recipient email address
        //    oMail.To = r;

        //    // Set email subject
        //    oMail.Subject = "test email from gmail account";

        //    // Set email body
        //    oMail.TextBody = "this is a test email sent from c# project with gmail.";
        //    // Gmail SMTP server address
        //    SmtpServer oServer = new SmtpServer("smtp.gmail.com");

        //    // Set 465 port
        //    oServer.Port = 465;

        //    // detect SSL/TLS automatically
        //    oServer.ConnectType = SmtpConnectType.ConnectSSLAuto;

        //    // Gmail user authentication
        //    // For example: your email is "gmailid@gmail.com", then the user should be the same
        //    oServer.User = "gweg@gmail.com";
        //    oServer.Password = "123";

        //    try
        //    {
        //        Console.WriteLine("start to send email over SSL ...");
        //        oSmtp.SendMail(oServer, oMail);
        //        Console.WriteLine("email was sent successfully!");
        //    }
        //    catch (Exception ep)
        //    {
        //        Console.WriteLine("failed to send email with the following error:");
        //        Console.WriteLine(ep.Message);
        //        Console.ReadKey();
        //    }
        //}
    }

}

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
    public partial class Sign_in : System.Web.UI.Page
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

            int exquery = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["id"] = TextBox1;

                Response.Redirect("~/Pages/LandingPage.aspx");
                Session.RemoveAll();
            }
            
        }

       

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Registration.aspx");
        }
    }

}
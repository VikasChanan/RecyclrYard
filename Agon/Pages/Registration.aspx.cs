using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agon.Beta
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_register_Click(object sender, EventArgs e)
        {
            NameValueCollection section = (NameValueCollection)ConfigurationManager.GetSection("appSettings");
            var getconnect = section["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(getconnect);
            con.Open();
            DateTime theDate = DateTime.Now;
            SqlCommand cmd = new SqlCommand("insert into login values (@username, @passwordhash, @Phone_no, @P_address,@Join_date)", con);
            cmd.Parameters.AddWithValue("username", txt_username.Text);
            cmd.Parameters.AddWithValue("passwordhash", txt_password.Text);
            cmd.Parameters.AddWithValue("Phone_no", txt_phoneno.Text);
            cmd.Parameters.AddWithValue("P_address", txt_address.Text);
            cmd.Parameters.AddWithValue("Join_date", theDate);

            cmd.ExecuteNonQuery();


            txt_username.Text = "";
            txt_password.Text = "";
            txt_phoneno.Text = "";
            txt_address.Text = "";

            Response.Redirect("~/Pages/Login.aspx");
        }
    }
}

using EASendMail;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Agon.Beta;

namespace Agon.Pages
{
    public partial class sell_scrap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_sell_scrap(object sender, EventArgs e)
        {

            NameValueCollection section = (NameValueCollection)ConfigurationManager.GetSection("appSettings");

            var getconnect = section["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(getconnect);
            con.Open();
            DateTime theDate = DateTime.Now;
            SqlCommand cmd = new SqlCommand("insert into sell_scrap values (@datepicker, @location, @est_weight,@scraptype)", con);
            cmd.Parameters.AddWithValue("datepicker", datepicker.Text);
            cmd.Parameters.AddWithValue("location", DropDownList1.Text);
            cmd.Parameters.AddWithValue("est_weight", est_weight.Text);
            cmd.Parameters.AddWithValue("scraptype", ddlItems.Text);

            MailAddress emailid = new MailAddress("vicke008@gmail.com");
            string id = emailid.ToString();
            Mail m = new Mail();
            m.mailme(id);




            cmd.ExecuteNonQuery();


            datepicker.Text = "";
            DropDownList1.Text = "";
            est_weight.Text = "";
            ddlItems.Text = "";
            Response.Write("ok");
            Response.Redirect("/LandingPage.aspx");
            //messagebox for success to be implemented
            
        }
    }
}
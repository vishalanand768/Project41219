using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project41219
{
    public partial class Changepassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pp"] != null && Session["pp"].ToString() != "")
            {
                //code
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnchangepassword_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_changepassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", Session["pp"]);
            cmd.Parameters.AddWithValue("@old", txtold.Text);
            cmd.Parameters.AddWithValue("@new", txtnew.Text);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                lblmsg.Text = "Password has been changed !!!";
            }
            else
            {
                lblmsg.Text = "Password has not been changed !!!";
            }
        }
    }
}
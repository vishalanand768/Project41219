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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pp"] != null && Session["pp"].ToString() != "")
            {
                loadDataOnEdit();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        public void loadDataOnEdit()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_reg_edit", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@rid", Session["pp"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblname1.Text = ds.Tables[0].Rows[0]["name"].ToString();
                lblname.Text = ds.Tables[0].Rows[0]["name"].ToString();
                lblemail.Text = ds.Tables[0].Rows[0]["email"].ToString();
                lblpassword.Text = ds.Tables[0].Rows[0]["password"].ToString();
                
            }
        }
    }
}
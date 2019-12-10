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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["qq"] != null && Request.QueryString["qq"].ToString() != "")
            {
                if (!IsPostBack)
                { 
                    loadDataOnEdit();
                }
            }
            
        }

        public void loadDataOnEdit()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_reg_edit", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@rid", Request.QueryString["qq"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtname.Text = ds.Tables[0].Rows[0]["name"].ToString();
                txtemail.Text = ds.Tables[0].Rows[0]["email"].ToString();
                txtpassword.Text = ds.Tables[0].Rows[0]["password"].ToString();
                btnregister.Text = "Update";
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (btnregister.Text == "Register")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("usp_reg_insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("usp_reg_update", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@rid", Request.QueryString["qq"]);
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("manageusers.aspx");
        }
    }
}
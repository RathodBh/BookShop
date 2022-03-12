using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace book.user
{
    public partial class user_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if ( email.Text == "" || password.Text == "")
            {
                Response.Write("<script>alert('Please fill enter all details');</script>");
            }
           
            else
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from cust_info where email='" + email.Text + "' and pwd='"+ password.Text +"'";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i > 0)
                {
                    Session["user_email"] = email.Text;
                    Response.Write("<script>alert('Login success');location.href='main_page.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('Email or password is wrong..');</script>");
                }
            }
        }
    }
}
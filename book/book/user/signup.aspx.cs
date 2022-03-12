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
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }


        //creting function for check numer value or not
        public bool IsNumeric(String str)
        {
            try
            {
                if (!string.IsNullOrEmpty(str))
                {
                    long num;
                    if (long.TryParse(str, out num))
                    {
                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
            return false;
        }

        //protected void btn_signup_Click(object sender, EventArgs e)
        //{
            
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (name.Text == "" || email.Text == "" || mobile.Text == "" || password.Text == "" || addr.Text == "")
            {
                Response.Write("<script>alert('Please fill enter all details');</script>");
            }
            else if (IsNumeric(mobile.Text) == false || mobile.Text.Length != 10)
            {
                Response.Write("<script>alert('Please fill enter valid Phone number or enter only Number');</script>");
            }
            else
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from cust_info where email='" + email.Text + "'";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i > 0)
                {
                    Response.Write("<script>alert('You are already registered');</script>");
                }
                else
                {

                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandType = CommandType.Text;
                    cmd1.CommandText = "insert into cust_info values('" + name.Text + "','" + mobile.Text + "','" + addr.Text + "','" + email.Text + "','" + password.Text + "')";
                    cmd1.ExecuteNonQuery();

                    Response.Write("<script>alert('Registration Successfully...');</script>");
                }
            }
        }
    }
}
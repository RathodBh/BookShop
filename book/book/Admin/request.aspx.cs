using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace book.Admin
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from purchase_mst where req = 'r'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            r1.DataSource = dt;
            r1.DataBind();

        }
        public string checkpdf(object o2, object id2)
        {
            if (o2.ToString() == "")
                return "Not available";
            else
            {
                //o2 = "../Admin/" + o2.ToString();
                return "<a href='" + o2.ToString() + "' style='color: green; '>View PDF</a>";
            }
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from book_mst WHERE name like '%'+'" + txt_search.Text + "'+'%' or author like '%'+'" + txt_search.Text + "'+'%' or isbn like '%'+'" + txt_search.Text + "'+'%' or price like '%'+'" + txt_search.Text + "'+'%' or pages like '%'+'" + txt_search.Text + "'+'%'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            r1.DataSource = dt;
            r1.DataBind();
        }

    }
}
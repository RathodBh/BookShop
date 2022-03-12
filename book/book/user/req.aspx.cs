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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            String name = Request.QueryString["name"].ToString();
            String isbn = Request.QueryString["isbn"].ToString();
            String author = Request.QueryString["author"].ToString();
            String price = Request.QueryString["price"].ToString();
            String pdf = Request.QueryString["pdf"].ToString(); 

            String email = Session["user_email"].ToString();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into purchase_mst(isbn, name, author, price, email, pdf, req) values('" + isbn + "','" + name + "','" + author + "','" + price + "','" + email + "','" + pdf + "', 'r')";
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Request added');location.href='books.aspx';</script>");
            
        }

    }
}
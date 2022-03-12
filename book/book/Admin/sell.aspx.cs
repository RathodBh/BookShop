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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        int i = 0, id;
        String path_pdf = "";
        String name1, isbn1, author1, price1, pages1,pdf1, pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            //SqlCommand cmd0 = con.CreateCommand();
            //cmd0.CommandType = CommandType.Text;
            //cmd0.CommandText = "select * from book_mst where id=" + id;
            //cmd0.ExecuteNonQuery();

            //DataTable dt = new DataTable();
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //da.Fill(dt);

            //foreach (DataRow dr in dt.Rows)
            //{
            //    name1 = dr["name"].ToString();
            //    name.Text = dr["name"].ToString();

            //    isbn1 = dr["isbn"].ToString();
            //    isbn.Text = dr["isbn"].ToString();

            //    author1 = dr["author"].ToString();
            //    author.Text = dr["author"].ToString();

            //    price1 = dr["price"].ToString();
            //    price.Text = dr["price"].ToString();

            //    //pages1 = dr["pages"].ToString();
            //    //pages.Text = dr["pages"].ToString();

            //    pdf1 = dr["pdf"].ToString();

            //}

            DateTime date1 = DateTime.Today;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update purchase_mst set req='y', dt='"+ date1 +"' WHERE id="+ id;
            //cmd.CommandText = "insert into purchase_mst values('" + isbn1.ToString() + "','" + name1.ToString() + "','" + author1.ToString() + "','" + price1.ToString() + "','" + date1.ToString() + "','"+ user_list.SelectedValue.ToString() + "' ,'"+ pdf1.ToString() +"')";

            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                pid = dr["isbn"].ToString();

            }

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "DELETE FROM book_mst WHERE isbn= '"+ pid + "' ";
            cmd2.ExecuteNonQuery();

            Response.Write("<script>alert('Success');location.href='request.aspx';</script>");
           
        }

      

       
    }
}
      
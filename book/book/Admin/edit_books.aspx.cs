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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        int i = 0,id;
        String path_pdf= "";
        String name1, isbn1, author1, price1, pages1, pdf1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from book_mst where id="+id;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                name1 = dr["name"].ToString();
                Label1.Text = dr["name"].ToString();
                isbn1 = dr["isbn"].ToString();
                Label2.Text = dr["isbn"].ToString();

                author1 = dr["author"].ToString();
                Label3.Text = dr["author"].ToString();

                price1 = dr["price"].ToString();
                Label4.Text = dr["price"].ToString();

                pages1= dr["pages"].ToString();
                Label5.Text = dr["pages"].ToString();

                pdf1 = dr["pdf"].ToString();
                Label6.Text = dr["pdf"].ToString();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

            if (name.Text != "")
            {
                name1 = name.Text;

            }
            if (author.Text != "")
            {
                author1 = author.Text;

            }
            if (price.Text != "")
            {
                price1 = price.Text;

            }
            if (pages.Text != "")
            {
                pages1 = pages.Text;

            }
            if (isbn.Text != "")
            {
                isbn1 = isbn.Text;

            }
            
                if (fu_pdf.FileName.ToString() != "")
                {
                    if (!(System.IO.Path.GetExtension(fu_pdf.FileName).ToLower().Equals(".pdf")))
                    {
                        Response.Write("<script>alert('Upload only pdf');</script>");
                    }
                    else
                    {
                        Random r2 = new Random(4);
                        int num2 = r2.Next();
                        string pdf_nm = "pdf" + num2.ToString() + fu_pdf.FileName.ToString() + System.IO.Path.GetExtension(fu_pdf.FileName);

                        fu_pdf.SaveAs(Request.PhysicalApplicationPath + "Admin/book_pdf/" + pdf_nm.ToString());
                        path_pdf = "../Admin/book_pdf/" + pdf_nm.ToString();
                    }
                }
                else
                {
                    if (Label6.Text != "")
                        path_pdf = Label6.Text;
                }
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE book_mst SET name='" + name1.ToString() + "',author='" + author1.ToString() + "',price='" + price1.ToString() + "',pages='" + pages1.ToString() + "',pdf='" + path_pdf + "',isbn='" + isbn1.ToString() + "' WHERE id = " + id;
                
                cmd.ExecuteNonQuery(); 
                   
                Response.Write("<script>alert('Book updated');location.href='#';</script>");
                
            
        }
    }
}
      
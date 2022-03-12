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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        int i = 0;
        String path_pdf= "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (name.Text == "" || isbn.Text == "" || author.Text == "" || price.Text == "" || pages.Text == "")
            {
                Response.Write("<script>alert('Please enter all details');</script>");
            }

            else
            {

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

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into book_mst (name,author,price,pages,pdf,isbn) values('" + name.Text + "','" + author.Text + "','" + price.Text + "','" + pages.Text + "','" + path_pdf + "','" + isbn.Text + "')";
                cmd.ExecuteNonQuery(); 
                   
                Response.Write("<script>alert('Book added successfully');location.href='#';</script>");
                
            }
        }
    }
}
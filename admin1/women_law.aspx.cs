using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin1_women_law : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WE\App_Data\new.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/photo/" + FileUpload1.FileName));
        Image1.ImageUrl = "~/photo/" + FileUpload1.FileName;
        string path = "~/photo/" + FileUpload1.FileName;
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO women_law_master (law, img)VALUES('"+TextBox1.Text+"','"+ path +"')";
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
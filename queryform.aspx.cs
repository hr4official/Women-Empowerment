using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class queryform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WE\App_Data\new.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO QUERYFORM (EMAIL, QUERY,PROBLEMTYPE)VALUES ('"+txt_email.Text+"','"+txt_query.Text+"','"+txt_problemtype.Text+"')";
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Write("<script>alert('Your Request Submit successfully...')</script>");
    }
}
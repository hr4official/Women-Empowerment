using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WE\App_Data\new.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select count(*) from WomenRegistration where EmailID = '" + txt_email.Text + "' and Password = '" + txt_pswd.Text + "'";
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (n == 1)
        {
            Session["unm"] = txt_email.Text;
            Response.Redirect("welcomeuser.aspx");
            Response.Write("<script>alert('Register successfuly...')</script>");
        }
        else
        {

            Response.Write("<script>alert('UserName and Password don't Match...')</script>");

        }
        //Response.Write("<script>alert('UserName and Password don't Match......')</script>");
    }
}
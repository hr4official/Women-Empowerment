using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class reply_query : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WE\App_Data\new.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label lblemail=(Label)DataList1.Items[0].FindControl("EMAILLabel");
        Label lblqry=(Label)DataList1.Items[0].FindControl("QUERYLabel");
        TextBox txtrply=(TextBox)DataList1.Items[0].FindControl("txtrply");
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO REPLYMASTER (QID, EMAIL, REPLY)VALUES ('"+Request.QueryString["id"]+"','"+lblemail.Text+"','"+txtrply.Text+"')";
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
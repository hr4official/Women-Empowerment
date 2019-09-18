using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
public partial class forgetpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WE\App_Data\new.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_fp_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select Password from WOMENREGISTRATION where EmailID = '" + txt_frgtpswd.Text + "'";
        string n = cmd.ExecuteScalar().ToString();
        con.Close();

        System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
        msg.From = new MailAddress("jjp.1987@gmail.com");

        msg.To.Add(txt_frgtpswd.Text);

        msg.Subject = "your username and password";

        msg.Body = "STUDENT ID:" + txt_frgtpswd.Text + "PASSWORD" + n.ToString() ;

        msg.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();

        smtp.Host = "smtp.gmail.com";

        System.Net.NetworkCredential nc = new System.Net.NetworkCredential();

        nc.UserName = "jjp.1987@gmail.com";
        nc.Password = "jeet9717";

        smtp.UseDefaultCredentials = true;

        smtp.Credentials = nc;

        smtp.Port = 587;

        smtp.EnableSsl = true;

        smtp.Send(msg);


        Response.Write("mail send succesfuly...");

    }
}
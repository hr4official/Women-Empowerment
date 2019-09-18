using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class WomenRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WE\App_Data\new.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_reg_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select count(*) from WomenRegistration where EmailID = '" + txt_email.Text + "' ";
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (n == 1)
        {


            Response.Write("<script>alert('Email Id is alredy in use..')</script>");
        }
        else
        {
            //mail...

            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
            msg.From = new MailAddress("jjp.1987@gmail.com");

            msg.To.Add(txt_email.Text);

            msg.Subject = "your username and password";

            msg.Body = "MAIl:" + txt_email.Text + "PASSWORD:" + txt_password.Text;

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

            //mail...



            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO WomenRegistration(FN, LN, CN, Address, Age, MaratialStatus, EmailID, Password) VALUES ('" + txt_fn.Text + "','" + txt_ln.Text + "','" + txt_cn.Text + "','" + txt_address.Text + "','" + txt_age.Text + "','" + dd_ms.SelectedItem.Value + "','" + txt_email.Text + "','" + txt_password.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();


            //Response.Write("Registered succesfully...");

            Response.Write("<script>alert('Register successfuly...')</script>");

        }



    }
}
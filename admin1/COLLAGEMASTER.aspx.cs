using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class COLLAGEMASTER : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WE\App_Data\new.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_reg_Click(object sender, EventArgs e)
    {
        Fileupload_img.SaveAs(Server.MapPath("~/photo/"+Fileupload_img.FileName));
        Image1.ImageUrl="~/photo/"+Fileupload_img.FileName;
        string path="~/photo/"+Fileupload_img.FileName;
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO COLLAGEMASTER(CLG_NM, STATE, CITY, ADDRESS, UNIVERCITY, STREAM, IMAGE, NO_OF_SEATS_WOMEN, FEES) VALUES ('" + txt_clgNM.Text + "','" + txt_state.Text + "','" + txt_city.Text + "','" + txt_address.Text + "','" + txt_univercity.Text + "','" + txt_stream.Text + "','" + path  + "','" + txt_nos.Text + "','" + txt_fees.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
       
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "UPDATE COLLAGEMASTER SET  CLG_NM ='" + txt_clgNM.Text + "', STATE ='" + txt_state.Text + "', CITY ='" + txt_city.Text + "', ADDRESS ='" + txt_address.Text + "', UNIVERCITY ='" + txt_univercity.Text + "', STREAM ='" + txt_stream.Text + "', IMAGE ='" + Image1.ImageUrl + "', NO_OF_SEATS_WOMEN ='" + txt_nos.Text + "',FEES ='" + txt_fees.Text + "'   where CLG_ID ='"+DropDownList1.SelectedValue+"'";
        cmd.ExecuteNonQuery();
        con.Close();
        
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "DELETE FROM COLLAGEMASTER where CLG_ID ='" + DropDownList1.SelectedValue + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        
    }
}
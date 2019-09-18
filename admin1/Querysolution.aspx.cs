using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Querysolution : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WE\App_Data\new.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName.ToString() == "")
        {
              con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO querysolutionAdminside(qid, solution, solution_by, date_of_solution, attachment)VALUES ('" + DropDownList1.SelectedValue + "','" + txt_solution.Text + "','" + txt_solutionBy.Text + "','" + System.DateTime.Now.ToShortDateString() + "','" + null + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write(@"<script language='javascript'>alert('Added..');</script>");
        }
        else
        {

            FileUpload1.SaveAs(Server.MapPath("~/fileQA/" + FileUpload1.FileName));
            string path = "~/fileQA/" + FileUpload1.FileName;
            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO querysolutionAdminside(qid, solution, solution_by, date_of_solution, attachment)VALUES ('" + DropDownList1.SelectedValue + "','" + txt_solution.Text + "','" + txt_solutionBy.Text + "','" + System.DateTime.Now.ToShortDateString() + "','" + path + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write(@"<script language='javascript'>alert('Added..');</script>");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select QUERY FROM QUERYFORM  WHERE qid='"+DropDownList1.SelectedValue+"'";
        Literal1.Text = cmd.ExecuteScalar().ToString();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select QUERY FROM QUERYFORM  WHERE qid='" + DropDownList1.SelectedValue + "'";
        Literal1.Text = cmd.ExecuteScalar().ToString();
        con.Close();
    }
}
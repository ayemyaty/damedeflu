using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    string source = ConfigurationManager.ConnectionStrings["dbFloral"].ConnectionString;
  

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(source);
        SqlCommand cmd;
        con.Open();

        string qry = "select count(*) from AdminInfo where Name='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'";
        cmd = new SqlCommand(qry, con);
        int row = (int)cmd.ExecuteScalar();

        if (row > 0)
        {
            Session["name"] = txtUsername.Text;
            Response.Redirect("~/Admin/ControlPanel.aspx");

        }
        else
        {
            qry = "select * from UserInfo where Name='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'";
            cmd = new SqlCommand(qry, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];


            if (dt.Rows.Count > 0)
            {
                Session["name"] = txtUsername.Text;
                Session["phone"] = dt.Rows[0]["Phone"].ToString();
                Session["address"] = dt.Rows[0]["Address"].ToString();
                Session["email"] = dt.Rows[0]["Email"].ToString();

                if (!String.IsNullOrEmpty(Request.QueryString["id"])) {
                    Response.Redirect("~/User/FlowerSelect.aspx?id="+Request.QueryString["id"]);
                }
                else
                {
                    Response.Redirect("~/Home.aspx");
                }
                

            }
            else { 
                txtUsername.Text = "";
                txtPassword.Text = "";
                lblNoUser.Text = "Invalid User";
            }
       
        }
    }
}
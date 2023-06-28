using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Township : System.Web.UI.Page
{
    string source = ConfigurationManager.ConnectionStrings["dbFloral"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            this.FillDelivery();
    }
    private void FillDelivery()
    {
        SqlConnection cn = new SqlConnection(source);
        cn.Open();
        string sq = "select * from TownShipMst";
        SqlCommand cmd = new SqlCommand(sq, cn);
        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            while (rdr.Read())
            {

                Panel productPanel = new Panel();
                
                Label lblName = new Label();
                Label lblPrice = new Label();


               

                lblName.Text = Convert.ToString(rdr["FType"]);
                //lblName.CssClass = "productName";
                lblPrice.Text = Convert.ToString(rdr["Price"]) + " Kyats";
                //lblPrice.CssClass = "productPrice";


                
                productPanel.Controls.Add(lblName);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblPrice);
                pnlProducts.Controls.Add(productPanel);

            }
        }
        else
        {
            pnlProducts.Controls.Add(new Literal { Text = "No Product found!" });
        }
    }
}
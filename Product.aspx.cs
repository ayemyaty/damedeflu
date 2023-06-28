using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Product : System.Web.UI.Page
{
    string source = ConfigurationManager.ConnectionStrings["dbFloral"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            lnkLogout.Visible = true;
            lnkOrderList.Visible = true;
        }
        if (!IsPostBack)
        {
            this.FillPage();
            this.ItemCategory();
        }
    }


    private void ItemCategory()
    {
        SqlConnection cn = new SqlConnection(source);
        string sq = "select FType from FlowerCategory";
        SqlDataAdapter da = new SqlDataAdapter(sq, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataTable dt = ds.Tables[0];


        drpItemName.DataSource = dt;
        drpItemName.DataTextField = "FType";
        drpItemName.DataValueField = "FType";
        drpItemName.DataBind();
        drpItemName.Items.Insert(0, "SELECT");
    }

    private void FillPage()
    {
        SqlConnection cn = new SqlConnection(source);
        cn.Open();
        string sq = "select * from FlowerItemInfo";
        SqlCommand cmd = new SqlCommand(sq, cn);
        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            while (rdr.Read())
            {

                Panel productPanel = new Panel();
                ImageButton imgbutton = new ImageButton();
                Label lblName = new Label();
                Label lblPrice = new Label();
                Label lblType = new Label();

                imgbutton.ImageUrl =  rdr["Image"].ToString();
                imgbutton.Attributes.CssStyle.Add("width", "100px");
                imgbutton.Attributes.CssStyle.Add("height", "100px");                
                 imgbutton.PostBackUrl = "~/User/FlowerSelect.aspx?id=" + rdr["ItemId"];

                lblName.Text = Convert.ToString(rdr["ItemName"]);
              
                lblPrice.Text = Convert.ToString(rdr["Price"]) + " Kyats";

                lblType.Text = rdr["FType"].ToString();


                productPanel.Controls.Add(imgbutton);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblName);
                productPanel.Controls.Add(new Literal { Text = "<br />" });

                productPanel.Controls.Add(lblPrice);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblType);


                pnlProducts.Controls.Add(productPanel);

            }
        }
        else
        {
            pnlProducts.Controls.Add(new Literal { Text = "No Product found!" });
        }
    }
    protected void btnSort_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(source);
        cn.Open();
        string sq = "select * from FlowerItemInfo where FType=@ft";
        SqlCommand cmd = new SqlCommand(sq, cn);
        cmd.Parameters.AddWithValue("@ft", drpItemName.Text);
        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            while (rdr.Read())
            {

                Panel productPanel = new Panel();
                ImageButton imgbutton = new ImageButton();
                Label lblName = new Label();
                Label lblPrice = new Label();
                Label lblType = new Label();


                imgbutton.ImageUrl =  rdr["Image"].ToString();
                imgbutton.Attributes.CssStyle.Add("width", "100px");
                imgbutton.Attributes.CssStyle.Add("height", "100px");
                //imgbutton.CssClass = "productImage";
                imgbutton.PostBackUrl = "~/User/FlowerSelect.aspx?id=" + rdr["ItemId"];

                lblName.Text = Convert.ToString(rdr["ItemName"]);
                //lblName.CssClass = "productName";
                lblPrice.Text = Convert.ToString(rdr["Price"]) + " Kyats";
                //lblPrice.CssClass = "productPrice";

                lblType.Text = rdr["FType"].ToString();

                productPanel.Controls.Add(imgbutton);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblName);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblPrice);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblType);


                pnlProducts.Controls.Add(productPanel);

            }
        }
        else
        {
            pnlProducts.Controls.Add(new Literal { Text = "No Product found!" });
        }
    }
    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        this.FillPage();
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/Home.aspx");
    }
    protected void lnkOrderList_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/BillingInfo.aspx");
    }
}
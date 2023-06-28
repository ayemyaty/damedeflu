<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous" /></script>
	<link rel="stylesheet" type="text/css" href="product.css" />
	<title>Product</title>
</head>
<body>
    <form id="form1" runat="server">
   <nav class="navbar navbar-expand-lg p-3">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="Home.aspx" id='home' >HOME</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	 
	    <div class=" collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav ms-auto ">
	      	<li><h3>dame de fleu</h3></li>
	      </ul>
	      <ul class="navbar-nav ms-auto d-none d-lg-inline-flex">
	        <li class="nav-item mx-2">
	          
                 <asp:LinkButton ID="lnkLogout" runat="server" CssClass="nav-link text-dark h5" OnClick="lnkLogout_Click" Visible="false">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
</svg>

</asp:LinkButton> 
	          
	        </li>
	        <asp:LinkButton ID="lnkOrderList" runat="server" CssClass="nav-link text-dark h5" Visible="false" OnClick="lnkOrderList_Click"> <li class="nav-item mx-2">
	          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag-dash" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M5.5 10a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1H6a.5.5 0 0 1-.5-.5z"/>
  <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
</svg>
</asp:LinkButton> 
               
	          <li> 
               
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<hr class="sep-3" />
&nbsp;
        <div>
             <asp:DropDownList ID="drpItemName" runat="server" CssClass="rounded-pill" Height="39px" Width="110px"></asp:DropDownList> |
            <asp:Button ID="btnSort" runat="server" Text="Sort" CssClass="rounded-pill" Width="200px" OnClick="btnSort_Click"/>
            <asp:Button ID="btnRefresh" runat="server" Text="Refresh" CssClass="rounded-pill" Width="200px" OnClick="btnRefresh_Click"/>
        </div>

<div class="row">
    <div class="col" id ="for_flower">
    </div>

	 

    <div class="col">
	</div>
    <div class="col">   
	</div>

</div>

<div class="container-fluid" id="for_loop">
	
    				<asp:Panel ID="pnlProducts" runat="server">
                    </asp:Panel>
                    <div style="clear:both;"></div>
  				
</div>
 <hr class="sep-4" />


    </form>
</body>
</html>

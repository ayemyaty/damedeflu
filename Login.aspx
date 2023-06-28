<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>dame de fleu</title>
    <link rel="stylesheet" href="login.css" />
</head>
<body>

    <div class="box">
		<form autocomplete="off" runat="server">
			<h2>Log in</h2>
			<div class="inputBox">
				<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="txtUsername" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
				<span>Userame</span>
				<i></i>
			</div>

			<div class="inputBox">
				<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="txtPassword" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
				<span>Password</span>
				<i></i>
			</div>

			<div class="links">
				<%--<a href="#">Forgot Password ?</a>--%>
				<a href="User/SignUp.aspx">Signup</a>
			</div>

            <p>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </p>

			<p>
                 <asp:Label ID="lblNoUser" runat="server" ForeColor="Red"></asp:Label>
            </p>
		</form>
	</div>
</body>
</html>
    


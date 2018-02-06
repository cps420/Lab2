<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="XEx03Quotation.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirm quotation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" class="form-horizontal" runat="server">
        <main class="container">
            <h1 class="jumbotron">Price quotation</h1>
            <div class="form-group">
                <label class="col-sm-3 control-label">Sales price</label>
                <asp:Label ID="lblSalesPrice" CssClass="col-sm-3 bold" runat="server"></asp:Label>
            </div>
            
            <div class="form-group">
                <label class="col-sm-3 control-label">Discount percent</label>
                <asp:Label ID="lblDiscountAmount" CssClass="col-sm-3 bold" runat="server"></asp:Label>
            </div>
            
            <div class="form-group">
                <label class="col-sm-3 control-label">Total price</label>
                <asp:Label ID="lblTotalPrice" CssClass="col-sm-3 bold" runat="server"></asp:Label>
            </div>

            <div class="row">
                <h3 class="col-sm-offset-2 col-sm-10">Send confirmation to</h3>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Name</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                        display="Dynamic" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Email address</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"
                        display="Dynamic" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <asp:Button ID="btnSend" runat="server" Text="Send confirmation"
                        CssClass="btn btn-primary" OnClick="btnSend_Click"></asp:Button>
                    <asp:Button ID="btnReturn" runat="server" Text="Return"
                        CssClass="btn btn-primary" CausesValidation="false" PostBackUrl="~/Default.aspx"></asp:Button>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-11">
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-info"
                        Text="Click the Send Quotation button to send the quotation via email."></asp:Label>
                </div>
            </div>
        </main>
    </form>
</body>
</html>

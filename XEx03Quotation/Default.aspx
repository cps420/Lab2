<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XEx03Quotation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price quotation</title>
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
                <div class="col-sm-3">
                    <asp:TextBox ID="txtSalesPrice" CssClass="form-control bold" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:Label ID="lblWarningSalesPrice" CssClass="text-danger" runat="server" Text="This field is required." ForeColor="#FF9900"></asp:Label>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-3 control-label">Discount percent</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtDiscountPercent" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:Label ID="lblWarningDiscountPercent" CssClass="text-danger" runat="server" Text="This field is required." ForeColor="#FF9900"></asp:Label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Discount amount</label>
                <asp:Label ID="lblDiscountAmount" CssClass="col-sm-3 bold" runat="server">$100</asp:Label>
            </div>
            
            <div class="form-group">
                <label class="col-sm-3 control-label">Total price</label>
                <asp:Label ID="lblTotal" CssClass="col-sm-3 bold" runat="server">$400</asp:Label>
            </div>
            
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-3">
                    <asp:Button ID="btnCalculate" CssClass="btn btn-primary" OnClick="btnCalculate_Click" runat="server" Text="Calculate"/>
                    <asp:Button ID="btnConfirm" CssClass="btn btn-primary" OnClick="btnConfirm_Click" runat="server" Text="Confirm"/>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-11">
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-info"
                        Text="Enter price and discount amount and click Calculate."></asp:Label>
                </div>
            </div>
        </main>
    </form>
</body>
</html>

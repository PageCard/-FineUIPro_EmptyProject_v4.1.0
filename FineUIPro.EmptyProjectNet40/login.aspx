<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs"
    Inherits="FineUIPro.EmptyProjectNet40.login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .imgcaptcha .f-field-label {
            margin: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        用户名：admin
        <br />
        密码：admin
        <br />
        <br />
        <f:Window ID="Window1" runat="server" Title="登录表单" IsModal="false" EnableClose="false"
            WindowPosition="GoldenSection" Width="350px">
            <Items>
                <f:SimpleForm ID="SimpleForm1" runat="server" ShowBorder="false" BodyPadding="10px"
                    LabelWidth="60px" ShowHeader="false">
                    <Items>
                        <f:TextBox ID="tbxUserName" Label="用户名" Required="true" runat="server">
                        </f:TextBox>
                        <f:TextBox ID="tbxPassword" Label="密码" TextMode="Password" Required="true" runat="server">
                        </f:TextBox>
                        <f:Panel ID="Panel1" ShowBorder="false" ShowHeader="false" Layout="HBox" BoxConfigAlign="Stretch" runat="server">
                            <Items>
                                <f:TextBox ID="tbxCaptcha" BoxFlex="1" Margin="0 5px 0 0" Label="验证码" Required="true" runat="server">
                                </f:TextBox>
                                <f:LinkButton ID="imgCaptcha" CssClass="imgcaptcha" Width="100px" EncodeText="false" runat="server" OnClick="imgCaptcha_Click">
                                </f:LinkButton>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:SimpleForm>
            </Items>
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Bottom" ToolbarAlign="Right">
                    <Items>
                        <f:Button ID="btnLogin" Text="登录" Type="Submit" ValidateForms="SimpleForm1" ValidateTarget="Top"
                            runat="server" OnClick="btnLogin_Click">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:Window>
    </form>
</body>
</html>

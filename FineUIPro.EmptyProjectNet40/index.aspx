<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FineUIPro.EmptyProjectNet40.index" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FineUIPro 空项目</title>
    <link href="~/res/css/index.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" EnableAnimation="false" ></f:PageManager>
        <f:Panel ID="Panel1" Layout="Region" CssClass="mainpanel" ShowBorder="false" ShowHeader="false" runat="server">
            <Items>
                <f:ContentPanel ID="topPanel" CssClass="topregion bgpanel" RegionPosition="Top" ShowBorder="false" ShowHeader="false" EnableCollapse="true" runat="server">
                    <div id="header" class="f-widget-header f-mainheader">
                        <table>
                            <tr>
                                <td>
                                    <f:Button runat="server" CssClass="icononlyaction" ID="btnHomePage" ToolTip="官网示例" IconAlign="Top" IconFont="_Home"
                                        EnablePostBack="false" EnableDefaultState="false" EnableDefaultCorner="false"
                                        OnClientClick="window.open('http://fineui.com/pro/','_blank');">
                                    </f:Button>
                                    <a class="logo" href="./index.aspx" title="FineUI首页">FineUIPro 空项目
                                    </a>
                                </td>
                                <td style="text-align: right;">
                                    <f:Button runat="server" CssClass="icontopaction themes" ID="btnThemeSelect" Text="主题仓库" IconAlign="Top" IconFont="_Skin"
                                        EnablePostBack="false" EnableDefaultState="false" EnableDefaultCorner="false">
                                        <Listeners>
                                            <f:Listener Event="click" Handler="onThemeSelectClick" />
                                        </Listeners>
                                    </f:Button>
                                    <f:Button runat="server" CssClass="userpicaction" Text="三生石上" IconUrl="~/res/images/my_face_80.jpg" IconAlign="Left"
                                        EnablePostBack="false" EnableDefaultState="false" EnableDefaultCorner="false">
                                        <Menu runat="server">
                                            <f:MenuButton Text="个人信息" IconFont="_User" EnablePostBack="false" runat="server">
                                                <Listeners>
                                                    <f:Listener Event="click" Handler="onUserProfileClick" />
                                                </Listeners>
                                            </f:MenuButton>
                                            <f:MenuSeparator runat="server"></f:MenuSeparator>
                                            <f:MenuButton Text="安全退出" IconFont="_SignOut" EnablePostBack="false" runat="server">
                                                <Listeners>
                                                    <f:Listener Event="click" Handler="onSignOutClick" />
                                                </Listeners>
                                            </f:MenuButton>
                                        </Menu>
                                    </f:Button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </f:ContentPanel>
                <f:Panel ID="leftPanel" CssClass="leftregion bgpanel" Width="220px" ShowHeader="false" Title="菜单"
                    EnableCollapse="true" Layout="Fit" RegionPosition="Left"
                    RegionSplit="true" RegionSplitWidth="3" RegionSplitIcon="false" runat="server">
                    <Items>
                        <f:Tree runat="server" ShowBorder="false" ShowHeader="false" ID="treeMenu" EnableSingleClickExpand="true"
                            HeaderStyle="true" HideHScrollbar="true" HideVScrollbar="true" ExpanderToRight="true">
                            <Nodes>
                                <f:TreeNode Text="默认分类" Expanded="true">
                                    <f:TreeNode Text="开始页面" NavigateUrl="~/hello.aspx"></f:TreeNode>
                                    <f:TreeNode Text="登录页面" NavigateUrl="~/login.aspx"></f:TreeNode>
                                    <f:TreeNode Text="动力厂" NavigateUrl="/fire.aspx"></f:TreeNode>
                                </f:TreeNode>
                            </Nodes>
                        </f:Tree>
                    </Items>
                </f:Panel>
                <f:Panel ID="mainPanel" CssClass="centerregion" ShowHeader="false" Layout="Fit" RegionPosition="Center" runat="server">
                    <Items>
                        <f:TabStrip ID="mainTabStrip" EnableTabCloseMenu="true" ShowBorder="false" runat="server">
                            <Tabs>
                                <f:Tab ID="Tab1" Title="首页" BodyPadding="10px" AutoScroll="true" Icon="House" runat="server">
                                    <Content>
                                        <h2>FineUIPro</h2>
                                        基于 jQuery 的专业 ASP.NET 控件库
                                        
                                        <br />
                                        <h2>FineUI的使命</h2>
                                        创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序
                                        
                                        <br />
                                        <h2>支持的浏览器</h2>
                                        Chrome、Firefox、Safari、Edge、IE 8.0+ 
                                        
                                        <br />
                                        <h2>授权协议</h2>
                                        商业授权
                                            
                                        <br />
                                        <h2>相关链接</h2>
                                        <ul class="list">
                                            <li>首页：<a target="_blank" href="http://fineui.com/pro/">http://fineui.com/pro/</a>
                                            </li>
                                            <li>示例：<a target="_blank" href="http://pro.fineui.com/">http://pro.fineui.com/</a>
                                            </li>
                                            <li>更新：<a target="_blank" href="http://fineui.com/version_pro/">http://fineui.com/version_pro/</a>
                                            </li>
                                            <li>论坛：<a target="_blank" href="http://fineui.com/bbs/">http://fineui.com/bbs/</a>
                                            </li>
                                        </ul>
                                        <br />
                                        <br />
                                        <div class="f-widget-content" style="border-top-style: solid; border-top-width: 1px;">
                                        </div>
                                        <h2>AppBoxPro</h2>
                                        基于 FineUIPro 的通用权限管理框架，包括用户管理、职称管理、部门管理、角色管理、角色权限管理等模块。
                                        <br />
                                        <br />
                                        在线演示：<a target="_blank" href="http://fineui.com/appboxpro/">http://fineui.com/appboxpro/</a>
                                        <br />


                                    </Content>
                                </f:Tab>
                            </Tabs>
                        </f:TabStrip>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>

        <f:Window ID="windowThemeRoller" Title="主题仓库" Hidden="true" EnableIFrame="true" IFrameUrl="./common/themes.aspx" ClearIFrameAfterClose="false"
            runat="server" IsModal="true" Width="1020px" Height="600px" EnableClose="true"
            EnableMaximize="true" EnableResize="true">
        </f:Window>
    </form>
    <script>
        var treeMenuClientID = '<%= treeMenu.ClientID %>';
        var mainTabStripClientID = '<%= mainTabStrip.ClientID %>';
        var windowThemeRollerClientID = '<%= windowThemeRoller.ClientID %>';

        // 点击主题仓库
        function onThemeSelectClick(event) {
            F(windowThemeRollerClientID).show();
        }

        function onUserProfileClick(event) {
            F.alert('尚未实现');
        }

        function onSignOutClick(event) {
            F.alert('尚未实现');
        }


        // 页面控件初始化完毕后执行
        F.ready(function () {
            var treeMenu = F(treeMenuClientID);
            var mainTabStrip = F(mainTabStripClientID);
            if (!treeMenu) return;

            // 初始化主框架中的树(或者Accordion+Tree)和选项卡互动，以及地址栏的更新
            // treeMenu： 主框架中的树控件实例，或者内嵌树控件的手风琴控件实例
            // mainTabStrip： 选项卡实例
            // updateHash: 切换Tab时，是否更新地址栏Hash值（默认值：true）
            // refreshWhenExist： 添加选项卡时，如果选项卡已经存在，是否刷新内部IFrame（默认值：false）
            // refreshWhenTabChange: 切换选项卡时，是否刷新内部IFrame（默认值：false）
            // maxTabCount: 最大允许打开的选项卡数量
            // maxTabMessage: 超过最大允许打开选项卡数量时的提示信息
            F.initTreeTabStrip(treeMenu, mainTabStrip, {
                maxTabCount: 10,
                maxTabMessage: '请先关闭一些选项卡（最多允许打开 10 个）！'
            });

        });
    </script>
</body>
</html>

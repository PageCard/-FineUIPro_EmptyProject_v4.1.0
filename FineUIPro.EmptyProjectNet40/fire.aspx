<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fire.aspx.cs" Inherits="FineUIPro.EmptyProjectNet40.fire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" AutoSizePanelID="Panel5" EnableAnimation="false" runat="server" />
         <f:Window ID="MainPanel" runat="server" BodyPadding="5px" Width="1400" Height="700"
            ShowBorder="true" Layout="VBox" ShowHeader="true" Title="流程审批" EnableClose="false"
            EnableMaximize="true" EnableCollapse="true" AutoScroll="true">
            <Toolbars>
                 <f:Toolbar ID="Toolbar3" Position="Top" runat="server">
                    <Items>
                     
                        <f:ToolbarText Text="编号：15424125351" ID="ToolbarText4" runat="server">
                        </f:ToolbarText>
                        <f:ToolbarSeparator ID="ToolbarSeparator3" runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="Button1" runat="server" EnablePostBack="false" Text="打印">
                        </f:Button>
                    </Items>
                </f:Toolbar>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Bottom">
                    <Items>
                        <f:ToolbarFill runat="server"></f:ToolbarFill>
                        <f:Button ID="btnSaveClose" ValidateForms="FormApply" IconFont="Save" runat="server" Text="保存后关闭">
                        </f:Button>
                        <f:ToolbarSeparator runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="btnSavePost" ValidateForms="FormApply" IconFont="Check" runat="server" Text="保存后提交">
                        </f:Button>
                        <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="btn_Close" IconFont="Close" EnablePostBack="false" runat="server" Text="关闭">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
        <f:Panel ID="dd" runat="server" >
            <Content>
                 <table style="width: 1200px;height:800px;margin:10px auto; border-color:#dddddd" border="1" cellspacing="0">
                    <tr>
                        <td colspan="15"><center>动力厂动火安全作业票</center></td>
                    </tr>
                    <tr>
                        <td colspan="15">票号:</td>
                    </tr>
                    <tr>
                        <td colspan="2">作业单位：</td>
                        <td colspan="3"><f:TextBox runat="server" ID="comtent"></f:TextBox></td>
                        <td>属地单位</td>
                        <td colspan="2"><f:TextBox runat="server" ID="TextBox1"></f:TextBox></td>
                        <td rowspan="4">监护</td>
                        <td colspan="6" rowspan="4">本人述职</td>
                    </tr>
                    <tr>
                        <td colspan="2">作业区域</td>
                        <td colspan="3"></td>
                        <td>作业地点</td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2">动力等级</td>
                        <td colspan="6"><span>特殊</span></td>
                    </tr>
                    <tr>
                        <td colspan="8">计划时间：自己2017年xxxxx至xxxxxx</td>
                    </tr>
                    <tr>
                        <td colspan="8">作业内容描述：</td>
                        <td rowspan="4">会签</td>
                        <td colspan="6" rowspan="4">我保证xxx</td>
                    </tr>
                    <tr>
                        <td colspan="6">是否附安全工作方案： 是   否   </td>
                        <td colspan="2">其他附件（危害识别等）：</td>
                    </tr>
                    <tr>
                        <td colspan="6">是否附带安全工作方案: 是  否 </td>
                        <td colspan="2">图纸说明：</td>
                    </tr>
                    <tr>
                        <td colspan="8">动力类型:</td>
                    </tr>
                    <tr>
                        <td colspan="8">产生危害</td>
                        <td rowspan="4">相关方</td>
                        <td colspan="6" rowspan="4">本人确认收到作业票</td>
                    </tr>
                    <tr>
                        <td colspan="3">作业风险削弱措施</td>
                        <td>确认</td>
                        <td colspan="3">工艺风险削减措施</td>
                        <td>确认</td>
                    </tr>
                    <tr>
                        <td colspan="3">1.在动火点处设置隔离设施</td>
                        <td></td>
                        <td colspan="3">1.动火处与管线连接处用盲板隔断   处</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3">2.动火点搭设临时作业平台</td>
                        <td></td>
                        <td colspan="3">2.管道容器内可燃介质用蒸汽、氮气或水处理干净</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3">3.清除动火点上方坠落物或转移动火地点</td>
                        <td></td>
                        <td colspan="3">3.清除动火点周围的可燃介质和可燃物</td>
                        <td></td>
                        <td rowspan="4">审批</td>
                        <td colspan="6" rowspan="4">我已经审核过本作业票，符合《动力厂动火作业安全管理实施细则》的相关要求，因此，我同意动火。</td>
                    </tr>
                    <tr>
                        <td colspan="3">4.动火现场发生意外泄漏，立即停止动火，消除火源，人员撤离现场，并及时向上级进行汇报</td>
                        <td></td>
                        <td colspan="3">4.作业时50米内不准有放空或脱水操作 
                            </br>5.动火现场配备消防蒸汽带   根
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3">5.人员作业穿戴合适防护用品</td>
                        <td></td>
                        <td colspan="3">6.必须分析检验合格，方可同意动火</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3">6.施工机具符合要求</td>
                        <td></td>
                        <td colspan="3">7.动火点半径15米内污水井、地漏封死盖严</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3">7.人员培训合格
                            </br>
                            8.特种作业人员持有效作业证
                        </td>
                        <td></td>
                        <td colspan="3">8.动火现场配备      公斤      灭火器     台，配备轮载干粉灭火机    台</td>
                        <td></td>
                        <td colspan="7">气体检测</td>
                    </tr>
                    <tr>
                        <td colspan="3">9.补充安全措施：</td>
                        <td></td>
                        <td colspan="3">9.附近的固定消防设施齐全完好</br>10.动火时需要消防车监护</br>11.补充安全措施：</td>
                        <td></td>
                        <td>检测时间</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="4" rowspan="3">动火作业单位确认：</td>
                        <td colspan="3" rowspan="3">作业区技术人员确认：  </td>
                        <td rowspan="3"></td>
                        <td>氧气浓度</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                       
                        <td>有毒气体浓度</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                     
                        <td>采样分析人签字</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                   
                    <tr>
                        <td rowspan="2">注</td>
                        <td colspan="7" rowspan="2">风险削减措施栏在需实施项后确认栏划“√”，在不需实施项后确认栏划“×”。对暂时不涉及但在作业过程中可能会发生的项目也必须进行确认；作业风险削减措施由作业负责人确认并签字，工艺风险削减措施由属地技术人员进行确认并签字。</td>
                        <td colspan="7">实际动火时间：     年     月     日     时    分起         年     月     日     时    分止</td>
                    </tr>
                    <tr>
                      <td rowspan="3">关闭</td>
                        <td rowspan="3">□作业结束，现场已清理完毕，确认无遗留火种。

作业负责人：

      年    月    日

           时     分</td>
                        <td colspan="4" rowspan="3">□已确认现场清理完毕，现场无遗留火种。

属地监护人：

      年    月    日

           时     分</td>
                        <td colspan="4" rowspan="3">□作业票到期，同意关闭。
□工作完成，经再次确认现场没有遗留任何隐患，并已恢复到正常状态，同意作业票关闭，该项动火作业正式结束。

属地监护人：

       年    月    日    时   分</td>
                       
                    </tr>
                    <tr>
                            <td rowspan="2">作 业
申
请</td>
                            <td colspan="7" rowspan="2">我保证阅读理解并遵照执行动火安全工作方案，并在动火过程中负责落实各项风险削减措施，在动火工作结束时通知属地单位监护人员。

    作业人：                                 年   月   日    时   分

    作业负责人：                             年   月   日    时   分</td>
                         
                        </tr>
                  
                   
                </table>
            </Content>
        </f:Panel>
                  </Items>
        </f:Window>
        <f:SimpleForm ID="SimpleForm1" Width="700px" runat="server" LabelWidth="160px" EnableCollapse="true"
            BodyPadding="5px" ShowBorder="True" ShowHeader="True" MessageTarget="Qtip"
            Title="简单表单">
            <Items>
                <f:SimpleForm runat="server" ID="SimpleForm3" ShowBorder="false"  CssStyle="border:1px solid #DDDDDD" ShowHeader="false" EnableTableStyle="false">
                    <Items>
                        <f:CheckBoxList ID="CheckBoxList1" Label="列表一" runat="server">
                            <f:CheckItem Text="可选项 1" Value="value1" />
                            <f:CheckItem Text="可选项 2" Value="value2" Selected="true" />
                            <f:CheckItem Text="可选项 3" Value="value3" Selected="true" />
                        </f:CheckBoxList>
                    </Items>
                </f:SimpleForm>
                <f:Panel runat="server" ShowBorder="false" ShowHeader="false" MarginTop="5px" MarginBottom="5px">
                    <Items>
                        <f:Button ID="btnServerSetSelectedValue" CssClass="marginr" Text="选中上面列表中的第一项和第三项" 
                            runat="server">
                        </f:Button>
                        <f:Button ID="btnServerGetSelectedValue" CssClass="marginr" Text="获取上面列表的选中项" 
                            runat="server">
                        </f:Button>
                        <f:Button ID="btnClientGetSelectedValue" Text="获取上面列表的选中项（JavaScript 脚本）" EnablePostBack="false"
                            OnClientClick="alertSelectedValue();" runat="server">
                        </f:Button>
                    </Items>
                </f:Panel>

                <f:SimpleForm runat="server" ID="SimpleForm2" ShowBorder="false" CssStyle="border:1px solid #DDDDDD" ShowHeader="false" EnableTableStyle="false">
                    <Items>
                        <f:CheckBoxList ID="CheckBoxList2" Label="列表二（一列）" ColumnNumber="1"  CssStyle="border-bottom:1px solid #DDDDDD" runat="server">
                        </f:CheckBoxList>
                        <f:CheckBoxList ID="RadioButtonList3" Label="列表二（三列）" ColumnNumber="3" runat="server"  CssStyle="border-right:1px solid #DDDDDD">
                            <f:CheckItem Text="可选项 1" Value="value1" />
                            <f:CheckItem Text="可选项 2" Value="value2" />
                        </f:CheckBoxList>
                        <f:CheckBoxList ID="rblAutoPostBack" AutoPostBack="true" 
                            Label="列表三（自动回发）" ColumnNumber="3" runat="server" ShowRedStar="true" Required="true">
                            <f:CheckItem Text="可选项 1（很长很长很长很长很长很长的可选项）" Value="value1" />
                            <f:CheckItem Text="可选项 2" Value="value2" />
                            <f:CheckItem Text="可选项 3" Value="value3" />
                            <f:CheckItem Text="可选项 4" Value="value4" />
                            <f:CheckItem Text="可选项 5" Value="value5" />
                            <f:CheckItem Text="可选项 6" Value="value6" />
                            <f:CheckItem Text="可选项 7" Value="value7" />
                            <f:CheckItem Text="可选项 8" Value="value8" />
                        </f:CheckBoxList>
                        <f:CheckBoxList ID="rblVertical" Label="列表四（竖排）" ColumnNumber="3" ColumnVertical="true"
                            runat="server" ShowRedStar="true" Required="true"  CssStyle="border:1px solid #DDDDDD">
                            <f:CheckItem Text="可选项 1" Value="value1" />
                            <f:CheckItem Text="可选项 2" Value="value2" />
                            <f:CheckItem Text="可选项 3" Value="value3" />
                            <f:CheckItem Text="可选项 4" Value="value4" />
                            <f:CheckItem Text="可选项 5" Value="value5" />
                            <f:CheckItem Text="可选项 6" Value="value6" />
                            <f:CheckItem Text="可选项 7" Value="value7" />
                            <f:CheckItem Text="可选项 8" Value="value8" />
                        </f:CheckBoxList>
                    </Items>
                </f:SimpleForm>
            </Items>
            <Toolbars>
                <f:Toolbar Position="Bottom" ToolbarAlign="Right" runat="server">
                    <Items>
                        <f:Button runat="server" ID="btnSubmit" ValidateForms="SimpleForm1" Text="提交表单"
                           >
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:SimpleForm>

    </form>
</body>
</html>

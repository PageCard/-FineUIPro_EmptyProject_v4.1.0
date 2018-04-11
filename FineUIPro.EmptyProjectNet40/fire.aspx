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
         <f:Window ID="MainPanel" runat="server" BodyPadding="5px" Width="1400" Height="800"
            ShowBorder="true" Layout="VBox" ShowHeader="true" Title="流程审批" EnableClose="false"
            EnableMaximize="true" EnableCollapse="true" AutoScroll="true">
            <Toolbars>
                 <f:Toolbar ID="Toolbar3" Position="Top" runat="server">
                    <Items>
                     
                        <f:ToolbarText Text="编号：15424125351" ID="ToolbarText4" runat="server">
                        </f:ToolbarText>
                        <f:ToolbarSeparator ID="ToolbarSeparator3" runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="Button1" runat="server" EnablePostBack="false" OnClientClick="doPrint()" Text="打印">
                        </f:Button>
                    </Items>
                </f:Toolbar>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Bottom">
                    <Items>
                        <f:ToolbarFill runat="server"></f:ToolbarFill>
                        <f:Button ID="btnSaveClose" ValidateForms="FormApply" IconFont="Save" runat="server" OnClick="btnSaveClose_Click" Text="导出Excel">
                        </f:Button>
                        <f:ToolbarSeparator runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="btnSavePost"  ValidateForms="dd" OnClick="btnSavePost_Click" IconFont="Check" runat="server" Text="保存后提交">
                        </f:Button>
                        <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="btn_Close" IconFont="Close" EnablePostBack="false" runat="server" Text="关闭">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>

        <f:Panel ID="dd" runat="server">
            <Content runat="server">
                <!--startprint-->
                 <table style="width: 1200px;height:800px;margin:10px auto; border-color:#dddddd" border="1" cellspacing="0" runat="server" id="tb1" name="tb1">
                    <tr>
                        <td colspan="15"><center>动力厂动火安全作业票</center></td>
                    </tr>
                    <tr>
                        <td colspan="15">票号:</td>
                    </tr>
                    <tr>
                        <td colspan="2">作业单位：</td>
                        <td colspan="3"><f:TextBox runat="server" ID="zuoyedanwei" EmptyText="填写作业单位" Required="true" ShowRedStar="true"></f:TextBox></td>
                        <td>属地单位</td>
                        <td colspan="2"><f:TextBox runat="server" ID="shudidanwei" EmptyText="填写属地单位" Required="true" ShowRedStar="true"></f:TextBox></td>
                        <td rowspan="4">监护</td>
                        <td colspan="6" rowspan="4">  本人熟知作业内容，确定风险削减措施全部得到落实，并承诺坚守现场。

    作业单位监护人：                              年   月   日    时   分

    属地单位监护人：                              年   月   日    时   分</td>
                    </tr>
                    <tr>
                        <td colspan="2">作业区域</td>
                        <td colspan="3"><f:TextBox runat="server" ID="zuoyequyu"  EmptyText="请填写作业区域" Required="true" ShowRedStar="true"></f:TextBox></td>
                        <td>作业地点</td>
                        <td colspan="2"><f:TextBox runat="server" ID="adress"  EmptyText="请填写作业地点" Required="true" ShowRedStar="true"></f:TextBox></td>
                    </tr>
                   
                    <tr>
                        <td colspan="2">动力等级</td>
                        <td colspan="6"> 
                          <f:RadioButtonList ID="RadioButtonList3" ShowRedStar="true" Required="true"  ColumnNumber="2" runat="server">
                    <f:RadioItem Text="特殊" Value="特殊" />
                    <f:RadioItem Text="一级" Value="一级" />
                </f:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="8">
                               <f:TriggerBox ID="start" Label="计划时间 " Required="true" ShowRedStar="True"  EmptyText="请选择开始时间" TriggerIcon="Date" 
                    runat="server">
                </f:TriggerBox> 至
              
 <f:TriggerBox ID="end" Required="true" ShowRedStar="True"   CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期" EmptyText="请选择结束时间" CompareControl="start" TriggerIcon="Date" 
                    runat="server"></f:TriggerBox>
                          
              </td>
                    </tr>
                    <tr>
                        <td colspan="8"><f:TextArea ID="neirong" runat="server" Label="作业内容描述"  Width="600"></f:TextArea></td>
                        <td rowspan="4">会签</td>
                        <td colspan="6" rowspan="4">我保证xxx</td>
                    </tr>
                    <tr>
                        <td colspan="6">  <f:RadioButtonList ID="anquan" Label="是否附安全工作方案" ShowRedStar="true" LabelWidth="150"   Required="true"  ColumnNumber="2" runat="server">
                    <f:RadioItem Text="是" Value="是" />
                    <f:RadioItem Text="否" Value="否" />
                </f:RadioButtonList>    </td>
                        <td colspan="2">其他附件（危害识别等）：</td>
                    </tr>
                    <tr>
                        <td colspan="6">  <f:RadioButtonList ID="tuzhi" Label="是否附带图纸:" LabelWidth="150" ShowRedStar="true" Required="true"  ColumnNumber="2" runat="server">
                    <f:RadioItem Text="是" Value="是" />
                    <f:RadioItem Text="否" Value="否" />
                </f:RadioButtonList> </td>
                        <td colspan="2"><f:TextArea ID="shuoming" EmptyText="图纸说明" LabelWidth="20"  Label="图纸说明:" runat="server"></f:TextArea></td>
                    </tr>
                    <tr>
                        <td colspan="8"> <f:CheckBoxList ID="CheckBoxList1" ColumnNumber="4"  runat="server" ShowRedStar="true" Required="true"  Label="动力类型:" >
                    <Items>
                        <f:CheckItem Text="焊接" Value="1" />
                        <f:CheckItem Text="气割" Value="2" />
                        <f:CheckItem Text="切削" Value="3" />
                        <f:CheckItem Text="燃烧" Value="4" />
                        <f:CheckItem Text="明火" Value="5" />
                        <f:CheckItem Text="研磨" Value="6" />
                        
                        <f:CheckItem Text="打磨" Value="7" />
                        <f:CheckItem Text="钻孔" Value="8" />
                        <f:CheckItem Text="破碎" Value="9" />
                        <f:CheckItem Text="锤击" Value="10" />
                        <f:CheckItem Text="临时用电" Value="11" />
                        <f:CheckItem Text="临时用防爆的电气设备" Value="12" />
                        <f:CheckItem Text="使用内燃发动机设备" Value="13" />
                        <f:CheckItem Text="其他" Value="14" Selected="true" />
                    </Items>
                   
                </f:CheckBoxList></td>
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
                        <td>
                            <f:RadioButtonList ID="RadioButtonList1" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList>
                        </td>
                        <td colspan="3">1.动火处与管线连接处用盲板隔断   处</td>
                        <td> <f:RadioButtonList ID="RadioButtonList2" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td colspan="3">2.动火点搭设临时作业平台</td>
                        <td> <f:RadioButtonList ID="RadioButtonList4" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td colspan="3">2.管道容器内可燃介质用蒸汽、氮气或水处理干净</td>
                        <td> <f:RadioButtonList ID="RadioButtonList5" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td colspan="3">3.清除动火点上方坠落物或转移动火地点</td>
                        <td> <f:RadioButtonList ID="RadioButtonList6" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td colspan="3">3.清除动火点周围的可燃介质和可燃物</td>
                        <td> <f:RadioButtonList ID="RadioButtonList7" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td rowspan="4">审批</td>
                        <td colspan="6" rowspan="4">我已经审核过本作业票，符合《动力厂动火作业安全管理实施细则》的相关要求，因此，我同意动火。</td>
                    </tr>
                    <tr>
                        <td colspan="3">4.动火现场发生意外泄漏，立即停止动火，消除火源，人员撤离现场，并及时向上级进行汇报</td>
                        <td> <f:RadioButtonList ID="RadioButtonList8" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td colspan="3">4.作业时50米内不准有放空或脱水操作 
                            </br>5.动火现场配备消防蒸汽带   根
                        </td>
                        <td> <f:RadioButtonList ID="RadioButtonList9" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td colspan="3">5.人员作业穿戴合适防护用品</td>
                        <td> <f:RadioButtonList ID="RadioButtonList10" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td colspan="3">6.必须分析检验合格，方可同意动火</td>
                        <td> <f:RadioButtonList ID="RadioButtonList11" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td colspan="3">6.施工机具符合要求</td>
                        <td> <f:RadioButtonList ID="RadioButtonList12" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td colspan="3">7.动火点半径15米内污水井、地漏封死盖严</td>
                        <td> <f:RadioButtonList ID="RadioButtonList13" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td colspan="3">7.人员培训合格
                            </br>
                            8.特种作业人员持有效作业证
                        </td>
                        <td> <f:RadioButtonList ID="RadioButtonList14" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td colspan="3">8.动火现场配备      公斤      灭火器     台，配备轮载干粉灭火机    台</td>
                        <td> <f:RadioButtonList ID="RadioButtonList15" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td colspan="7">气体检测</td>
                    </tr>
                    <tr>
                        <td colspan="3">9.补充安全措施：</td>
                        <td> <f:RadioButtonList ID="RadioButtonList16" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList></td>
                        <td colspan="3">9.附近的固定消防设施齐全完好</br>10.动火时需要消防车监护</br>11.补充安全措施：</td>
                        <td> <f:RadioButtonList ID="RadioButtonList17" runat="server" ColumnNumber="1" ColumnVertical="true">
                    <f:RadioItem Text="确认" Value="value1" />
                    <f:RadioItem Text="不需要" Value="value2" />           
                </f:RadioButtonList> </td>
                        <td>检测时间</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="4" rowspan="3"><f:TextBox runat="server" Label="动火作业单位确认" ID="qianzi1"></f:TextBox></td>
                        <td colspan="4" rowspan="4"><f:TextBox runat="server" Label="作业区技术人员确认" ID="qianzi2"></f:TextBox> </td>
                        
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
                  <!--endprint-->  
            </Content>
        </f:Panel>
              
                  </Items>
        </f:Window>
     

    </form>

     <script src="res/my97/WdatePicker.js"></script>
       <script type="text/javascript">
           <% TriggerBox time = dd.FindControl("start") as TriggerBox;%>
             <% TriggerBox timeend = dd.FindControl("end") as TriggerBox;%>
        var tbxMyBoxClientID = '<%= time.ClientID %>';
           var txt='<%=timeend.ClientID%>'
        F.ready(function () {

            var tbxMyBox = F(tbxMyBoxClientID);

            tbxMyBox.onTriggerClick = function () {
                WdatePicker({
                    el: tbxMyBoxClientID + '-inputEl',
                    dateFmt: 'yyyy-MM-dd HH:mm:ss',
                    onpicked: function () {
                        // 确认选择后，执行触发器输入框的客户端验证
                        tbxMyBox.validate();
                    }
                });
            };
            var endtime = F(txt);

            endtime.onTriggerClick = function () {
                WdatePicker({
                    el: txt + '-inputEl',
                    dateFmt: 'yyyy-MM-dd HH:mm:ss',
                    onpicked: function () {
                        // 确认选择后，执行触发器输入框的客户端验证
                        endtime.validate();
                    }
                });
            };



        });
        function doPrint() {
            bdhtml = window.document.body.innerHTML;
            sprnstr = "<!--startprint-->";
            eprnstr = "<!--endprint-->";
            prnhtml = bdhtml.substr(bdhtml.indexOf(sprnstr) + 17);
            prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));
            window.document.body.innerHTML = prnhtml;
            window.print();
            window.location.reload();
        }
    </script>
    
</body>
</html>

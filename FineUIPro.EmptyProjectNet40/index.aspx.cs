using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using Newtonsoft.Json;

namespace FineUIPro.EmptyProjectNet40
{
    public partial class index : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Constants.IS_BASE)
                {
                    DataTable tblDatas = new DataTable("Datas");
                   

                    tblDatas.Columns.Add("names",typeof(string));
                    tblDatas.Columns.Add("one", typeof(string));
                    tblDatas.Columns.Add("two", typeof(string));

                    tblDatas.Rows.Add("管理中心", "数据统计", "GroupGo");
                    tblDatas.Rows.Add("管理中心", "修改管理员密码", "ComputerConnect");
                    tblDatas.Rows.Add("管理中心", "系统设置", "ComputerOff");
                    tblDatas.Rows.Add("企业管理", "企业列表", "ChartPie");
                    tblDatas.Rows.Add("企业管理", "企业监控", "ColorSwatch");
                    tblDatas.Rows.Add("企业管理", "企业站内信", "Comments");
                    tblDatas.Rows.Add("用户管理", "用户列表", "ImageEdit");
                    tblDatas.Rows.Add("用户管理", "用户监控", "IpodCastDelete");
                    tblDatas.Rows.Add("用户管理", "用户站内信", "ImageLink");
                    tblDatas.Rows.Add("用户管理", "用户群体画像", "IpodNano");
                    tblDatas.Rows.Add("系统管理", "站点控制", "ChartBar");
                    tblDatas.Rows.Add("系统管理", "大数据分析", "ChartCurveAdd");
                    tblDatas.Rows.Add("系统管理", "决策分析", "ChartPieLightning");
                    tblDatas.Rows.Add("系统管理", "碎片整理", "ChartPieDelete");



                    var gay = tblDatas.AsEnumerable().GroupBy(item => item.Field<string>("names")).Select(item => new { name = item.Key, other = item });
                    List<sure> root = new List<sure>();
                   
                    TreeNode nodes = new TreeNode();
                    foreach (var hh in gay)
                    {
                        TreeNode nodel = new TreeNode();
                        sure usere = new sure();
                        usere.names = hh.name;
                        nodel.Text = hh.name;
                      
                        usere.tree = new List<user>();
                        foreach (var items in hh.other)
                        {
                            TreeNode node2 = new TreeNode();
                            node2.Text= items.Field<string>("one");
                          
                            user userl = new user();
                            userl.one = items.Field<string>("one");
                            userl.two= items.Field<string>("two");


                            node2.Icon = (Icon)Enum.Parse(typeof(Icon), items.Field<string>("two") );
                            usere.tree.Add(userl);
                            nodel.Nodes.Add(node2);
                            nodel.Expanded = true;
                        }
                        root.Add(usere);
                        treeMenu.Expanded = true;
                        treeMenu.Nodes.Add(nodel);
                       
                    }

                  string json=  JsonConvert.SerializeObject(root);

                  //  Alert.Show(json);


                    treeMenu.HideHScrollbar = false;
                    treeMenu.HideVScrollbar = false;
                    treeMenu.ExpanderToRight = false;
                    treeMenu.HeaderStyle = false;
                   
                  
                }
            }
        }
      public  class sure
        {
            public string names { get; set; }
            public List<user> tree { get; set; }
        }
     public   class user
        {
           
            public string one { get; set; }
            public string two { get; set; }
        }
       
    }
}
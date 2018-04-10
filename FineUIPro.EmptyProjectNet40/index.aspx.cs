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

                    tblDatas.Rows.Add( "张三", "网二", "c" );
                    tblDatas.Rows.Add("李四", "李二", "c" );
                    tblDatas.Rows.Add("李四", "张三", "c" );
                    tblDatas.Rows.Add(  "李四", "张三", "c" );
                    tblDatas.Rows.Add( "王二", "b", "c" );
                    tblDatas.Rows.Add(  "王麻子", "b", "c");


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
                            usere.tree.Add(userl);
                            nodel.Nodes.Add(node2);
                        }
                        root.Add(usere);
                        treeMenu.Nodes.Add(nodel);
                       
                    }

                  string json=  JsonConvert.SerializeObject(root);

                    Alert.Show(json);


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
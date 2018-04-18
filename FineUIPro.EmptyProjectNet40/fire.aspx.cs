using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUIPro.EmptyProjectNet40
{
    public partial class fire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //PageContext.RegisterStartupScript(Window2.GetShowReference(300, 300));

             
                


            }
             
        }

        protected void btnSavePost_Click(object sender, EventArgs e)
        {
            TextBox tbxUserName = dd.FindControl("zuoyedanwei") as TextBox;
            TextBox password = dd.FindControl("shudidanwei") as TextBox;
            TextBox quyu = dd.FindControl("shudidanwei") as TextBox;
            CheckBoxList list = dd.FindControl("CheckBoxList1") as CheckBoxList; 
            string bb = string.Join(",", list.SelectedValueArray);
            Alert.Show(bb,MessageBoxIcon.Warning);
            //string bbn = "value1,value2,value3,value4,value6";
            //list.SelectedValueArray = bbn.Split(',');
         

          
        }

        protected void btnSaveClose_Click(object sender, EventArgs e)
        {



           

          
          
           
        }

        /// <summary>
        /// 获取控件渲染后的HTML源代码
        /// </summary>
        /// <param name="ctrl"></param>
        /// <returns></returns>
        private string GetRenderedHtmlSource(Control ctrl)
        {
            if (ctrl != null)
            {
                using (StringWriter sw = new StringWriter())
                {
                    using (HtmlTextWriter htw = new HtmlTextWriter(sw))
                    {
                        ctrl.RenderControl(htw);

                        return sw.ToString();
                    }
                }
            }
            return String.Empty;

        }
        private void ResolveGridView(Control ctrl)
        {
            for (int i = 0; i < ctrl.Controls.Count; i++)
            {
                // 图片的完整URL
                if (ctrl.Controls[i].GetType() == typeof(FineUIPro.Image))
                {
                    FineUIPro.Image img = ctrl.Controls[i] as FineUIPro.Image;
                    img.ImageUrl = Request.Url.AbsoluteUri.Replace(Request.Url.AbsolutePath, Page.ResolveUrl(img.ImageUrl));
                }

                // 将CheckBox控件转化为静态文本
                if (ctrl.Controls[i].GetType() == typeof(FineUIPro.CheckBox))
                {
                    Literal lit = new Literal();
                    lit.Text = (ctrl.Controls[i] as FineUIPro.CheckBox).Checked ? "√" : "×";
                    ctrl.Controls.RemoveAt(i);
                    ctrl.Controls.AddAt(i, lit);
                }

                if (ctrl.Controls[i].HasControls())
                {
                    ResolveGridView(ctrl.Controls[i]);
                }

            }

        }
    }
}
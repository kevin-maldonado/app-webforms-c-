using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appwebform
{
    public partial class tables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetAlumnos();
            }

        }

        private void GetAlumnos()
        {
            var data = new DataClassesDataContext();
            gdvLista.DataSource = data.GetAlumnos();
            gdvLista.DataBind();


        }
        protected void gdvLista_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gdvLista_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdvLista.PageIndex = e.NewPageIndex;
            GetAlumnos();
            BindGrid();
        }

        //para filtrar por nombres
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            string client = Textfiltro.Text;

            DataClassesDataContext db = new DataClassesDataContext();

            gdvLista.DataSource = from Alumnos in db.Alumnos
                                  where Alumnos.Nombres == client
                                  orderby Alumnos.Nombres
                                  select Alumnos;
            gdvLista.DataBind();

            //reset page index to 0
            gdvLista.PageIndex = 0;


        }
        //metodo para filtrar datos por nombres
        private void BindGrid()
        {
            DataClassesDataContext db = new DataClassesDataContext();

            gdvLista.DataSource = from Alumnos in db.Alumnos
                                  orderby Alumnos.Nombres
                                  select Alumnos;
            gdvLista.DataBind();
        }


        


    }
}

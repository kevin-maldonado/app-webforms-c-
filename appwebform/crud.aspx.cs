using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appwebform
{
    public partial class crud : System.Web.UI.Page
    {
        DataClassesDataContext BaseDatos = new DataClassesDataContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnBorrar.Attributes.Add("OnClick", "return confirm('¿Desea eliminar el Cliente?');");
                Carga();
                //BindGrid();
            }

        }

        public const int PAGE_SIZE = 10;
        protected void LinqDataSource_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            // LINQ query

            var query = from alumnos in BaseDatos.Alumnos select alumnos;

            // Set the total count

            // so GridView knows how many pages to create

            e.Arguments.TotalRowCount = query.Count();

            // Get only the rows we need for the page requested

            query = query.Skip(GridDatos.PageIndex * PAGE_SIZE).Take(PAGE_SIZE);

            e.Result = query;
        }


        void Carga()
        {
            this.GridDatos.DataBind();
        }
        void Limpiar()
        {
            txtCodigo.Text = "";
            txtNombres.Text = "";
            txtApellidos.Text = "";
            txtTelefono.Text = "";
            txtEdad.Text = "";
            txtCodigo.Focus();
        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            try
            {
                int codigo = int.Parse(this.txtCodigo.Text);
                string nombres = this.txtNombres.Text;
                string apellidos = this.txtApellidos.Text;
                string telefono = this.txtTelefono.Text;
                int edad = int.Parse(this.txtEdad.Text);
                BaseDatos.sp_Insertar(codigo, nombres, apellidos, telefono, edad);
                Carga();
                Limpiar();
                lblMensaje.Text = "Cliente Guardado Correctamente";
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message.ToString();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                int codi = int.Parse(this.txtCodigo.Text);
                var xi = from x in BaseDatos.Alumnos
                         where x.Codigo == codi
                         select x;
                if (xi.Count() > 0)
                {
                    this.txtNombres.Text = xi.First().Nombres;
                    this.txtApellidos.Text = xi.First().Apellidos;
                    this.txtTelefono.Text = xi.First().Telefono;
                    this.txtEdad.Text = xi.First().Edad.ToString();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message.ToString();
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                int codi = int.Parse(this.txtCodigo.Text);
                string nomb = this.txtNombres.Text;
                string ape = this.txtApellidos.Text;
                string tele = this.txtTelefono.Text;
                int edad = int.Parse(this.txtEdad.Text);
                BaseDatos.sp_Actualizar(codi, nomb, ape, tele, edad);
                Carga();
                Limpiar();
                lblMensaje.Text = "Cliente Actualizado Correctamente";
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message.ToString();
            }
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            try
            {
                int codi = int.Parse(this.txtCodigo.Text);
                BaseDatos.sp_Eliminar(codi);
                Carga();
                Limpiar();
                lblMensaje.Text = "Eliminado Correctamente";
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message.ToString();
            }
        }

        protected void txtCodigo_TextChanged(object sender, EventArgs e)
        {

        }
        protected void GridDatos_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            try
            {
                GridDatos.PageIndex = e.NewPageIndex;
                this.GridDatos.DataBind();
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message.ToString();
            }
        }

        protected void GridDatos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        //para filtrar por nombres
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            //string client = Textfiltro.Text;

            //DataClassesDataContext db = new DataClassesDataContext();

            //GridDatos.DataSource = from Alumnos in db.Alumnos
            //                      where Alumnos.Nombres == client
            //                      orderby Alumnos.Nombres
            //                      select Alumnos;
            //GridDatos.DataBind();

            ////reset page index to 0
            //GridDatos.PageIndex = 0;


        }
        //metodo para filtrar datos por nombres
        //private void BindGrid()
        //{
        //    DataClassesDataContext db = new DataClassesDataContext();

        //    GridDatos.DataSource = from Alumnos in db.Alumnos
        //                          orderby Alumnos.Nombres
        //                          select Alumnos;
        //    GridDatos.DataBind();
        //}
    }
}

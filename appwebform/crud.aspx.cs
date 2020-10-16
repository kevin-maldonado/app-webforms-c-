﻿using System;
//using System.Collections.Generic;
using System.Linq;
//using System.Web;
//using System.Web.UI;
using System.Web.UI.WebControls;

namespace appwebform
{
    public partial class crud : System.Web.UI.Page
    {
        DataClassesDataContext BaseDatos = new DataClassesDataContext();
        public const int PAGE_SIZE = 5;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnBorrar.Attributes.Add("OnClick", "return confirm('¿Desea eliminar el Cliente?');");
                Carga();
            }

        }

        protected void LinqDataSource_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            var data = from alum in BaseDatos.Alumnos select alum;
            e.Arguments.TotalRowCount = data.Count();
            data = data.Skip(GridDatos.PageIndex * PAGE_SIZE).Take(PAGE_SIZE);
            e.Result = data;
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
    }
}



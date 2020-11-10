<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="crud.aspx.cs" Inherits="appwebform.crud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: -1px;
            height: 25px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.aspx">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">GMDigital</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="index.aspx">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Components</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.html">Buttons</a>
            <a class="collapse-item" href="cards.html">Cards</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>Utilities</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.html">Colors</a>
            <a class="collapse-item" href="utilities-border.html">Borders</a>
            <a class="collapse-item" href="utilities-animation.html">Animations</a>
            <a class="collapse-item" href="utilities-other.html">Other</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Addons
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item ">
        <a class="nav-link" href="tables.aspx">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- CRUD -->
      <li class="nav-item active">
        <a class="nav-link" href="crud.aspx">
          <i class="fas fa-fw fa-table"></i>
          <span>CRUD GMDigital</span></a>
      </li>
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <form class="form-inline">
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>
          </form>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter"></span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun · 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog · 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Kevin Maldonado</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">CRUD CON LINQ TO SQ</h1>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Ingrese Sus Datos Por Favor :</h6>
              <!--Ingreso de datos-->

                <form id="form2" runat="server">
                     <div class="form-row">
                         <div class="table">
                             <!--label and input-->
                             <div class="form-row">
                                     <div class="form-group col-md-6">
                                         <asp:Label ID="Label1" runat="server" class="col-sm-2 col-form-label" Text="Código:"></asp:Label>

                                         <asp:TextBox ID="txtCodigo" runat="server" class="form-control" placeholder="Codigo" ToolTip="Solo números enteros (int primary key)" type="codigo" Width="100px"></asp:TextBox>
                                     </div>
                            </div>
                             <div class="form-row">
                                     <div class="form-group col-md-6">
                                         <asp:Label ID="Label2" runat="server" class="col-sm-2 col-form-label" Text="Nombres:"></asp:Label>
                                         <asp:TextBox ID="txtNombres" runat="server" class="form-control" placeholder="Nombres" ToolTip="Ingresar Nombres (varchar)" type="nombres" ></asp:TextBox>

                                     </div>
                                    <div class="form-group col-md-6">
                                         <asp:Label ID="Label3" runat="server" class="col-sm-2 col-form-label" Text="Apellidos:"></asp:Label>
                                         <asp:TextBox ID="txtApellidos" runat="server" class="form-control" placeholder="Apellidos" ToolTip="Ingresar Apellidos (varchar)" type="apellido" ></asp:TextBox>
                            
                                    </div>
                             </div>
                             <div class="form-row">
                                 <div class="form-group col-md-6">
                                         <asp:Label ID="Label5" runat="server" class="col-sm-2 col-form-label" Text="Teléfono:"></asp:Label>
                                         <asp:TextBox ID="txtTelefono" runat="server" class="form-control" placeholder="Telefono" ToolTip="Ingresar teléfono (varchar)" type="telefono" ></asp:TextBox>
                                 </div>
                                <div class="form-group col-md-6">
                                         <asp:Label ID="Label6" runat="server" class="col-sm-2 col-form-label" Text="Edad:"></asp:Label>
                                         <asp:TextBox ID="txtEdad" runat="server" class="form-control" placeholder="Edad" ToolTip="Ingresar edad (int)" type="edad" ></asp:TextBox>
                                 </div>
  
                            </div>

                            <h6 class="m-0 font-weight-bold text-primary">seleccionar la accion por favor :</h6>
                             <!-- botones-->
                            
                            <div class="col-lg-6">
                                          <asp:Button ID="btnGrabar" runat="server" CssClass=" btn btn-success" OnClick="btnGrabar_Click" Text="Grabar" />
                                          <asp:Button ID="btnBuscar" runat="server" CssClass=" btn btn-secondary" OnClick="btnBuscar_Click" Text="Buscar" />
                                          <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-info" OnClick="btnActualizar_Click" Text="Actualizar" />
                                          <asp:Button ID="btnBorrar" runat="server" CssClass=" btn btn-danger" OnClick="btnBorrar_Click" Text="Borrar" />
                                </div>
                           
                             <!--Mensaje de alerta-->
                            <div class="alert alert-primary" role="alert">
                                     <asp:Label ID="lblMensaje" runat="server" style="font-weight: 600;" class="alert alert-success" role="alert"></asp:Label>
                            </div>

                            <!--PARTE DE LA TABLES-->

                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6"><div class="dataTables_length" id="example_length"><label>Mostrar <select name="example_length" aria-controls="example" class="custom-select custom-select-sm form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> registros</label>
                                                                    </div></div><div class="auto-style1">
                                          <%-- <%--filtracion de datos--%>    
                                        <div id="example_filter" class="dataTables_filter">
                                            <label>Buscar:
                                                <asp:TextBox ID="Textfiltro" runat="server" class="form-control" placeholder="Nombres" ></asp:TextBox></label>
                                            <asp:Button ID="btnfilter" runat="server" CssClass=" btn btn-secondary" OnClick="btnFiltrar_Click" Text="Buscar" />
                                        </div>

                                        </div>
                                    <div class="col-lg-12">
                                        <div class="table-responsive"> 
                                                <table id="example1" class="table table-striped table-bordered" style="width:100%">
                                    
                                                <!--parte del gridwieb-->
                                                     <tr>
                                             
                                                         <td >
                                                             <asp:GridView ID="GridDatos" runat="server" AllowPaging="True" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-striped table-bordered table-hover" DataSourceID="LinqDataSource" ForeColor="#7D8586" GridLines="None" Height="364px" OnPageIndexChanging="GridDatos_PageIndexChanging" OnSelectedIndexChanged="GridDatos_SelectedIndexChanged" PagerStyle-CssClass="pagination" PageSize="10" Width="100%">
                                                                 <AlternatingRowStyle BackColor="White" />
                                                                 <Columns>
                                                                     <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                                                                     <asp:BoundField DataField="nombres" HeaderText="Nombres" ReadOnly="True" SortExpression="Nombres" />
                                                                     <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ReadOnly="True" SortExpression="Apellidos" />
                                                                     <asp:BoundField DataField="Telefono" HeaderText="Telefono" ReadOnly="True" SortExpression="Telefono" />
                                                                     <asp:BoundField DataField="Edad" HeaderText="Edad" ReadOnly="True" SortExpression="Edad" />
                                                                 </Columns>
                                                                 <FooterStyle BackColor="#4e73df" Font-Bold="True" ForeColor="White" />
                                                                 <HeaderStyle BackColor="#4e73df" Font-Bold="True" ForeColor="White" />
                                                                 <PagerSettings FirstPageText="Primera" LastPageText="Ultima" NextPageText="Siguiente" PreviousPageText="Anterior" />
                                                                 <PagerStyle BackColor="#4e73df" ForeColor="White" HorizontalAlign="Center" CssClass="pagination-mg" />
                                                                 <RowStyle BackColor="#F3F6F7" ForeColor="#333333" />
                                                                 <SelectedRowStyle BackColor="#9DA1A2" Font-Bold="True" ForeColor="Navy" />
                                                                 <SortedAscendingCellStyle BackColor="#F3F6F7" />
                                                                 <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                                 <SortedDescendingCellStyle BackColor="#E8EBEC" />
                                                                 <SortedDescendingHeaderStyle BackColor="#820000" />
                                                                 
                                                             </asp:GridView>

                                                             <!--PARTE DEL PAGIADOR-->
                                                                 <asp:LinqDataSource ID="LinqDataSource" runat="server"  AutoPage="False" ContextTypeName="LINQ_DDM.DataClassesDataContext" EntityTypeName="" OnSelecting="LinqDataSource_Selecting" Select="new (Codigo, Nombres, Apellidos, Telefono, Edad)" TableName="Alumnos">
                                                                 </asp:LinqDataSource>
                                                             
                                                         </td>
                                                     </tr>                          
                                               </table>
                                        </div>
                                     </div>
                                </div>
                            </div>


                             <!--Ejemplo tabla con DataTables para implementar-->
                           <%-- <div class="container">
                                <div class="row">
                                        <div class="col-lg-12">
                                            <div class="table-responsive">        
                                                <table id="example" class="table table-striped table-bordered" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Nombre</th>
                                                        <th>Puesto</th>
                                                        <th>Ciudad</th>
                                                        <th>Edad</th>
                                                        <th>Año de Ingreso</th>
                                                        <th>Salario</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Tiger Nixon</td>
                                                        <td>Arquitecto</td>
                                                        <td>Edinburgh</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td>$320,800</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Garrett Winters</td>
                                                        <td>Contador</td>
                                                        <td>Tokyo</td>
                                                        <td>63</td>
                                                        <td>2011/07/25</td>
                                                        <td>$170,750</td>
                                                    </tr>                
                                                    <tr>
                                                        <td>Cedric Kelly</td>
                                                        <td>Senior Javascript Developer</td>
                                                        <td>Edinburgh</td>
                                                        <td>22</td>
                                                        <td>2012/03/29</td>
                                                        <td>$433,060</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Airi Satou</td>
                                                        <td>Contador</td>
                                                        <td>Tokyo</td>
                                                        <td>33</td>
                                                        <td>2008/11/28</td>
                                                        <td>$162,700</td>
                                                    </tr>               
                                                    <tr>
                                                        <td>Bradley Greer</td>
                                                        <td>Software Engineer</td>
                                                        <td>London</td>
                                                        <td>41</td>
                                                        <td>2012/10/13</td>
                                                        <td>$132,000</td>
                                                    </tr>

                                                    <tr>
                                                        <td>Bruno Nash</td>
                                                        <td>Software Engineer</td>
                                                        <td>London</td>
                                                        <td>38</td>
                                                        <td>2011/05/03</td>
                                                        <td>$163,500</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Sakura Yamamoto</td>
                                                        <td>Support Engineer</td>
                                                        <td>Tokyo</td>
                                                        <td>37</td>
                                                        <td>2009/08/19</td>
                                                        <td>$139,575</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Thor Walton</td>
                                                        <td>Developer</td>
                                                        <td>New York</td>
                                                        <td>61</td>
                                                        <td>2013/08/11</td>
                                                        <td>$98,540</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Finn Camacho</td>
                                                        <td>Support Engineer</td>
                                                        <td>San Francisco</td>
                                                        <td>47</td>
                                                        <td>2009/07/07</td>
                                                        <td>$87,500</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Serge Baldwin</td>
                                                        <td>Data Coordinator</td>
                                                        <td>Singapore</td>
                                                        <td>64</td>
                                                        <td>2012/04/09</td>
                                                        <td>$138,575</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Zenaida Frank</td>
                                                        <td>Software Engineer</td>
                                                        <td>New York</td>
                                                        <td>63</td>
                                                        <td>2010/01/04</td>
                                                        <td>$125,250</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Zorita Serrano</td>
                                                        <td>Software Engineer</td>
                                                        <td>San Francisco</td>
                                                        <td>56</td>
                                                        <td>2012/06/01</td>
                                                        <td>$115,000</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Jennifer Acosta</td>
                                                        <td>Junior Javascript Developer</td>
                                                        <td>Edinburgh</td>
                                                        <td>43</td>
                                                        <td>2013/02/01</td>
                                                        <td>$75,650</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Cara Stevens</td>
                                                        <td>Sales Assistant</td>
                                                        <td>New York</td>
                                                        <td>46</td>
                                                        <td>2011/12/06</td>
                                                        <td>$145,600</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Hermione Butler</td>
                                                        <td>Regional Director</td>
                                                        <td>London</td>
                                                        <td>47</td>
                                                        <td>2011/03/21</td>
                                                        <td>$356,250</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lael Greer</td>
                                                        <td>Systems Administrator</td>
                                                        <td>London</td>
                                                        <td>21</td>
                                                        <td>2009/02/27</td>
                                                        <td>$103,500</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Jonas Alexander</td>
                                                        <td>Developer</td>
                                                        <td>San Francisco</td>
                                                        <td>30</td>
                                                        <td>2010/07/14</td>
                                                        <td>$86,500</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Shad Decker</td>
                                                        <td>Regional Director</td>
                                                        <td>Edinburgh</td>
                                                        <td>51</td>
                                                        <td>2008/11/13</td>
                                                        <td>$183,000</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Michael Bruce</td>
                                                        <td>Javascript Developer</td>
                                                        <td>Singapore</td>
                                                        <td>29</td>
                                                        <td>2011/06/27</td>
                                                        <td>$183,000</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Donna Snider</td>
                                                        <td>Customer Support</td>
                                                        <td>New York</td>
                                                        <td>27</td>
                                                        <td>2011/01/25</td>
                                                        <td>$112,000</td>
                                                    </tr>
                                                </tbody>        
                                               </table>                  
                                            </div>
                                        </div>
        </div>  
                            </div> --%>  
                     </div>
                     </div>
                     
            </form>
            </div>
            <%--<!-- parte donde se obtienen los datos-->
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Codigo</th>
                      <th>Nombres</th>
                      <th>Apellidos</th>
                      <th>Telefono</th>
                      <th>Edad </th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Codigo</th>
                      <th>Nombres</th>
                      <th>Apellidos</th>
                      <th>Telefono</th>
                      <th>Edad </th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <tr>
                      <td>12345</td>
                      <td>Kevin Stalin</td>
                      <td>Maldonado Tixi</td>
                      <td>0995791924</td>
                      <td>24</td>
                    </tr>
                    <tr>
                      <td>12345</td>
                      <td>Kevin Stalin</td>
                      <td>Maldonado Tixi</td>
                      <td>0995791924</td>
                      <td>24</td>
                    </tr>
                    <tr>
                      <td>12345</td>
                      <td>Kevin Stalin</td>
                      <td>Maldonado Tixi</td>
                      <td>0995791924</td>
                      <td>24</td>
                    </tr>
                    <tr>
                      <td>12345</td>
                      <td>Kevin Stalin</td>
                      <td>Maldonado Tixi</td>
                      <td>0995791924</td>
                      <td>24</td>
                    </tr>
                    <tr>
                      <td>12345</td>
                      <td>Kevin Stalin</td>
                      <td>Maldonado Tixi</td>
                      <td>0995791924</td>
                      <td>24</td>
                    </tr>
                  
              
                   
                  
                  </tbody>
                </table>
              </div>
            </div>--%>
          </div>
        

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span> GMDigital &copy; 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->







<%--<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>CRUD KEVIN MALDONADO</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    
    <style type="text/css">
        .auto-style1 {
            width: 850px;
        }
        .auto-style4 {
            width: auto;
        }
        .auto-style3 {
            width: 30px;
        }
        .auto-style5 {
            margin-top: 9px;
        }
        .pgr{
            color:#333333;
            background-color:#9DA1A2;
        }
    </style>
</head>
<body>
                 <nav class="navbar navbar-inverse">
              <div class="container-fluid">
                  <form class="navbar-form navbar-left" action="/action_page.php">
                      <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search"/>
                  </div>
                  <button type="submit" class="btn btn-default">Submit</button>
                </form>
              </div>
            </nav>
    <form id="form2" runat="server">
        <div class="form-group col-md-6" style="left: 300px; top: 0px; height: 200px">
            <table  style="margin-right: 50px">
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CRUD LINQ TO SQL<br />
                    </td>
                </tr>

                <tr>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Código:" class="col-sm-2 col-form-label"></asp:Label>
                    </td>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" Width="100px" ToolTip="Solo números enteros (int primary key)" type="codigo" class="form-control"  placeholder="Codigo"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Nombres:" class="col-sm-2 col-form-label"></asp:Label>
                    </td>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px"  ToolTip="Ingresar Nombres (varchar)" type="nombres" class="form-control"  placeholder="Nombres"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="Apellidos:" class="col-sm-2 col-form-label" ></asp:Label>
                    </td>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px" ToolTip="Ingresar Apellidos (varchar)" type="apellido" class="form-control"  placeholder="Apellidos"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Teléfono:" class="col-sm-2 col-form-label"></asp:Label>
                    </td>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style1">
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px" ToolTip="Ingresar teléfono (varchar)" type="telefono" class="form-control"  placeholder="Telefono"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Edad:" class="col-sm-2 col-form-label"></asp:Label>
                    </td>
                    <td style="background-image: url('Imagenes/1.png')" class="auto-style1">
                        <asp:TextBox ID="TextBox5" runat="server" Width="100px" ToolTip="Ingresar edad (int)" type="edad" class="form-control"  placeholder="Edad"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        seleccion la accion por favor:<br />
                        <!-- botones-->
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" OnClick="btnGrabar_Click" Text="Grabar" CssClass=" btn btn-success"/>
                            <asp:Button ID="Button2" runat="server" OnClick="btnBuscar_Click" Text="Buscar" CssClass=" btn btn-secondary" />
                            <asp:Button ID="Button3" runat="server" OnClick="btnActualizar_Click" Text="Actualizar" CssClass="btn btn-info"/>
                            <asp:Button ID="Button4" runat="server" OnClick="btnBorrar_Click" Text="Borrar" CssClass=" btn btn-danger" />

                        </div>
                        
      
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center; background-image: url('Imagenes/1.png');">
                        <br />
                        

                        <asp:Label ID="Label11" runat="server" style="font-weight: 600;" class="alert alert-success" role="alert"></asp:Label>
                    </td>
                </tr>
                <!--parte del gridwieb-->
                <tr>

                    <td style="background-image: url('Imagenes/Soft.png');" class="auto-style4">&nbsp;</td>
                    <td style="background-image: url('Imagenes/Soft.png');" class="auto-style3">


                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="LinqDataSource" AutoGenerateColumns="False"
                             OnPageIndexChanging="GridDatos_PageIndexChanging" AllowPaging="True" ForeColor="#7D8586" GridLines="None" CssClass="auto-style5" PagerStyle-CssClass="pgr" Height="364px" Width="535px" OnSelectedIndexChanged="GridDatos_SelectedIndexChanged" AlternatingRowStyle-CssClass="alt" PageSize="4"  >
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                                <asp:BoundField DataField="nombres" HeaderText="Nombres" ReadOnly="True" SortExpression="Nombres" />
                                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ReadOnly="True" SortExpression="Apellidos" />
                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" ReadOnly="True" SortExpression="Telefono" />
                                <asp:BoundField DataField="Edad" HeaderText="Edad" ReadOnly="True" SortExpression="Edad" />
                            </Columns>
                            <FooterStyle BackColor="#FFCC66" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F3F6F7" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#9DA1A2" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#F3F6F7" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#E8EBEC" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:LinqDataSource AutoPage="False" ContextTypeName="LINQ_DDM.DataClassesDataContext"
                            EntityTypeName="" ID="LinqDataSource1" OnSelecting="LinqDataSource_Selecting"
                            runat="server" Select="new (Codigo, Nombres, Apellidos, Telefono, Edad)" TableName="Alumnos">
                        </asp:LinqDataSource>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>--%>





</asp:Content>

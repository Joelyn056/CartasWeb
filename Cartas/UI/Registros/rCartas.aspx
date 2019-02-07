<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rCartas.aspx.cs" Inherits="Cartas.UI.Registros.rCartas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">

        <div class="card-header text-center text-white bg-success">
            <h3>Registro de Cartas</h3>
        </div>

        <div class="card-body">
            <!--CartasId-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label1" CssClass="col-lg-2 col-form-label" Text="CartasId" runat="server">CartasId:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="CartasId" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-1">
                    <asp:LinkButton ID="BuscarLinkButton" CssClass="btn btn-secondary" runat="server" CausesValidation="False">
                        <span class="fas fa-search"></span>
                        Buscar
                    </asp:LinkButton>
                </div>
            </div>

            <!--Fecha-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label2" CssClass="col-lg-2 col-form-label" Text="Fecha" runat="server">Fecha:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="FechaTextBox" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-1">

                </div>
            </div>

           
            <!--DescripcionId-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label4" CssClass="col-lg-2 col-form-label" Text="DescripcioId" runat="server">DescripcioId:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                </div> 
            </div>


            <!--Cuerpo-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label3" CssClass="col-lg-2 col-form-label" Text="Cuerpo" runat="server">Cuerpo:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="CuerpoTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" ControlToValidate="CuerpoTextBox" runat="server" Display="Dynamic" Text="*" ErrorMessage="Indique un nombre de cuenta"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!--Card body end-->
            
        </div>
        <div class="card-footer">
            <!--Botones-->
            <div class="form-group row justify-content-center">
                <div class="col-lg-1 mr-1"">
                    <asp:LinkButton ID="NuevoLinkButton" CssClass="btn btn-success" runat="server" CausesValidation="False" OnClick="NuevoLinkButton_Click">
                        <span class="fas fa-plus"></span>
                        Nuevo
                    </asp:LinkButton>
                </div>
                <div class="col-lg-1 mr-3">
                    <asp:LinkButton ID="GuardarLinkButton" CssClass="btn btn-success" runat="server" OnClick="GuardarLinkButton_Click" >
                        <span class="fas fa-save"></span>
                        Guardar
                    </asp:LinkButton>
                </div>
                <div class="col-lg-1 mr-3">
                    <asp:LinkButton ID="EliminarLinkButton" CssClass="btn btn-success" runat="server" CausesValidation="False" OnClick="EliminarLinkButton_Click">
                        <span class="fa fa-trash-alt"></span>
                        Eliminar
                    </asp:LinkButton>
                </div>      
            </div>

            <!--Card footer end-->
        </div>
        
    </div>
     <asp:ValidationSummary ID="ValidationSummary" ShowMessageBox="true" ShowSummary="false" runat="server" />
</asp:Content>
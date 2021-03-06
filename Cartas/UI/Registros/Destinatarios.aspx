﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Destinatarios.aspx.cs" Inherits="Cartas.UI.Registros.Destinatarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">

        <div class="card-header text-center text-white bg-success">
            <h3>Registro de Destinatario</h3>
        </div>

        <div class="card-body">
            <!--DestinatarioId-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label1" CssClass="col-lg-2 col-form-label" Text="DestinatarioId" runat="server">DestinatarioId:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="DestinatarioId" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-1">
                    <asp:LinkButton ID="BuscarLinkButton" CssClass="btn btn-secondary" runat="server" CausesValidation="False">
                        <span class="fas fa-search"></span>
                        Buscar
                    </asp:LinkButton>
                </div>
            </div>            

            <!--Nombre-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label3" CssClass="col-lg-2 col-form-label" Text="Cuerpo" runat="server">Direccion:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="NombreTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" ControlToValidate="NombreTextBox" runat="server" Display="Dynamic" Text="*" ErrorMessage="Ingrese una direccion"></asp:RequiredFieldValidator>
                </div>
            </div>


             <!--Direccion-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label2" CssClass="col-lg-2 col-form-label" Text="Cuerpo" runat="server">Direccion:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="DireccionTextBox" runat="server" Display="Dynamic" Text="*" ErrorMessage="Ingrese una direccion"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!--Destinatario-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label4" CssClass="col-lg-2 col-form-label" Text="Cuerpo" runat="server">Destinatario:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="DestinatarioTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DestinatarioTextBox" runat="server" Display="Dynamic" Text="*" ErrorMessage="Ingrese una direccion"></asp:RequiredFieldValidator>
                </div>
            </div>


            <!--Total-->
            <div class="form-group row justify-content-center">
                <asp:Label ID="Label5" CssClass="col-lg-2 col-form-label" Text="Total" runat="server">Total:</asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TotalTextBox" CssClass="form-control" ReadOnly="true" TextMode="Number" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-1">
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

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="login.signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    
     <div class="page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
            <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                <div class="pr-lg-5">
                    <img src="Images/study.jpg" alt="" class="img-fluid" />

                </div>

            </div>
                    <br />
                    <br />
                    <div class="col-lg-5 px-lg-4">
                        <h1 class="text-base text-primary text-uppercase mb-4">Login here</h1>
                        <h3 class="text-uppercase mb-4">Welcome back</h3>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtUsername" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="email" runat="server"></asp:TextBox>
                            

                        </div>
                          <div class="form-group mb-4">
                            <asp:TextBox ID="txtPass" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server"></asp:TextBox>
                            

                        </div>

                         <div class="form-group mb-4">
                         <div class="custom-control custom-checkbox">
                             <asp:CheckBox ID="xbxrememberme" runat="server" Text="&nbspRemember Me" />
                         </div>    
                         </div>
                        <asp:Button ID="btnLogin" runat="server" Text="Log in" CssClass="btn btn-primary" Height="50px" Width="400px" />
                        <br />
                        <br />
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success" Height="50px" Width="400px" OnClick="btnRegister_Click" />
                    </div>

        </div>
        </div>
        </div>   
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="StudentFeedback.aspx.cs" Inherits="COMP3851B.Views.User.StudentFeedback.StudentFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
       <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
    <style>
        *{
            box-sizing:border-box;
            margin:0;
            padding: 0;
        }

        h2{
            position: relative;
            padding-bottom: 10px;
            margin-bottom: 10px;
        }
        h2:after{
            content:'';
            position: absolute;
            left: 50%;
            bottom: 0;
            transform: translateX(-50%);
            height: 4px;
            width: 50px;
            border-radius: 2px;
            background-color: #2ecc71;
        }
    </style>
    <link rel="stylesheet" href="../../../CSS/style.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />
    <div class="contactContainer">
        <div class="contactBox">
            <div class="left">
            </div>
            <div class="right">
                <h2>Give Us Your Feedback</h2>
                <asp:TextBox ID="txtName" CssClass="field" Placeholder="Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtstdID" CssClass="field" placeholder="student ID" runat="server"></asp:TextBox>

                <asp:TextBox ID="txtFeedback" CssClass="field area" runat="server" TextMode="MultiLine" placeholder="Message"></asp:TextBox>
                <!--<textarea class="field area" placeholder="Message" id="txtMessage"></textarea>-->
                <asp:Button ID="btnSend" CssClass="btn" runat="server" Text="Send" OnClick="btnSend_Click1"/>
                
               
              <!--<button class="btn" id="sendButton">Send</button>-->

            </div>
        </div>
    </div>
</asp:Content>

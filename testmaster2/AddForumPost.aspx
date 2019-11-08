﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddForumPost.aspx.cs" Inherits="testmaster2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"   >
    
     <style type='text/css'>
        
    </style>
    <link href="Content/forumStyles.css" rel="stylesheet" />
   <%-- <div  style="vertical-align:middle; text-align:center; width:800px; height:900px; background-image:url(Images/background.png) " >--%>
         <%--<div  class="divPageContent"    >--%>
        <asp:Panel ID="Panel1" runat="server" CssClass="plnOutline">
            <asp:Panel ID="Panel2" CssClass="plnInline" BorderStyle="Solid"  BorderColor="Black" BorderWidth="2px" runat="server">
                 <%-- Added login dropdown --%>
                 <div class="nav navbar-nav navbar-right">
              <table  style="width:200px;" >
                  <tr>
                      <td> <asp:Label ID="lbluserInfo" Font-Bold="true" Font-Size="Medium" ForeColor="#007bff" runat="server" Text="Label"></asp:Label></td>                                          
                  </tr>      
                  <tr>
                      <td><asp:DropDownList ID="ddlLogin" CssClass="ddllogin1" runat="server" Width="150px"  AutoPostBack="true" OnSelectedIndexChanged="ddlLogin_SelectedIndexChanged" BackColor="White" Font-Size="14px" ForeColor="Black"   >
                           <asp:ListItem Value="1">Change Password</asp:ListItem>

                  <asp:ListItem Value="2">Delete Account</asp:ListItem>

                  <asp:ListItem Value="3" >LogOut</asp:ListItem>
                    </asp:DropDownList> 
                          </td>
                  </tr>
              </table>                                                              
                </div>
                 <%-- Added login dropdown --%>
            <div id="divHeader" class="divHeader"> 
                <table>
                    <tr>
                  <%--      <td style="width:130px; height:auto">
                             <asp:Image  runat="server" CssClass="imageLogo"  ImageUrl="~/Images/DICTlogoNew.png"/>
                        </td>--%>
                        <td style= height:auto; ">
                           <asp:Label ID="lblPageTitle" runat="server" Text="Create New Post"  CssClass="pageTitle" ></asp:Label>                            
                        </td>
                    </tr>
                </table>
                </div>
                <asp:Table ID="tblAddPost" runat="server" CssClass="tableAddPost"  HorizontalAlign="Center" >
            

            
            <asp:TableRow Width="150" >
                <asp:TableCell > <asp:Label runat="server" ID="lblPostTitle" Text="Title" CssClass="textLables"></asp:Label></asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTitle" CssClass="txtControl" runat="server"></asp:TextBox> 
                    
                </asp:TableCell></asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:RequiredFieldValidator ID="rfvuser" runat="server"  Display="Dynamic" ErrorMessage="Please enter Post Topic" EnableClientScript="true"
                            ForeColor="Red" ControlToValidate="txtTitle" />
                        </asp:TableCell></asp:TableRow><asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" Text="Category" ID="lblCategory" CssClass="textLables" ></asp:Label></asp:TableCell><asp:TableCell>
                            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="txtControl" ValidationGroup="g1"  >
                                <asp:ListItem Value="1" Text="Programming"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Designing"></asp:ListItem>
                                <asp:ListItem Value="3" Text="Networking"></asp:ListItem>
                                <asp:ListItem Value="4" Text="Security"></asp:ListItem>
                                <asp:ListItem  Value="5" Text="Testing"></asp:ListItem>
                            </asp:DropDownList>                           
                           </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblDescription" runat="server" Text="Description" CssClass="textLables"></asp:Label>
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="textDescription" TextMode="MultiLine" CssClass="txtMultitxtControl" runat="server"></asp:TextBox>                    
                </asp:TableCell></asp:TableRow><asp:TableRow>
                        <asp:TableCell>
                        </asp:TableCell><asp:TableCell>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  Display="Dynamic" ErrorMessage="Please enter Description" EnableClientScript="true"
                            ForeColor="Red" ControlToValidate="textDescription" />
                        </asp:TableCell></asp:TableRow><asp:TableRow HorizontalAlign="Center">
                        <asp:TableCell>
                            <asp:Button ID="btnCreatePost" runat="server" Text="Create Post" CssClass="btnSubmitControls" OnClick="btnCreatePost_Click" /></asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" CssClass="btnCancelControls" OnClick="btnCancel_Click" /></asp:TableCell>
                    </asp:TableRow>
        </asp:Table>
                <asp:Label ID="lblSuccessMessage" runat="server" Text=""></asp:Label></asp:Panel></asp:Panel><%-- </div>--%></asp:Content>
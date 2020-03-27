﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="WebFormsDemo.StudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Web Forms Demo</h1>
    </div>
     <div class="row">
        <div class="col-md-12 alert alert-info">
            This demo will show basic web form construction, validation, data collection and display.
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-left">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                 HeaderText="Please correct the following issues with your current data entry" />

            <asp:RequiredFieldValidator ID="RequiredFieldStudentID" runat="server" 
                ErrorMessage="StudentID is a required field" 
                SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:RequiredFieldValidator>
            <%--<asp:RegularExpressionValidator ID="RegularExpressionSIN" runat="server" 
                ErrorMessage="SIN is invalid (ex. 777-888-999)"
                 SetFocusOnError="true" ControlToValidate="SIN" Display="None"
                 ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator>--%>
            <asp:CompareValidator ID="StudentIDGreaterThanZero" runat="server"
                 ErrorMessage="Student ID is a number greater than 0" Operator="GreaterThan" Type="Integer"
                 ValueToCompare="0"  SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:CompareValidator>

             <asp:RequiredFieldValidator ID="RequiredFieldName" runat="server" 
                ErrorMessage="Name is a required field" 
                SetFocusOnError="true" ControlToValidate="Name" Display="None"></asp:RequiredFieldValidator>

             <asp:RequiredFieldValidator ID="RequiredFieldCredits" runat="server" 
                ErrorMessage="Credits is a required field" 
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeCredits" runat="server" 
                ErrorMessage="Credits out of range (0.0 to 200.0)"
                 MinimumValue="0.0" MaximumValue="40.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RangeValidator>
            <%--<asp:CompareValidator ID="CompareAge" runat="server"
                 ErrorMessage="Age is a whole number greater than 0" Operator="GreaterThan" Type="Integer"
                 ValueToCompare="0"  SetFocusOnError="true" ControlToValidate="Age" Display="None"></asp:CompareValidator>--%>

             <%--<asp:RequiredFieldValidator ID="RequiredFieldWage" runat="server" 
                ErrorMessage="Wage is a required field" 
                SetFocusOnError="true" ControlToValidate="Wage" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeWage" runat="server" 
                ErrorMessage="Wage out of range (0.0 to 200.0)"
                 MinimumValue="0.0" MaximumValue="200.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Wage" Display="None"></asp:RangeValidator>--%>

            <asp:RequiredFieldValidator ID="RequiredFieldPhone" runat="server" 
                ErrorMessage="Phone is a required field" 
                SetFocusOnError="true" ControlToValidate="Phone" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionPhone" runat="server" 
                ErrorMessage="Emergency PhoneNumber is invalid (ex. 780.102.0123)"
                 SetFocusOnError="true" ControlToValidate="Phone" Display="None"
                 ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
        </div>
    </div>
 
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="Label1" runat="server" Text="StudentID"
                     AssociatedControlID="StudentID"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="StudentID" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label2" runat="server" Text="Name"
                     AssociatedControlID="Name"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="LabelAge" runat="server" Text="Credits"
                     AssociatedControlID="Credits"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Credits" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label4" runat="server" Text="Emergency PhoneNumber"
                     AssociatedControlID="Phone"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Phone" runat="server"> </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4 text-left">
            <asp:LinkButton ID="Add" runat="server" OnClick="Add_Click">Add Person</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton ID="Clear" runat="server" CausesValidation="false" OnClick="Clear_Click">Clear</asp:LinkButton>
            <br/><br/>
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
            <br/><br/>
            <asp:GridView ID="PeopleGridView" runat="server"></asp:GridView>
        </div>
    </div>
    <%--<script src="Scripts/bootwrap-freecode.js"></script>--%>
</asp:Content>

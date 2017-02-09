<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style> 
input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
}
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="w3-container w3-center">
        
          <button class="w3-btn w3-white w3-border w3-border-grey w3-round-xlarge">Popular</button>
        <button class="w3-btn w3-white w3-border w3-border-grey w3-round-xlarge">Recommended</button>
        <button class="w3-btn w3-white w3-border w3-border-grey w3-round-xlarge">Newest</button>
    </div>

    <div class="w3-container">
    <p>Search Recipes:</p>


  <input type="text" name="search" placeholder="Search..">

        </div>

    <div class="w3-container w3-padding-128">
</div>
</asp:Content>


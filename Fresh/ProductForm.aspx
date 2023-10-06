<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductForm.aspx.cs" Inherits="Fresh.ProductForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>


    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="all.min.css">
    <link rel="stylesheet" href="index_style.css">


</head>

<body>




    <div class="container py-3">

        <div class="form-group">
            <label>productName :</label>
            <input id="productNameInp" class="form-control">

        </div>
       
        <div class="form-group">
            <label>productPrice :</label>
            <input  id="productPriceInp" class="form-control">

        </div>

         <div class="form-group">
            <label>productQuntity :</label>
            <input id="productQuntityInp" class="form-control">

        </div>
      

        <button onclick="addProduct()" class="btn btn-info">add_product</button>
        <div class="text-right">
          <button onclick="DeleteAllRows()" class="btn-primary text-right">Delete all rows</button>

        </div>

    </div>

    
      

      <div class="container-fluid text-center">
          <h2 class=" mb-4">Our products</h2>
          <input onkeyup="searchproduct(this.value)" placeholder="Search" class="from-control w-50 m-auto"/>

          <div class="row mt-5" id="productRow"></div>
      </div>
    <table class="table w-75 m-auto" >
                                    <thead>
                                        <tr>
                                            
                                            <th>manage                                             
                                           </th>
                                            
                                                
                                                <th>Items</th>
                                           
                                            <th>Quantity</th>
                                            <th>Unit Price</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
        <tbody id="tableBody">
         
       <td><input type="checkbox" /></td>

        </tbody>
        </table>
     <div class="form-group text-center ">
            <label>productNet :</label>
            <input id="productNetInp">

        </div>
    


    <script src="jquery-3.3.1.slim.min.js"></script>
<script src="popper.min.js"></script>

<script src="bootstrap.min.js"></script>

    <script src="first.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Fresh.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet" href="index_style.css">



</head>
<body>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            
                                <button onclick="Save bill in DB()" class="btn btn-primary btn-sl-lg mr-3">Save bill in DB</button>
                             
                                <button class="btn btn-info  ">Delete selected rows</button>
                               
                        </div>
                    </div>
         
                     
                     

                    <div class="row mt-5">
                        <div class="col-lg-12">
                            <div class="create-invoice-table table-responsive">
                                <table class="table invoice-details-table" style="min-width: 620px;">
                                    <thead>
                                        <tr>
                                            <th>Manage</th>
                                            <th>Items</th>
                                           
                                            <th>Quantity</th>
                                            <th>Unit Price</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox"  /></td>
                                            <td class="muted-text">item 1</td>
                                           
                                            <td class="muted-text">
                                                <input id="Item_NameInp"  style="text-align:center;" value="1" type="text">
                                            </td>
                                            <td class="muted-text"><input  style="text-align:center;" value="1" type="text"></td>
                                            <td class="text-primary"><span>0.00</span></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" /></td>
                                            <td class="muted-text">@item_name</td>
                                           
                                           
                                            <td class="muted-text">
                                                <input  style="text-align:center;" value="1" type="text">
                                            </td>
                                            <td class="muted-text"><input style="text-align:center;" value="1" type="text"></td>
                                            <td class="text-primary"> <span>0.00</span></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" /></td>
                                            <td class="muted-text">item 3</td>
                                           
                                            
                                            <td class="muted-text">
                                                <input  style="text-align:center;"  value="1" type="text"  >
                                            </td>
                                            <td class="muted-text"><input  style="text-align:center;" value="1" type="text"></td>
                                            <td class="text-primary"><span>0.00</span></td>
                                        </tr>
                                         
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Net</td>
                                            <td class="text-primary"><span>0.000</span></td>
                                        </tr>
                                         
                                         
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- #/ container -->
</div>
    <script src="jquery-3.3.1.slim.min.js"></script>
<script src="popper.min.js"></script>

<script src="bootstrap.min.js"></script>




</body>
</html>

/*function first()
{
    var x = document.getElementById("test").value;

    document.getElementById("testResult").innerHTML = x;
}
*/
var productsContainer;
if (localStorage.getItem("ProductsData") == null) {
    productsContainer = [];
}
else {
    productsContainer = JSON.parse(localStorage.getItem("ProductsData"));
    dispalyDate();
}

var input = document.getElementsByClassName("form-control");

function addProduct() {


    var productName = document.getElementById("productNameInp").value;
    var productPrice = document.getElementById("productPriceInp").value;

    var productQuntity = document.getElementById("productQuntityInp").value;
    var productNet = document.getElementById("productNetInp").value;




    


    var product =
    {
      
        name: productName,
        price: productPrice,
        quntity: productQuntity,
        Net: productNet

       //  < td > <input type="checkbox" /></td>
    }


    productsContainer.push(product);
    localStorage.setItem("ProductsData", JSON.stringify( productsContainer));

    dispalyDate();
    clearForm();
   
    
}

function dispalyDate() {
    var temp = "";
    var productNet = 0;

    for (var i = 0; i < productsContainer.length; i++) {
       
            temp += `<tr><div><td><button onclick="deleteProduct(` + i + `)" class="btn btn-outline-danger btn-sm"> delete</button>

</div></td><td> `
                + productsContainer[i].name + `</td><td>` + productsContainer[i].price +
`</td><td>` + productsContainer[i].quntity + `</td><td> ` +  productsContainer[i].quntity * productsContainer[i].price + ` </td></tr>

`
             productNet += productsContainer[i].quntity * productsContainer[i].price 
        }
    document.getElementById("tableBody").innerHTML = temp;
    document.getElementById("productNetInp").value = productNet;
    
    
    }

//<td><input type="checkbox" /></td>
//<td> " + productsContaine[i].checkbox +"</td>
 //   clearForm();
 //   displayProducts();
//}

function clearForm()
{
    
    for (var i = 0; i < input.length; i++) {
        input[i].value = "";
    }
}

    

function searchproduct(term) {
    var temp = ``;
    for (var i = 0; i < productsContainer.length; i++) {
        if (productsContainer[i].name.includes(term)) {
            temp += `<tr><td></td><td> `
                + productsContainer[i].name + `</td><td>` + productsContainer[i].price +
                `</td><td>` + productsContainer[i].quntity + `</td><td>`+productsContainer[i].quntity *productsContainer[i].price+` </td></tr>
`;
            
               

            
        }
    }
    document.getElementById("tableBody").innerHTML = temp;

    function sum() {
        
    }
}

/*function multRows(element) {
    var mult = price * quntity;
    //mult = productsContainer
    
    dispalyDate();
}*/
        
    
function deleteProduct(index) {
    var deleted = productsContainer.splice(index, 1);
    localStorage.setItem("ProductsData", JSON.stringify(productsContainer));
   dispalyDate();
}
function DeleteAllRows(element) {
    var deleted = productsContainer.splice(element);
    localStorage.setItem("ProductsData", JSON.stringify(productsContainer));
    dispalyDate();
}


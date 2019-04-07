<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

  	
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WELCOME</title>
<script>
// step 1 create XMLHttpRequest object
/*
step 2 call your function (sendAjax)to 
1) get input value
2)open connection
3)set output result handling function
4) call send function to send request
*/

var xhr =new XMLHttpRequest();

function fun(obj,obj2,obj3)
{
//alert(obj)
//alert(obj3)
if (xhr.readyState == 4 || xhr.readyState == 0) {
xhr.open("GET", 'http://localhost:8080/Cms/View/changeStatusSupplier.jsp?val='+obj+'&val1='+obj2,true);
xhr.onreadystatechange = function(){setDiv2(xhr,obj3);}; 
xhr.send(null);}
}

function fun1(obj,obj2,obj3)
{
//alert(obj)
//alert(obj3)
if (xhr.readyState == 4 || xhr.readyState == 0) {
xhr.open("GET", 'http://localhost:8080/Cms/View/changeStatusContract.jsp?val='+obj+'&val1='+obj2,true);
xhr.onreadystatechange = function(){setDiv4(xhr,obj3);}; 
xhr.send(null);}
}

function sendAjax()
{//alert(xhr)
 if (xhr.readyState == 4 || xhr.readyState == 0) {
xhr.open("GET", 'http://localhost:8080/Cms/View/submittedSupplier.jsp', true);
xhr.onreadystatechange = function(){setDiv(xhr);}; 
xhr.send(null);}
} 
function sendAjax1()
{//alert(xhr)
 if (xhr.readyState == 4 || xhr.readyState == 0) {
xhr.open("GET", 'http://localhost:8080/Cms/View/submittedContract.jsp', true);
xhr.onreadystatechange = function(){setDiv3(xhr);}; 
xhr.send(null);}
} 
/*
step 3 call your function to handle jsp output to get proper display
*/
 function setDiv(xhr)
{
if (xhr.readyState == 4) {
var ss = document.getElementById('prod')
//var x = document.getElementById('vend')
//
//alert( xhr.responseText);
var str = xhr.responseText;//alert( str);
//alert(str.length)
//var res= "<div >welcome<br>"+str+"</div>";
ss.innerHTML=str;
//ss.style.display="block";

/*if (ss.style.display === "none") {
    ss.style.display = "block";
  } else {
    ss.style.display = "none";
  }*/
}
}
 function setDiv3(xhr)
 {
 if (xhr.readyState == 4) {
 var ss = document.getElementById('vend')
 
 // var x = document.getElementById('prod')
 //alert(ss);
 //alert( xhr.responseText);
 var str = xhr.responseText;//alert( str);
 //alert(str.length)
 //var res= "<div >welcome<br>"+str+"</div>";
 ss.innerHTML=str;
 //ss.style.display="block";
 
 
  }
  }
 function setDiv2(xhr,obj3)
 {
 if (xhr.readyState == 4) {
var ab="d"+obj3;
// alert(ab);
 var ss = document.getElementById(ab);
 //
 //alert(ss);
// alert( xhr.responseText);
 var str = xhr.responseText;//alert( str);
 //alert(str.length)
 //var res= "<div >welcome<br>"+str+"</div>";
 ss.innerHTML=str;
 ss.style.display="block";
  }
  }
 
 function setDiv4(xhr,obj3)
 {
 if (xhr.readyState == 4) {
var ab="d"+obj3;
// alert(ab);
 var ss = document.getElementById(ab);
 //
 //alert(ss);
// alert( xhr.responseText);
 var str = xhr.responseText;//alert( str);
 //alert(str.length)
 //var res= "<div >welcome<br>"+str+"</div>";
 ss.innerHTML=str;
 ss.style.display="block";
  }
  }

</script>
 <style>
#output,#output1{background-color:pink;
color:red;
height:auto;
width:700px;
border:0.5px dotted blue;
font:arial
font-size:24pt;
color:navy;
display:none;
}

.buttonstyle
{
border-radius:25px;
width:170px;
height:40px;
font-family:cursive;
font-size:20px;
margin-top:-35px;
background-color:white;
margin-left:1000px;
opacity:2.0;

}
.text
{
	margin-left:1460px;
	margin-top:-50px;
	font-size:25px;
	color:white;
	
}
</style>
</head>

<body style = "background-image:url('View/IMAGES/contract.jpg');background-repeat:no-repeat;background-size:100%; font-family:cursive;font-size:25px;">
<div class="container-fluid">
		<div class="row" >
		    <div style = "background-color:black;color:white;opacity:0.8;margin-left:-10px;margin-right:-10px;margin-top:-5px;padding-bottom:10px;height:60px;"class="col-sm-12" >
		    
		     <img src="View/IMAGES/logo2.JPG.png" class="image" width="180px" height="70px" style="margin-left:40px;">
		     
		        
              
		   <div class = "text">Welcome, <%String reg1=(String)session.getAttribute("name");
if(reg1!=null)
	out.print(reg1);
%></div>
<button class = "buttonstyle">
		   <a style = "color:black;font-size:25px;text-decoration:none;margin-top:-2px;"  href="View/logout.jsp">Logout</a></button>
		    
		    </div>
		    
        </div> 
</div>

 
	<div class="col-lg-12" style="margin-left:40px;margin-top: 50px;">
		
			<ul class="pill-list nav nav-pills  mb-9" id="pills-tab" role="tablist">
				<li class="pill-item nav-item">
					<a class="pill-link nav-link active" id="pills-prod-tab" data-toggle="pill" href="#prod" role="tab" aria-controls="prod" aria-selected="true" ><h2 style="text-align:left;background-color:#b3b3b3;" id="product1" onclick="sendAjax()">view Submitted suppliers</h2></a>
				</li>
				<li class="pill-item nav-item">
					<a class="pill-link nav-link" id="pills-vend-tab" data-toggle="pill" href="#vend" role="tab" aria-controls="vend" aria-selected="false" ><h2 style="text-align:left; color:grey;" onclick="sendAjax1()" id="invent1">view submitted contracts</h2></a>
				</li>
			</ul>
			<div class="tab-content" id="pills-tabContent">
				 <div class="tab-pane fade active show" id="prod" role="tabpanel" aria-labelledby="pills-prod-tab">

				</div>
			<div class="tab-pane fade" id="vend" role="tabpanel" aria-labelledby="pills-vend-tab">
			</div>
		</div>
	</div>


</body>
</html>​
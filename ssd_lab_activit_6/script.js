function hello(){
    alert("hello working!!");
}
function checkuname(){
   // alert("here");
    var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{3,20}$/;
    var username=document.getElementById("uname");
    // document.getElementById("error").textContent="";
    if(!username.value.match(passw)){
       // alert("here");
       document.getElementById("error").textContent="Invalid username";
    }
    else{
       // alert("here");
        document.getElementById("error").textContent="";
    }
}
function checkpass(){
//alert("lost");
var spass=document.getElementById("spass").value;
var cpass=document.getElementById("cpass").value;
//alert("lost"+spass+cpass);
if(spass!=cpass)
alert("Confirm password dont match");
}
function checkandshow(){
    var flag=1;
    var mname=document.getElementById("mname").value;
    
    var gemail=document.getElementById("gemail").value;
    var uname=document.getElementById("uname").value;
    var tlead = document.getElementById("tlead").value;

    flag=0;
if(flag==1)
    alert("Name:"+mname+"\nEmail:"+gemail+"\nUsername:"+uname+"\nTeam Lead:"+tlead+"\nTeamMembers:");
}
function changecolor(e){
    alert("yes");
    if(e.ctrlKey)
{

var element = document.body;
//alert("pressed ctrlm"+document.body.style.backgroundColor);

}
}
function dragStart(event) {
    event.dataTransfer.setData("Text", event.target.id);
  }
  
  function dragging(event) {
   
  }
  
  function allowDrop(event) {
    event.preventDefault();
  }
  
  function drop(event) {
    event.preventDefault();
    var data = event.dataTransfer.getData("Text");
    event.target.appendChild(document.getElementById(data));
   
  }

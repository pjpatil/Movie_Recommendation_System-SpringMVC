/**
 * 
 */function searchByNameGenres(name){
	let xhttp=new XMLHttpRequest();
	
	xhttp.onreadystatechange=function()
	{
		if(this.readyState==4 && this.status==200)
		{
			document.getElementById("genrestable").innerHTML=this.responseText;
			
		}
	};
	xhttp.open("GET","searchByNameGenres?n="+name,true);
	xhttp.send();
	
}
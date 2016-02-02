<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Kalah Game</title>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript">
function loadBoard(){
	$.ajax({
		url:"kalah",		
		
	});
}
$(document).ready(function() { 
	$('.pitClass').click(function(){
			var id= $(this).attr('id');
			$.ajax({
				url:"kalah",
				type:"post",
				data:{index:id},
				dataType:'json',
				success : function(data) {
					$('#turnMessage').html(data);
				}
	
		});
	});

});

</script>
</head>
<body background="" onload="loadBoard();">
<br></br>
<br>
<center>Kalah Game</center>
Player 2
<br>
<button class="pitClass" id="0" value="0" disabled="disabled" style="padding:1%; ;">0</button>
<button class="pitClass" id="13" value="6" >6</button>
<button class="pitClass" id="12" value="6" >6</button>
<button class="pitClass" id="11" value="6" >6</button>
<button class="pitClass" id="10" value="6" >6</button>
<button class="pitClass" id="9" value="6" >6</button>
<button class="pitClass" id="8" value="6" >6</button>

<br>
<br>
<c:forEach begin="1" end="6" var="b">
<button class="pitClass" id="${b}"value="6" >6</button>
</c:forEach>
<button class="pitClass" id="firstPlayerId7" value="0" disabled="disabled" style="padding:1%; ;">0</button>
<br>
Player 1
<br>
<div id="turnMessage"></div>
</body>
</html>
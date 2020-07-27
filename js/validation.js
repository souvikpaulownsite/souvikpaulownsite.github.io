/*

abc…	Letters
123…	Digits
\d	    Any Digit
\D	    Any Non-digit character
.	    Any Character
\.	    Period
[abc]	Only a, b, or c
[^abc]	Not a, b, nor c
[a-z]	Characters a to z
[0-9]	Numbers 0 to 9
\w	    Any Alphanumeric character
\W	    Any Non-alphanumeric character
{m}	m   Repetitions
{m,n}	m to n Repetitions
*	    Zero or more repetitions
+	    One or more repetitions
?	    Optional character
\s	    Any Whitespace
\S	    Any Non-whitespace character
^…$	    Starts and ends
(…)	    Capture Group
(a(bc))	Capture Sub-group
(.*)	Capture all
(abc|def)  Matches abc or def
 */


function checkpassword()
{	
   var passwordexp = /^[a-zA-Z0-9]{4,8}$/;
  
   var password = document.getElementById("password").value;
  // alert(password);
 
   var passwordflag = false;
    
   if(passwordexp.test(password))
   {
	   passwordflag = true;
   }
   else
   {
	   document.getElementById('passerrormessage').style.visibility = 'visible';
       document.getElementById('passerrormessage').innerText = "Enter Valid Password";
       document.getElementById("password").style.background = 'Red';
       document.getElementById("password").value="";
   }
}

function clearpassword()
{
	document.getElementById("password").style.background = 'White';
	document.getElementById('passerrormessage').style.visibility = 'hidden';
	
}



function checkname()
{	
   var nameexp = /^abc…s[a-zA-Z]\b{3,45}$/;
  
   var name = document.getElementById("name").value;
  // alert(name);
 
   var nameflag = false;
    
   if(nameexp.test(name))
   {
	   nameflag = true;
   }
   else
   {
	   document.getElementById('nameerrormessage').style.visibility = 'visible';
       document.getElementById('nameerrormessage').innerText = "Enter Valid Name";
       document.getElementById("name").style.background = 'Red';
       document.getElementById("name").value="";
   }
}

function clearname()
{
	document.getElementById("name").style.background = 'White';
	document.getElementById('nameerrormessage').style.visibility = 'hidden';
	
}

function checkemail()
{	
	//var email = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	//var RE_EMAIL = /^(\w)+@(\w+\.)(\w+\.)?[a-z]+$/;
	
	/*
	   1.  The caret (^) says to start at the beginning. This prevents the user from entering invalid characters at the beginning of the email address.
	   2. (\w) allows for a sequence of word characters (letters, digits, and the underscore (_)
	   3. @ allows for a single @ symbol.
	   4. (\w+\.)+ allows for a sequence of word characters followed by a dot. The + indicates that the pattern can be repeated one or more times. This is the domain name without the last portion (e.g, without the "com" or "gov").
	   5. [A-Za-z]+ allows for one or more letters. This is the "com" or "gov" portion of the email address.
	   6. The dollar sign ($) says to end here. This prevents the user from entering invalid characters at the end of the email address.
	*/
	
   var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
  
   var email = document.getElementById("email").value;
   //alert(email);
 
   var emailflag = false;
    
   if(emailexp.test(email))
   {
	   emailflag = true;
   }
   else
   {
	   document.getElementById('emailerrormessage').style.visibility = 'visible';
       document.getElementById('emailerrormessage').innerText = "Enter Valid Name";
       document.getElementById("email").style.background = 'Yellow';
       document.getElementById("email").value="";
   }
}

function clearemail()
{
	document.getElementById("email").style.background = 'White';
	document.getElementById('emailerrormessage').style.visibility = 'hidden';
	
}

function checkmobno()
{	
   var mobnoexp = /^[789]\d{9}$/;

 /*
 ^       #Match the beginning of the string
(7|8|9)  #Match a 7, 8 or 9 digit
\d       #Match a digit (0-9 and anything else that is a "digit")
{9}      #Repeat the previous "\d" 9 times (9 digits)
$        #Match the end of the string
 */
  
   var mobno = document.getElementById("mobno").value;
   //alert(mobno);
 
   var mobnoflag = false;
    
   if(mobnoexp.test(mobno))
   {
	   mobnoflag = true;
   }
   else
   {
	   document.getElementById('mobnoerrormessage').style.visibility = 'visible';
       document.getElementById('mobnoerrormessage').innerText = "Enter Valid Mobile No";
       document.getElementById("mobno").style.background = 'Red';
       document.getElementById("mobno").value="";
   }
}

function clearmobno()
{
	document.getElementById("mobno").style.background = 'White';
	document.getElementById('mobnoerrormessage').style.visibility = 'hidden';
	
}

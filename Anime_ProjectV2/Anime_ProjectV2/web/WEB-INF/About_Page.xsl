<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:msxsl="urn:schemas-microsoft-com:xslt"   
xmlns:js="urn:custom-javascript"   
exclude-result-prefixes="msxsl js" > 
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>About_Page.xsl</title>
                
                
                        <!--DARRAGH'S AJAX PART STARTS HERE-->
         <script type="text/javascript">
             
        <![CDATA[ 
            var XMLHttpRequestObject = false;

               if (window.XMLHttpRequest) {
              XMLHttpRequestObject = new XMLHttpRequest();
              } else if (window.ActiveXObject) {
              XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
         }

      function getData(datasource, divID) {
       if (XMLHttpRequestObject) {
         var obj = document.getElementById(divID);
         XMLHttpRequestObject.open("GET", datasource);
         XMLHttpRequestObject.onreadystatechange = function()
         {
            if (XMLHttpRequestObject.readyState === 4 
                && XMLHttpRequestObject.status === 200) {
              obj.innerHTML = XMLHttpRequestObject.responseText;
            }
          };
         XMLHttpRequestObject.send(null);
       }
     }
 ]]> 
</script>
     
        <!--DARRAGH'S AJAX PART ENDS HERE-->
                
                
                
                <!--Div Tags/Style Starts Here-->
                
                <style type="text/css">
                
                 #container{
                 width:900px;
                 height:1230px;
                 margin: 0 auto 0 auto;
                 text-align: left;
                 background-color:black;
                 }
                    
                 #banner{
                background-color:black;
                position:absolute;
                height:250px;
                width:900px;
                top:210px;
                 }
                #logo{
                background-image:url('banner.jpg');
                position:absolute;
                height:110px;
                width:800px;
                right:230px;
                top:40px;
                }    
                #navigation{
                background-color:#C2A385;
                height:50px;
                width:800px;
                position:absolute;  
                top:150px;
                right:230px;
                }
                    
               #content{
                background-color:#C2A385;
                height:750px;
                width:800px;
                position:absolute;  
                top:460px;
                right:230px;
                }
                    
                #images{
                    position:absolute;
                    top:120px;
                    height:300px;
                    width:800px;
                    
                    }
                    
                    
                </style>
                
              
                <!--Div tags/style ends here-->
                <!--jQuery Function Starts here-->
                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
                <!-- include Cycle plugin -->
                <script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
                <script type="text/javascript">
                
                    $(document).ready(function() {
                           $('.slideshow').cycle({
                             	fx: 'fade', 
                                speed:   300, 
                                timeout: 3000, 
                                next:   '#s3', 
                                pause:   1 
                            });
                    });
                    
                </script>
                <!--jQuery Function Ends here-->
            </head>
            
            <!--Body starts here-->
            <body style="background-color:#0F0A05">
               
               <div id="container">
                   <div id="logo">
                      
                   </div>    
                   <center>
                
                   <div id="banner">                
                   <!--Banner starts here-->
                   <div class="slideshow">
                        <img src="attackontitans.gif" width="800" height="250" />
                        <img src="codegeass.gif" width="800" height="250" />
                        <img src="cowboybebop.gif" width="800" height="250" />
                        <img src="dragonball1.gif" width="800" height="250" />
                        <img src="fairytale.gif" width="800" height="250" />
                        <img src="ghostintheshell.gif" width="800" height="250" />
                        <img src="gintama.gif" width="800" height="250" />
                        <img src="narutocross.gif" width="800" height="250" />
                        <img src="onepiecepoint.gif" width="800" height="250" />
                        <img src="samuraichamploo.gif" width="800" height="250" />
                    </div>
                
               </div>
               </center>
               <!--Banner ends here-->
               
               <!--Navigation Starts Here-->
               
                  <div id="navigation" align="center">
                  
                  
                    <form action="Home_Page" style="position:absolute; left:30px;">
                        <center><input type="image" src="home.png" alt="Submit"/></center>
                    </form>
                 
                    <form action="About_Page" style="position:absolute;  left:199px;">
                        <center><input type="image" src="about us.png" alt="Submit"/></center>
                    </form>
                  
                    <form action="Anime_Page" style="position:absolute; left:445px;">
                        <center><input type="image" src="Anime.png" alt="Submit"/></center>
                    </form>
                  
                    <form action="Rating_Page" style="position:absolute; left:626px;">
                        <center><input type="image" src="rating.png" alt="Submit"/></center>
                    </form>
                  
                  </div>
               
               <!--Navigation ends here-->
               
               
               <!--Content starts here-->
               
                  <div id="content">
                      
                      <p>This website project is made by Joanna Bautista and Darragh E O'Connor.
                      Our website is composed of four pages consisting of the animes that we have considered the best. </p>
                      
                      <!--DARRAGH's AJAX IMAGES STARTS HERE-->
        <div id="images"><img src="Luffy.jpg" alt="Luffy.jpg" width="200" height="200" onmouseover="getData('luffy','ajaxDesc');"/>
             <img src="nastu.jpg" alt="nastu.jpg" width="200" height="200" onmouseover="getData('nastu','ajaxDesc');"/>
             <img src="codegease.jpg" alt="codegease.jpg" width="200" height="200" onmouseover="getData('lelouch','ajaxDesc');"/>
             <img src="naruto.jpg" alt="naruto.jpg" width="200" height="200" onmouseover="getData('naruto','ajaxDesc');"/>
             <img src="eren.jpg" alt="eren.jpg" width="200" height="200" onmouseover="getData('titian','ajaxDesc');"/>
             <img src="Gouku.jpg" alt="Gouku.jpg" width="200" height="200" onmouseover="getData('Goku','ajaxDesc');"/>
             <img src="cowbowebop.jpg" alt="cowbowebop.jpg" width="200" height="200" onmouseover="getData('cowbow','ajaxDesc');"/>
             <img src="gitma.jpg" alt="gitma.jpg" width="200" height="200" onmouseover="getData('gitma','ajaxDesc');"/>
             <img src="samurai.jpg" alt="samurai.jpg" width="200" height="200" onmouseover="getData('samurai','ajaxDesc');"/>
             <img src="ghostintheshell.jpg" alt="ghostintheshell.jpg" width="200" height="200" onmouseover="getData('ghost','ajaxDesc');"/>
         </div>
        
        <div id="ajaxDesc"> </div>
                  </div>
                  
                 
        <!--DARRAGh'S PART ENDS HERE-->
                  
               <!--Content ends here-->
               
               </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

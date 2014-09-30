<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Rating_Page.xsl
    Created on : 08 December 2013, 19:44
    Author     : x12374571
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Rating_Page.xsl</title>
                   
                <!--Div Tags/Style Starts Here-->
                <style type="text/css">
                
                 #container{
                 width:900px;
                 height:1500px;
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
                height:1000px;
                width:800px;
                position:absolute;  
                top:460px;
                right:230px;
                }
                    
                </style>
                <!--Div tags/style ends here-->
                <!--jQuery Function Starts here-->
                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
                
                <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"></link>               
                <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
                <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
                <link rel="stylesheet" href="/resources/demos/style.css"></link>
                <script>
                    $(function() {
                        $( "#accordion" ).accordion();
                    });
                </script>
            
                
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
                      
                      <center>
                          <p>
                              Here are the lists of animes with their ratings:
                          </p>
                      <div id="accordion" style="height:200px; width:600px;">
                            <h3>Top 1</h3>
                            <div>
                            <p>
                                <xsl:value-of select="//title[@id = '1']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='1']"/>                                
                           </p>                                                                                                                        
                            </div>
                            <h3>Top 2</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '2']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='2']"/>                                
                           </p> 
                            </p>
                            </div>
                            <h3>Top 3</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '3']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='3']"/>                                
                           </p> 
                            </p>
                            </div>
                            <h3>Section 4</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '4']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='4']"/>                                
                           </p> 
                            </p>
                            </div>
                            <h3>Section 5</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '5']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='5']"/>                                
                           </p> 
                            </p>
                            </div>
                            <h3>Section 6</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '6']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='6']"/>                                
                           </p> 
                            </p>
                            </div>
                            <h3>Section 7</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '7']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='7']"/>                                
                           </p> 
                            </p>
                            </div>  
                            <h3>Section 8</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '8']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='8']"/>                                
                           </p> 
                            </p>
                            </div> 
                            <h3>Section 9</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '9']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='9']"/>                                
                           </p> 
                            </p>
                            </div> 
                            <h3>Section 10</h3>
                            <div>
                            <p>
                            <p>
                                <xsl:value-of select="//title[@id = '10']"/>
                                  
                           </p>
                            <p>
                                <xsl:value-of select="//episodes[@id='10']"/>                                
                           </p> 
                            </p>
                            </div>                                                                                                         
</div>
                      </center>
                  </div>
               <!--Content ends here-->
               
               </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

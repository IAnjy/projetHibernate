<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        
                    </div>
                    <div class="col-md-6">
                        <div class="text-md-right footer-links d-none d-sm-block">
                            <p>2022 &copy; Projet hibernate by Nancy et Ianjy</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->

       

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <script src="<%=request.getContextPath()%>/assets/js/vendor.min.js"></script>
        
        <!-- Modal-Effect -->
        <script src="<%=request.getContextPath()%>/assets/libs/custombox/custombox.min.js"></script>
        
        <!-- Sweet Alerts js -->
        <script src="<%=request.getContextPath()%>/assets/libs/sweetalert2/sweetalert2.min.js"></script>

        <!-- Sweet alert init js-->
        <script src="<%=request.getContextPath()%>/assets/js/pages/sweet-alerts.init.js"></script>

        <!-- App js-->
        <script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>
        
        
       <script type="text/javascript">
	        $(document).ready(function(){
	        	$(".rechercheProf").on("keyup", function() {
	                var value = $(this).val().toLowerCase();
	                //console.log( value);
	                $(' #tableProf tr').filter(function(){
	                  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
	              });
	            });
	    
            	$('.btnModifierProf').click(function(){
	                var codeprof = $(this).attr('codeprof');
	                var nom = $(this).attr('nom');
	                var prenom = $(this).attr('prenom');
	                var grade = $(this).attr('grade');
	                $('.modifCodeprof').val(codeprof);
	                $('.modifNom').val(nom);
	                $('.modifPrenom').val(prenom);
	                $('.modifGrade').val(grade);
                });
            	
            	$('.btnDeleteProf').click(function(){
	                $('.deleteCodeprof').val($(this).attr('codeprof'));
                });
            } );
            
            
        </script>
        
        <script type="text/javascript">
            $(document).ready(function() {
            	$(".rechercheSalle").on("keyup", function() {
	                var value = $(this).val().toLowerCase();
	                //console.log( value);
	                $(' #tableSalle tr').filter(function(){
	                  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
	              });
	            });
                
            	$('.btnModifierSalle').click(function(){
	                var codesal = $(this).attr('codesal');
	                var designation = $(this).attr('designation');
	                
	                $('.codesal').val(codesal);
	                $('.designation').val(designation);
                });
            	
            	$('.btnDeleteSalle').click(function(){
	                $('.deletecodesal').val($(this).attr('codesal'));
                });
            } );
        </script>
        
         <script type="text/javascript">
            $(document).ready(function() {
            	$(".rechercheOccuper").on("keyup", function() {
	                var value = $(this).val().toLowerCase();
	                //console.log( value);
	                $(' #tableOccuper tr').filter(function(){
	                  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
	              });
	            });
                
            	$('.btnModifierOccuper').click(function(){
	                var idOcc = $(this).attr('idOcc');
	                var nomProf = $(this).attr('nomProf');
	                var designSalle = $(this).attr('designSalle');
	                var date = $(this).attr('date');

	                var monthNames = ["janvier", "février","mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"];
	                var parts = date.split(" ");
	                var monthNUM = "";
	                for(var i = 0; i<= monthNames.length; i++){
						if(monthNames[i] == parts[1]){
							if(i<=9){
								i = i+1
								monthNUM = "0"+i;
							}else{
								monthNUM = i+1;
							}
						}
	                }
	              	var realDate = parts[2]+"-"+monthNUM+"-"+parts[0];

	               // console.log(realDate);
	                
	                $('.modifId').val(idOcc);
	                $('.modifProf').val(nomProf);
	                $('.modifsalle').val(designSalle);
	                $('.modifdate').attr('value',realDate);
                });
            	
            	$('.btnDeleteOcc').click(function(){
	                $('.deletecodeOcc').val($(this).attr('idOcc'));
                });
            } );
        </script>
        
    </body>

<!-- Mirrored from coderthemes.com/adminto/layouts/light-horizontal/pages-starter.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Nov 2019 11:50:18 GMT -->
</html>
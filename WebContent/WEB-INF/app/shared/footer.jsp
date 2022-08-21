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
	        });
        </script>
        
        <script type="text/javascript">
            $(document).ready(function() {
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
        
    </body>

<!-- Mirrored from coderthemes.com/adminto/layouts/light-horizontal/pages-starter.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Nov 2019 11:50:18 GMT -->
</html>
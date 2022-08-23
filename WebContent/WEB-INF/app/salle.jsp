<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

<jsp:include page="shared/header.jsp" />

 <!-- ============================================================== -->
 <!-- Start Page Content here -->
 <!-- ============================================================== -->

 <div class="wrapper">
     <div class="container-fluid">

         <!-- start page title -->
         <div class="row">
             <div class="col-12">
                 <div class="page-title-box">
                     
                     <h4 class="page-title">Salle</h4>
                 </div>
             </div>
         </div>     
         <!-- end page title --> 
		<div class="row">
                 <div class="col-8 mr-auto ml-auto">
                     <div class="card">
                         <div class="card-body">
                             <h4 class="mt-0 header-title">Liste des Salles :</h4>
                           <div class="row">
                           	<div class="col">
                           		<button class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#ajoutProf">Ajouter</button>
                           	</div>
                           	<div class="col">
                           	<div class="form-group ">
                                    <div class="col">
                                        <input type="text" id="example-placeholder" class="form-control rechercheSalle" placeholder="Rechercher...">
                                    </div>
                                </div>
                           	</div>
                           </div>
                             
                             
                             <div class="table-responsive">
                                 <table class="table table-centered mb-0" id="inline-editable">
                                     <thead>
                                         <tr>
                                             <th>Code salle</th>
                                             <th>Designation</th>
                                             <th></th>
                                         </tr>
                                     </thead>
                                 
                                     <tbody id="tableSalle">
                                       <c:forEach var = "salle" items="${Salles}">
                                         <tr>
                                             <td>${salle.codesal}</td>
                                             <td>${salle.designation}</td>
                                             <td >
                                              	<button class=" btn btn-success mdi mdi-pencil mr-3 btnModifierSalle" 
                                              			data-toggle="modal" 
                                              			data-target=".modifSalle"
                                              			codesal= "<c:out value='${salle.codesal}'/>"
                                              			designation= "<c:out value='${salle.designation}'/>"
                                              
                                              			></button>
                                              	<button class=" btn btn-danger mdi mdi-trash-can-outline btnDeleteSalle"
                                              			data-toggle="modal" 
                                              			data-target=".deleteprof"
                                              			codesal= "<c:out value='${salle.codesal}'/>"
                                              			></button>
                                             </td>
                                         </tr>
                                      </c:forEach>
                                     </tbody>
                                 </table>
                             </div> <!-- end .table-responsive-->
                         </div> <!-- end card-body -->
                     </div> <!-- end card -->
                 </div> <!-- end col -->
             </div> <!-- end row -->
         
     </div> <!-- end container -->
 </div>
 <!-- end wrapper -->
 
  <!-- sample modal content -->
  <form method="post" action="addSalle" >
   <div id="ajoutProf" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog">
           <div class="modal-content">
               <div class="modal-header">
                   <h4 class="modal-title" id="myModalLabel">Ajouter une salle</h4>
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
               <div class="modal-body">
                   <div class="form-group row">
                       <label class="col-3 col-form-label" for="example-placeholder">Désignation*</label>
                       <div class="col">
                           <input type="text" id="example-placeholder" name="design" class="form-control" placeholder="désignation...">
                       </div>
                   </div>
                 
               </div>
               <div class="modal-footer">
                   <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Annuler</button>
                   <button type="submit" class="btn btn-primary waves-effect waves-light">Ajouter</button>
               </div>
           </div><!-- /.modal-content -->
       </div><!-- /.modal-dialog -->
   </div><!-- /.modal -->
</form>
             
             
 <!-- sample modal content -->
<form method="post" action="editSalle" >
<div class="modal fade modifSalle" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Modifier une Salle</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <div class="form-group row">
                	<input type="hidden" id="example-placeholder" class="form-control codesal" placeholder="hidden..." name="codesal">
                    <label class="col-3 col-form-label" for="example-placeholder">Désignation*</label>
                    <div class="col">
                        <input type="text" id="example-placeholder" class="form-control designation" name="designation" placeholder="désignation...">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary waves-effect" data-dismiss="modal">Annuler</button>
                <button type="submit" class="btn btn-success waves-effect waves-light">Modifier</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</form>
             
             
 <!-- sample modal content -->
 <form method="post" action="deleteSalle" >
 <div class="modal fade deleteprof" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <h4 class="modal-title" id="myModalLabel">Voulez-vous vraiment supprimez !</h4>
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
             </div>
             <div class="modal-body">
             	<p>Cette opération est irréversible.</p>
                 <div class="form-group row">
                     <div class="col">
                         <input type="hidden" id="example-placeholder" name="codesal" class="form-control deletecodesal" placeholder="id">
                     </div>
                 </div>
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-primary waves-effect" data-dismiss="modal">Annuler</button>
                 <button type="submit" class="btn btn-danger waves-effect waves-light">Supprimer</button>
             </div>
         </div><!-- /.modal-content -->
     </div><!-- /.modal-dialog -->
 </div><!-- /.modal -->
 </form>

 <!-- ============================================================== -->
 <!-- End Page content -->
 <!-- ============================================================== -->
 
 <jsp:include page="shared/footer.jsp" />

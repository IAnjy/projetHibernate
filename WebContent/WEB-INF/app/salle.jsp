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
                 <div class="col-10 mr-auto ml-auto">
                     <div class="card">
                         <div class="card-body">
                             <h4 class="mt-0 header-title">Liste des Professeurs :</h4>
                           <div class="row">
                           	<div class="col">
                           		<button class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#ajoutProf">Ajouter</button>
                           	</div>
                           	<div class="col">
                           	<div class="form-group ">
                                    <div class="col">
                                        <input type="text" id="example-placeholder" class="form-control" placeholder="Rechercher...">
                                    </div>
                                </div>
                           	</div>
                           </div>
                             
                             
                             <div class="table-responsive">
                                 <table class="table table-centered mb-0" id="inline-editable">
                                     <thead>
                                         <tr>
                                             <th>Code Professeur</th>
                                             <th>Nom</th>
                                             <th>Prénom(s)</th>
                                             <th>Grade</th>
                                             <th></th>
                                         </tr>
                                     </thead>
                                 
                                     <tbody>
                                         <tr>
                                             <td>1</td>
                                             <td>Tiger Nixon</td>
                                             <td>System Architect</td>
                                             <td>Edinburgh</td>
                                             <td >
                                              	<button class=" btn btn-success mdi mdi-pencil mr-3" data-toggle="modal" data-target=".modifProf"></button>
                                              	<button class=" btn btn-danger mdi mdi-trash-can-outline"  data-toggle="modal" data-target=".deleteprof"></button>
                                             </td>
                                         </tr>
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
             <div id="ajoutProf" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                 <div class="modal-dialog">
                     <div class="modal-content">
                         <div class="modal-header">
                             <h4 class="modal-title" id="myModalLabel">Ajouter un professeur</h4>
                             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                         </div>
                         <div class="modal-body">
                             <div class="form-group row">
                                 <label class="col-3 col-form-label" for="example-placeholder">Nom*</label>
                                 <div class="col">
                                     <input type="text" id="example-placeholder" class="form-control" placeholder="nom...">
                                 </div>
                             </div>
                             <div class="form-group row">
                                 <label class="col-3 col-form-label" for="example-placeholder">Prénom(s)*</label>
                                 <div class="col">
                                     <input type="text" id="example-placeholder" class="form-control" placeholder="prénoms...">
                                 </div>
                             </div>
                             <div class="form-group row">
                                 <label class="col-3 col-form-label" for="example-placeholder">Grade*</label>
                                 <div class="col">
                                     <input type="text" id="example-placeholder" class="form-control" placeholder="grade...">
                                 </div>
                             </div>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Annuler</button>
                             <button type="button" class="btn btn-primary waves-effect waves-light">Ajouter</button>
                         </div>
                     </div><!-- /.modal-content -->
                 </div><!-- /.modal-dialog -->
             </div><!-- /.modal -->
             
             
              <!-- sample modal content -->
             <div class="modal fade modifProf" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                 <div class="modal-dialog">
                     <div class="modal-content">
                         <div class="modal-header">
                             <h4 class="modal-title" id="myModalLabel">Modifier un professeur</h4>
                             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                         </div>
                         <div class="modal-body">
                             <div class="form-group row">
                                 <label class="col-3 col-form-label" for="example-placeholder">Nom*</label>
                                 <div class="col">
                                     <input type="text" id="example-placeholder" class="form-control" placeholder="nom...">
                                 </div>
                             </div>
                             <div class="form-group row">
                                 <label class="col-3 col-form-label" for="example-placeholder">Prénom(s)*</label>
                                 <div class="col">
                                     <input type="text" id="example-placeholder" class="form-control" placeholder="prénoms...">
                                 </div>
                             </div>
                             <div class="form-group row">
                                 <label class="col-3 col-form-label" for="example-placeholder">Grade*</label>
                                 <div class="col">
                                     <input type="text" id="example-placeholder" class="form-control" placeholder="grade...">
                                 </div>
                             </div>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-primary waves-effect" data-dismiss="modal">Annuler</button>
                             <button type="button" class="btn btn-success waves-effect waves-light">Modifier</button>
                         </div>
                     </div><!-- /.modal-content -->
                 </div><!-- /.modal-dialog -->
             </div><!-- /.modal -->
             
             
             <!-- sample modal content -->
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
                                     <input type="text" id="example-placeholder" class="form-control" placeholder="id">
                                 </div>
                             </div>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-primary waves-effect" data-dismiss="modal">Annuler</button>
                             <button type="button" class="btn btn-danger waves-effect waves-light">Supprimer</button>
                         </div>
                     </div><!-- /.modal-content -->
                 </div><!-- /.modal-dialog -->
             </div><!-- /.modal -->

 <!-- ============================================================== -->
 <!-- End Page content -->
 <!-- ============================================================== -->
 
 <jsp:include page="shared/footer.jsp" />

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
                     
                     <h4 class="page-title">Professeur</h4>
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
                                        <input type="text" id="example-placeholder" class="form-control rechercheProf"  value="" autocomplete="off" placeholder="Rechercher...">
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
                                 
                                     <tbody id="tableProf" >
                                      <c:forEach var = "prof" items="${Profs}">
                                         <tr>
                                             <td>${prof.codeprof}</td>
                                             <td>${prof.nom}</td>
                                             <td>${prof.prenom}</td>
                                             <td>${prof.grade}</td>
                                             <td >
                                              	<button class=" btn btn-success mdi mdi-pencil mr-3 btnModifierProf" 
                                              			data-toggle="modal" 
                                              			data-target=".modifProf"
                                              			codeprof= "<c:out value='${prof.codeprof}'/>"
                                              			nom= "<c:out value='${prof.nom}'/>"
                                              			prenom= "<c:out value='${prof.prenom}'/>"
                                              			grade= "<c:out value='${prof.grade}'/>"
                                              
                                              			></button>
                                              	<button class=" btn btn-danger mdi mdi-trash-can-outline btnDeleteProf"
                                              			data-toggle="modal" 
                                              			data-target=".deleteprof"
                                              			codeprof= "<c:out value='${prof.codeprof}'/>"
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
 <form method="post" action="addProf" >
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
                         <input type="text" id="example-placeholder" name="nom" class="form-control" placeholder="nom...">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label class="col-3 col-form-label" for="example-placeholder">Prénom(s)*</label>
                     <div class="col">
                         <input type="text" id="example-placeholder" name="prenom" class="form-control" placeholder="prénoms...">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label class="col-3 col-form-label" for="example-placeholder">Grade*</label>
                     <div class="col">
                         <input type="text" id="example-placeholder" name="grade" class="form-control" placeholder="grade...">
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
  <form method="post" action="editProf" >
 <div class="modal fade modifProf" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <h4 class="modal-title" id="myModalLabel">Modifier un professeur</h4>
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
             </div>
             <div class="modal-body">
            	 
                 <input type="hidden" id="example-placeholder" class="form-control modifCodeprof" placeholder="hidden..." name="modifCodeprof">
                     
                 <div class="form-group row">
                     <label class="col-3 col-form-label" for="example-placeholder">Nom*</label>
                     <div class="col">
                         <input type="text" id="example-placeholder" class="form-control modifNom" placeholder="nom..." name="modifNom">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label class="col-3 col-form-label" for="example-placeholder">Prénom(s)*</label>
                     <div class="col">
                         <input type="text" id="example-placeholder" class="form-control modifPrenom" placeholder="prénoms..." name="modifPrenom">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label class="col-3 col-form-label" for="example-placeholder ">Grade*</label>
                     <div class="col">
                         <input type="text" id="example-placeholder" class="form-control modifGrade" placeholder="grade..." name="modifGrade">
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
   <form method="post" action="deleteProf" >
  <div class="modal fade deleteprof" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <h4 class="modal-title" id="myModalLabel">Voulez-vous vraiment supprimez !</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              </div>
              <div class="modal-body">
              	<p>Cette opération est irréversible.</p>
                 <input type="hidden" id="example-placeholder" class="form-control deleteCodeprof" placeholder="id" name="deleteCodeprof">
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

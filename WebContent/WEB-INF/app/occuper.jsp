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
                     
                     <h4 class="page-title">Occupation des salles</h4>
                 </div>
             </div>
         </div>     
         <!-- end page title --> 
		<div class="row">
                 <div class="col-9 mr-auto ml-auto">
                     <div class="card">
                         <div class="card-body">
                             <h4 class="mt-0 header-title">Liste des occupations :</h4>
                           <div class="row">
                           	<div class="col">
                           		<button class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#ajoutOccuper">Ajouter</button>
                           	</div>
                           	<div class="col">
                           	<div class="form-group ">
                                    <div class="col">
                                        <input type="text" id="example-placeholder" class="form-control rechercheOccuper"  value="" autocomplete="off" placeholder="Rechercher...">
                                    </div>
                                </div>
                           	</div>
                           </div>
                             
                             
                             <div class="table-responsive">
                                 <table class="table table-centered mb-0" id="inline-editable">
                                     <thead>
                                         <tr>
                                             <th>#</th>
                                             <th>Professeur</th>
                                             <th>Salle</th>
                                             <th>Date</th>
                                             <th></th>
                                         </tr>
                                     </thead>
                                 
                                     <tbody id="tableOccuper" >
                                         
                                         <c:forEach var = "occ" items="${listOccuper}">
                                         <tr>
                                             <td>${occ.id}</td>
                                             <td>${occ.nomProf}</td>
                                             <td>${occ.designSalle}</td>
                                             <td>${occ.date}</td>
                                             <td >
                                              	<button class=" btn btn-success mdi mdi-pencil mr-3 btnModifierOccuper" 
                                              			data-toggle="modal" 
                                              			data-target=".modifOccuper"
                                              			
                                              			idOcc= "<c:out value='${occ.id}'/>"
                                              			nomProf= "<c:out value='${occ.nomProf}'/>"
                                              			designSalle= "<c:out value='${occ.designSalle}'/>"
                                              			date= "<c:out value='${occ.date}'/>"
                                              
                                              			></button>
                                              	<button class=" btn btn-danger mdi mdi-trash-can-outline btnDeleteOcc"
                                              			data-toggle="modal" 
                                              			data-target=".comfirm"
                                              			idOcc= "<c:out value='${occ.id}'/>"
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
 <form method="post" action="addOccuper" >
 <div id="ajoutOccuper" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <h4 class="modal-title" id="myModalLabel">Occuper une salle</h4>
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
             </div>
             <div class="modal-body">
                 <div class="form-group row">
                     <div class="col">
                         <select class="custom-select mt-3" name="codeprof">
                             <option selected>Sélectionner un professeur</option>
                             <c:forEach var = "p" items="${Profs}">
                          		<option value="${p.codeprof}" class="${p.codeprof}">${p.nom} ${p.prenom} </option>
                             </c:forEach>
                         </select>
                          
                     </div>
                     <div class="col">
                         <select class="custom-select mt-3" name="codesal">
                             <option selected>Sélectionner une salle</option>
                             <c:forEach var = "salle" items="${Salles}">
                          		<option value="${salle.codesal}" class="${salle.codesal}">${salle.designation} </option>
                             </c:forEach>
                         </select>
                     </div>
                 </div>
                 
                 <hr>

                 <div class="form-group row">
                     <label class="col-2 col-form-label" for="example-placeholder">Date*</label>
                     <div class="col">
                      
                         <input class="form-control" id="example-date" type="date" name="date">
                     </div>
                 </div>
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Annuler</button>
                 <button type="submit" class="btn btn-primary waves-effect waves-light">Occuper</button>
             </div>
         </div><!-- /.modal-content -->
     </div><!-- /.modal-dialog -->
 </div><!-- /.modal -->
</form>
             
 
  <!-- sample modal content -->
  <form method="post" action="editOccuper" >
 <div class="modal fade modifOccuper" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <h4 class="modal-title" id="myModalLabel">Modifier l'occupation</h4>
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
             </div>
             	<div class="modal-body">
            	 
                 <input type="text" id="example-placeholder" class="form-control modifId" placeholder="hidden..." name="modifIdOcc">
                     
                 <div class="form-group row">
                     <label class="col-3 col-form-label" for="example-placeholder">Professeur*</label>
                     <div class="col">
                         <input type="text" readonly="readonly" id="example-placeholder" class="form-control modifProf" placeholder="nom..." name="modifNom">
                     </div>
                     <!--<div class="form-group row">
                     <div class="col">
                         <select class="custom-select mt-3" name="codeprof">
                             <option selected class="modifProf">Sélectionner un professeur</option>
                             <c:forEach var = "p" items="${Profs}">
                          		<option value="${p.codeprof}" class="${p.codeprof}">${p.nom} ${p.prenom} </option>
                             </c:forEach>
                         </select>
                          
                     </div>
                     <div class="col">
                         <select class="custom-select mt-3" name="codesal">
                             <option selected>Sélectionner une salle</option>
                             <c:forEach var = "salle" items="${Salles}">
                          		<option value="${salle.codesal}" class="${salle.codesal}">${salle.designation} </option>
                             </c:forEach>
                         </select>
                     </div>
                 </div> -->
                 </div>
                 <div class="form-group row">
                     <label class="col-3 col-form-label" for="example-placeholder">Salle*</label>
                     <div class="col">
                         <input type="text" readonly="readonly" id="example-placeholder" class="form-control modifsalle" placeholder="prénoms..." name="modifPrenom">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label class="col-3 col-form-label" for="example-placeholder ">Date*</label>
                     <div class="col">
                        <input  type="date" class="form-control modifdate" value="2022-08-17" name="date">
                 </div>
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-primary waves-effect" data-dismiss="modal">Annuler</button>
                 <button type="submit" class="btn btn-success waves-effect waves-light">Modifier</button>
             </div>
         </div><!-- /.modal-content -->
     </div><!-- /.modal-dialog -->
 </div><!-- /.modal -->
  </div>
  </form>
 
<!-- sample modal content -->
<form method="post" action="deleteOccuper" >
 <div class="modal fade comfirm"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                         <input type="hidden" id="example-placeholder" class="form-control deletecodeOcc" name="IdOccup" placeholder="id">
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

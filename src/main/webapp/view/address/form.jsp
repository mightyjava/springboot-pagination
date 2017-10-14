<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript" src="${path}/js/jquery.save.js"></script>
<div class="panel panel-default">
	<div class="panel-heading">
		<strong>
			<c:choose>
				<c:when test="${isNew}"><span class="glyphicon glyphicon-plus-sign"></span></c:when>
				<c:otherwise><span class="glyphicon glyphicon-edit"></span></c:otherwise>
			</c:choose> Address
		</strong>
	</div>
	<form:form method="post" class="form-horizontal" action="${path}/address/add" commandName="addressForm" id="submitAddressForm">
		<form:hidden path="id"/>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-md-2 control-label">Address Line : </label>
				<div class="col-md-10">
					<form:textarea class="form-control" path="addressLine" placeholder="Enter Street, Landmark and other details" required="true"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">Country : </label>
				<div class="col-md-4">
					<form:input class="form-control" path="country" placeholder="Enter Country" required="true"/>
				</div>
				
				<label class="col-md-2 control-label">State : </label>
				<div class="col-md-4">
					<form:input class="form-control" path="state" placeholder="Enter State" required="true"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">City : </label>
				<div class="col-md-4">
					<form:input class="form-control" path="city" placeholder="Enter City" required="true"/>
				</div>
				
				<label class="col-md-2 control-label">Pin Code : </label>
				<div class="col-md-4">
					<form:input class="form-control" path="pinCode" placeholder="Enter Pin Code" required="true"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">User :</label>
				<div class="col-md-4">
					<form:select class="form-control" path="userId">
						<c:forEach items="${users}" var="user">
							<form:option value="${user.id}">${user.fullName}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>
		</div>
		<div class="panel-footer">
			<form:button value="Save" class="btn btn-xs btn-default">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				<c:choose>
					<c:when test="${isNew}"> Save</c:when>
					<c:otherwise> Update</c:otherwise>
				</c:choose>
			</form:button>
		</div>
	</form:form>
</div>
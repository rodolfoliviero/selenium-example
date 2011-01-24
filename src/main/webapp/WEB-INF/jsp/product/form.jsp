<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="<c:url value="/products"/>" method="post">
  
  <c:if test="${not empty product.id}">
    <input type="hidden" name="product.id" value="${product.id}"/>
    <input type="hidden" name="_method" value="put"/>
  </c:if>

  <div class="field">
    Price:<br />
    <input type="text" name="product.price" value="${product.price}"/>
  </div>
  <div class="field">
    Name:<br />
    <input type="text" name="product.name" value="${product.name}"/>
  </div>
  <div class="actions">
    <button type="submit">send</button>
  </div>
</form>

<a href="<c:url value="/products"/>">Back</a>


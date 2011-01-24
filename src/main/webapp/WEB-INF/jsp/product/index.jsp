<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<h1>Listing Products</h1>

<table>
  <tr>
   <th>price</th>
   <th>name</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>

<c:forEach items="${productList}" var="product">
  <tr>
      <td>
      ${product.price}
    </td>
      <td>
      ${product.name}
    </td>
      <td><a href="<c:url value="/products/${product.id}"/>">show</a></td>
    <td><a href="<c:url value="/products/${product.id}/edit"/>">edit</a></td>
    <td>
      <form action="<c:url value="/products/${product.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</table>

<br />
<a href="<c:url value="/products/new"/>">New Product</a> 
</body>

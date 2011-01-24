<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>

<p>
  <b>Price:</b>
   ${product.price}
</p>
<p>
  <b>Name:</b>
   ${product.name}
</p>

<a href="<c:url value="/products/${product.id}/edit"/>">Edit</a>
<a href="<c:url value="/products"/>">Back</a>

</body>

<%@ page import="java.util.ArrayList" %>
<%@ page import="cts.customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>dskh</title>
</head>
<body>
<%!
    ArrayList<customer> customerArrayList = new ArrayList<>();
    public void jspInit(){
        customerArrayList.add(new customer("Nguyen The Canh", "01-08-1996", "Phu Tho", "https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/276303720_1021172262116955_5759736312963843040_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=OgweDp79hUcAX8TqeEG&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9rsvPKS6l7LJYJVSTuMojrDOQ_dkWcXcTuqnLv48TQlw&oe=624262F6"));
        customerArrayList.add(new customer("Nguyen Tien Duc", "10-04-1958", "Phu Tho", "https://static.wikia.nocookie.net/powerrangers/images/d/da/HurricanegerEp22Shurikenger.jpg/revision/latest/top-crop/width/360/height/360?cb=20200725063942"));
        customerArrayList.add(new customer("Nguyen Thi Dieu", "01-08-1963", "Phu Tho", "https://www.google.com/search?q=shurikenger&tbm=isch&chips=q:shurikenger,online_chips:tenkai:KKOd5jKW4zk%3D&hl=vi&sa=X&ved=2ahUKEwif9OjR7uD2AhXqx4sBHRCmC7QQ4lYoAnoECAEQIQ&biw=835&bih=889#imgrc=eRkYvx62c0kNWM"));
    }
%>

<%
    request.setAttribute("cta", customerArrayList);
%>
<table>
    <tr>
        <th>Ten</th>
        <th>Ngay sinh</th>
        <th>Dia chi</th>
        <th>hinh anh</th>
    </tr>
    <c:forEach items="${cta}" var="kh">
    <tr>
            <td>${kh.name}</td>
            <td>${kh.dateOfBirth}</td>
            <td>${kh.address}</td>
        <td><img src = "${kh.image}" width="100" height="100"></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>

<%-- 
    Document   : index
    Created on : Sep 25, 2017, 10:21:47 AM
    Author     : dimmaryanto93
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Daftar Kelas</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode</th>
                    <th>Nama</th>
                    <th>Angkatan</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listKelas}" var="k" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td>${k.id}</td>
                        <td>${k.nama}</td>
                        <td>${k.angkatan}</td>
                        <td>
                            <a href="${pageContext.servletContext.contextPath}/kelas/update?id=${k.id}">Update</a>
                            &nbsp;
                            <form action="${pageContext.servletContext.contextPath}/kelas/delete" method="post">
                                <input type="hidden" name="kelasId" value="${k.id}">
                                <button type="submit">Hapus</button>
                            </form>
                            <a href="${pageContext.servletContext.contextPath}/kelas/delete?kelasId=${k.id}">Hapus link</a>
                        </td>
                    </tr>                    
                </c:forEach>
            </tbody>
        </table>


    </body>
</html>

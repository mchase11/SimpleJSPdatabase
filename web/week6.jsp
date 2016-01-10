<!--
AUTHOR: MADISON CHASE
-->

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body bgcolor='white'>
   <H3> Giant Breeds </H3>
   <table>
   <%
        Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
        Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/giantdogs");
        Statement statement = connection.createStatement();
        String sql = ("SELECT * FROM giantdogs");
        ResultSet result = statement.executeQuery(sql);
        //Start of loop//
        while (result.next()) {
    %>
   
    <tr>
        <td>
        <%=result.getString("id")%>
        </td>
        <td>
        <%=result.getString("breed")%>
        </td>
    </tr>
    <% 
        }
        statement.close();
        connection.close();
    %>
</table>
</body>
</html>

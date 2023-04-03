
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Page</title>
    </head>
    <body>
        <%
            String name = (String)session.getAttribute("name");
        %>
        <h1>Start</h1>
        <p>
            Hi <%=name%>. Please select below the numeracy test you want to take.
        </p>
        <form action="TestOptionServlet.do" method="POST">
            <table>
                <tr>
                    <td><label for="arithmetic">Test Choice:</label></td>
                    <td><select name="arithmetic" id="arithmetic">
                        <option value="Addition">Addition</option>
                        <option value="Subtraction">Subtraction</option>
                        <option value="Division">Division</option>
                        <option value="Multiplication">Multiplication</option> </td>
                    </select>
                </tr>
                <tr>
                    <td> </td>
                    <td><input type="submit" value="SUBMIT" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>

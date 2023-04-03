
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question Page</title>
    </head>
    <body>
        <%
            String question = (String)session.getAttribute("question");
            Integer count = (Integer)session.getAttribute("count");
        %>
        <h1>Question</h1>
        <p>
            Please see the question below and provide an answer.
        </p>
        <form action="AnswerServlet.do" method="POST">
            <table>
                <tr>
                    <td>Question <%=count%>: </td>
                    <td><%=question%></td>
                </tr>
                <tr>
                    <td>Answer: </td>
                    <td><input type="text" name="answer"/></td>
                </tr>
                <tr>
                    <td> </td>
                    <td><input type="submit" value="SUBMIT"/></td>
                </tr>
            </table>
            
        </form> 

    </body>
</html>

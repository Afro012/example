
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <%
            Integer answer = (Integer)session.getAttribute("answer");
            Integer corrAnswer = (Integer)session.getAttribute("corrAnswer");
            String outcome = (String)session.getAttribute("outcome");
            String question = (String)session.getAttribute("question");
        %>
        <h1>Outcome</h1>
        <p>
            Please see outcome below:
        </p>
        <table>
            <tr>
                <td>Question: <%=question%></td>
            </tr>
            <tr>
                <td>Your answer: <%=answer%></td>
            </tr>
            <tr>
                <td>Correct answer: <%=corrAnswer%> </td>
            </tr>
            <tr>
                <td>Outcome: <%=outcome%> </td>
            </tr>
        </table>
        <p>
            Please click <a href="summary.jsp">here</a> to get your summary of test.
        </p>

    </body>
</html>

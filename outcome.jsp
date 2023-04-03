
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
            
            String url = "";
            if(question.contains("*")){
                url = "MultiplicationServlet.do";
            }else if(question.contains("+")){
                url = "AdditionServlet.do";
            }else if(question.contains("-")){
                url = "SubtractionServlet.do";
            }else if(question.contains("/")){
                url = "DivisionServlet.do";
            }
            
            Integer mark = (Integer)session.getAttribute("marks");
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
            Please click the button below to get the next question.   
        </p>
        <form action=<%=url%> method="POST">
            <td><input type="submit" value="Next"/></td>
        </form>
    </body>
</html>

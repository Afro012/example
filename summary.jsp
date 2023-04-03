
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary Page</title>
    </head>
    <body>
        <%
            String name = (String)session.getAttribute("name");
            String arithmetic = (String)session.getAttribute("arithmetic");
            Integer marks = (Integer)session.getAttribute("marks");
            
            String finalOutcome = "";
            if(marks >= 3.5){
                finalOutcome = "You have qualified for the interviews stage.";
            }else{
                finalOutcome = "You did not qualify for the interviews stage.";
            }
            double percMark = (marks * 100)/5;
        %>
        <h1>Summary</h1>
        <table>
            <tr>
                <td>Candidate Name: <%=name%></td>
            </tr>
            <tr>
                <td>Test chosen: <%=arithmetic%> Competency Test.</td>
            </tr>
            <tr>
                <td>Total Number of questions asked: 5</td>
            </tr>
            <tr>
                <td>Total Number of correct answers: <%=marks%></td>
            </tr>
            <tr>
                <td>Total Number of wrong answers: <%=5 - marks%></td>
            </tr>
            <tr>
                <td>Percentage mark obtained: <%=percMark%>%</td>
            </tr>
            <tr>
                <td>Final Outcome: <%=finalOutcome%></td>
            </tr>
        </table>
        <p>
            Please click <a href="EndSessionServlet.do">here</a> to end session.   
        </p>
    </body>
</html>

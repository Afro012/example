
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Confirmation Page</title>
    </head>
    <body>
        <%
            String name = (String)session.getAttribute("name");
            String arithmetic = (String)request.getParameter("arithmetic");
            String url = " ";
            if(arithmetic.contains("Addition")){
                url = "AdditionServlet.do";
            }else if(arithmetic.contains("Subtraction")){
                url = "SubtractionServlet.do";
            }else if(arithmetic.contains("Division")){
                url = "DivisionServlet.do";
            }else if(arithmetic.contains("Multiplication")){
                url = "MultiplicationServlet.do";
            }
        %>
        
        <h1>Test Confirmation</h1>
        <p>
            Hi <%=name%> You have chosen the <%=arithmetic%> competency test. We have 5 questions for you please click the button below to start the test.
        </p>
        <form action=<%=url%> method="POST">
            <td></td>
            <td><input type="submit" value="START"/></td>
        </form>
        
    </body>
</html>

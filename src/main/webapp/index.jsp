<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            JSTL Experiments
        </title>
        <link href="stylesheet.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>
            JSTL Experiments
        </h1>
        <%
            //Creating a simple array to use later
            String[] names = {"Chris", "Steve", "Jeff", "Tobi", "Gary",
                "Joe", "Rob"};
            pageContext.setAttribute("names", names);      
        %> 
        <p>
            Simple example of using the forEach tag. This tag iterates over an
            array created in this JSP servlet. 
            <br>
            The fn:length() function was used to get the 
            length of the array which would be used to determine when the 
            foreach loop should end (After last element of array).
            <br>
            The fn:toUpperCase() function was used to convert all names in the
            array to uppercase.
            
        </p>
        <ul>
            <c:forEach var="i" begin="0" end="${fn:length(names)-1}">
                <li>
                    ${fn:toUpperCase(names[i])}
                </li>
            </c:forEach>
        </ul>
        <br>
        <br>
        <p>
            Simple demonstration of if logic using JSTL
        </p>
        <br>
        <form id="theForm" name="theForm" method="POST" action="reply">
            <label for="rate">
                On a scale of 1-10, how are you feeling?
            </label>
            <input type="text" id="rate" name="rate" value="" max="10" min="1">
            <br>
            <br>
            <input type="submit" id="submit" name="submit" value="Submit">
        </form>
        <br>
        <p>
            <c:choose>
                <c:when test="${rate <= 4}">
                   Thats too bad :( Hope you feel better
                </c:when>
                <c:when test="${rate > 4 && rate <= 7}">
                    Thats good
                </c:when>
                    <c:when test="${rate > 7}">
                    Great to hear!!!!
                </c:when>
                <c:otherwise>
                </c:otherwise>
            </c:choose>
        </p>
        <br
    </body>
</html>

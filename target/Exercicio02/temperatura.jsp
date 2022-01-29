<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
    <head>
        <fmt:bundle basename="temperature">
            <title> <fmt:message key="title"/> </title>
        </fmt:bundle>
        <style> table {
            border-collapse: collapse;  width: 30%;
        }
        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        tr:nth-child(even) {
            background-color: #dddddd;
        }
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th> Celsius </th>
                <th> Fahrenheit </th>
            </tr>

            <% String minValue = request.getParameter("min");
                int min = (minValue == null || minValue.isEmpty()) ? -100 : Integer.parseInt(minValue);

                String maxValue = request.getParameter("max");
                int max = (maxValue == null || maxValue.isEmpty()) ? 100 : Integer.parseInt(maxValue);

                String incValue = request.getParameter("inc");
                int inc = (maxValue == null || incValue.isEmpty()) ? 5 : Integer.parseInt(incValue);

                for (int celsius = min; celsius <= max; celsius += inc)
                {
                    double fahr = 1.8 * celsius + 32;
            %>
            <tr>
                <td> <%= celsius %> </td>
                <td> <%= fahr %> </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>

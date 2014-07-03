<%--
  Created by IntelliJ IDEA.
  User: stanislav
  Date: 7/1/14
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <script src="functionality.js"></script>
    <title>Calculator</title>
    <link type="text/css" rel="stylesheet" href="styleSheet">
</head>

<body>
<%
    String result = "";
    if (request.getAttribute("result") != null) {
        result = (String) request.getAttribute("result");
    }
%>
<form method="post" action="/CalculatorController">
    <table align="center">
        <tr>
            <td colspan="6"><input type="text" name="display" id="display" value="<%=result %>" readonly></td>
        </tr>
        <tr>
            <td>
                <button type="button" onclick="onCleanPressed()" name="clean">C</button>
            </td>
            <td>
                <button type="button" onclick="onCleanLastPressed()"><-</button>
            </td>
            <td>
                <button type="button" onclick="onMathFunctionPressed('/')">/</button>
            </td>
            <td>
                <button type="button" onclick="onMathFunctionPressed('*')">x</button>
            </td>
        </tr>
        <tr>
            <td>
                <button type="button" onclick="onDigitPressed(7)">7</button>
            </td>
            <td>
                <button type="button" onclick="onDigitPressed(8)">8</button>
            </td>
            <td>
                <button type="button" onclick="onDigitPressed(9)">9</button>
            </td>
            <td>
                <button type="button" onclick="onMathFunctionPressed('-')">-</button>
            </td>
        </tr>
        <tr>
            <td>
                <button type="button" onclick="onDigitPressed(4)">4</button>
            </td>
            <td>
                <button type="button" onclick="onDigitPressed(5)">5</button>
            </td>
            <td>
                <button type="button" onclick="onDigitPressed(6)">6</button>
            </td>
            <td>
                <button type="button" onclick="onMathFunctionPressed('+')">+</button>
            </td>
        </tr>
        <tr>
            <td>
                <button type="button" onclick="onDigitPressed(1)">1</button>
            </td>
            <td>
                <button type="button" onclick="onDigitPressed(2)">2</button>
            </td>
            <td>
                <button type="button" onclick="onDigitPressed(3)">3</button>
            </td>

            <td rowspan="2">
                <button type="submit" name="equals">=</button>
            </td>

        </tr>
        <tr>
            <td colspan="2">
                <button type="button" onclick="onDigitPressed(0)">0</button>
            </td>

            <td>
                <button type="button" onclick="onDecimalPressed()">,</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
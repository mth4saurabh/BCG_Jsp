<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="javax.xml.stream.events.StartDocument"%>
<%@page language="java"%>
<%@ page import="java.io.*"%>

<%

    String number = request.getParameter("number");
    String sequence = number;
    int lim = Integer.parseInt(number);
    int no[] = new int[100];
    int sum = 0;
    String fName = application.getRealPath("/") + "number.csv";
    String thisLine;
    int count = 0;
    FileInputStream fis = new FileInputStream(fName);
    DataInputStream myInput = new DataInputStream(fis);
    int i = 0;
    while (i < lim) {
        thisLine = myInput.readLine();
        String strar[] = thisLine.split(",");
        for (int j = 0; j < strar.length; j++) {
            if (i != 0) {

                sequence = strar[j];
                no[j] = Integer.parseInt(sequence);
                sum = sum + no[j];
            } else {

                sequence = strar[j];
                no[j] = Integer.parseInt(sequence);
                sum = no[j];

            }
        }


        i++;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator !</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>

    <body>

        <table border="0">
            <thead>

                <tr>
                    <th>Enter any number from 1 to 100</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>You will get sum of the all number till number you entered!</td>
                </tr>
                <tr>
                    <td><strong>Sum: </strong>
                    </td>
                    <td><%=sum%> </td>

                </tr>
                <tr>
                    <td><form action="response.jsp">

                            <strong>Enter an number:</strong>
                            <input type="int" name="number" value="" />
                            <input type="submit" value="Submit" name="submit" />
                            <option></option>

                        </form>
                    </td>
                </tr>                    
            </tbody>
        </table>
                   
    </body>
</html>


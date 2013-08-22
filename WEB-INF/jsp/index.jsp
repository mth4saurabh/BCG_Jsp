<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

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
                    <td>You will get some of the all number till number you entered !</td>
                </tr>
                <tr>
                    <td><form action=" response.jsp ">
                            <strong>Select a number:</strong>
                            <input type="int" name="number" value="" />
        <input type="submit" value="submit" name="submit" />
                            <option></option>
                            
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
       


    </body>
</html>

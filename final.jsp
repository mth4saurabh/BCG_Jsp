<%@page import="javax.xml.stream.events.StartDocument"%>
<%@ page language="java" %>
<%@ page import="java.io.*"%>
<%
    String number = request.getParameter("number 1");
    String sequence = number ;
int lim = Integer.parseInt(number);
 int no[] = new int [100];
 int sum = 0 ;      
    String fName = "C:\\Users\\Saurabh\\Desktop\\number.csv";
   String thisLine; 
  int count=0; 
  FileInputStream fis = new FileInputStream(fName);
  DataInputStream myInput = new DataInputStream(fis);
  int i=0; 
while ( i < lim )
{
 thisLine = myInput.readLine()   ;
String strar[] = thisLine.split(",");
for(int j=0;j<strar.length;j++)
{
if(i!=0)
{
   
sequence =strar[j] ;
no[j] = Integer.parseInt(sequence);
sum = sum + no[j];
}
else
{
    
sequence =strar[j] ;
no[j] = Integer.parseInt(sequence);
sum = no[j] ;

}
} 


i++;
} 
 

%>

<html>

    <table border="0">
        <thead>
            <tr>

            </tr>
        <link rel="stylesheet" type="text/css" href="style.css">
        </thead>
        <tbody>
            <tr>
                <td><strong>Sum: </strong>
                </td>
                <td><%=sum%></td>
            </tr>
           
           
           
        </tbody>
    </table>
</html>
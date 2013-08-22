<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page import="org.jfree.data.category.CategoryDataset"%>
<%@page import="org.jfree.data.xy.XYDataset"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="java.io.*" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.ChartUtilities"%>
<%
String number = request.getParameter("number");
int lim = Integer.parseInt(number);
 //int lim = 10;
 try
 {
     
 File image = File.createTempFile("image", "tmp");
  //final XYDataset dataset=null;
 // Assume that we have the chart
 XYSeries series = new XYSeries("XYGraph");
 for(int i=0;i<10;i++)
{
series.add(i,(lim-i));
 }
// Add the series to your data set
XYSeriesCollection dataset = new XYSeriesCollection();
dataset.addSeries(series);
 JFreeChart chart = ChartFactory.createXYLineChart( 
           "Plot of function",      // chart title
            "X",                      // x axis label
            "Y",                      // y axis label
            dataset,                 // data
            PlotOrientation.VERTICAL,
            true,                     // include legend
            true,                     // tooltips
            false );
 ChartUtilities.saveChartAsPNG(image, chart, 500, 500);
 FileInputStream fileInStream = new FileInputStream(image);
OutputStream outStream = response.getOutputStream();   
 long fileLength;
 byte[] byteStream;
 fileLength = image.length();
 byteStream = new byte[(int)fileLength];
 fileInStream.read(byteStream, 0, (int)fileLength);
  response.setContentType("image/png");
 
 // response.setContentLength((int)fileLength);
 //response.setHeader("Cache-Control",
// "no-store,no-cache, must-revalidate, post-check=0, pre-check=0");
// response.setHeader("Pragma", "no-cache");
 fileInStream.close();
 outStream.write(byteStream); 
 outStream.flush();
 outStream.close(); 
 }
 catch (IOException e)
 {
 System.err.println("Problem occurred creating chart.");
 }
%>
      
                
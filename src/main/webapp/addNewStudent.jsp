<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<% 
String faculty = request.getParameter("faculty");
String department = request.getParameter("department");
String rollNo = request.getParameter("rollNo");
String name = request.getParameter("name");
String fatherName = request.getParameter("fatherName");
String gender = request.getParameter("gender");

try{
	Connection connection = Project.ConnectionProvider.getCon();
	Statement st = connection.createStatement();
	st.executeUpdate("insert into student values('"+faculty+"','"+department+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
	
}catch(Exception e){
	out.println(e);
}
%>
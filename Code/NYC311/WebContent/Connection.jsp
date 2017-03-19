<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css"></link>
</head>
<body>
	<div id="result">
		<%
		String zipcode = request.getParameter("zipcode");
		String borough = request.getParameter("borough");
			Connection conn = null;
		ResultSet rs=null;
			try {
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "Vishal");
				
				 PreparedStatement psmt= conn.prepareStatement("select distinct n.complaint_type,s.severity from nyc_complaints_2014 n, complaint_severity s "
						 +"where s.complaint_type=n.complaint_type and n.incident_zip like ? and borough like ? and to_char(to_date(n.created_date,'MM/DD/YYYY HH:MI:SS AM'),'MM')= to_char(sysdate,'MM')" 
						 +"order by s.severity desc");
				psmt.setString(2, borough.toUpperCase());
				psmt.setString(1, zipcode.toUpperCase());
				rs= psmt.executeQuery();
				ResultSetMetaData rsm= rs.getMetaData();
				 
				/* while(rs.next())
				{
					for(int i=1;i<=rsm.getColumnCount();i++)
					{
						out.print(rs.getString(i)+" ");
					}
					out.println("<br>");
				}  */

			}

			catch (Exception e) {
				out.println("Exception : " + e.getMessage() + "");
			}
		%>
		<div id="content">
			<div id="tab-header">
			<table>
			<tr>
			<td>Zip:</td><td><%=zipcode%></td>
			</tr>
			<tr>
			<td>Borough:</td><td><%=borough%></td>
			</tr>
			</table>
			</div>
			<div id="tab-body">
				<table>
					<thead>
						<tr>
							<th>Complaint Type</th>
							<th>Severity</th>
						</tr>
					</thead>
					<tbody>
					<%	while(rs.next()) {%>
						<tr>
							<td><%=rs.getString(1)%></td>
							<td>
								<% if(rs.getString(2).equals("3"))
								{	
									out.print("High");
								}
								else if(rs.getString(2).equals("2"))
								{
									out.print("Medium");
								}
								else
								{
									out.print("Low");
								}
								%>
							</td>	
						</tr>
					<%}%>
					</tbody>
				</table>
			</div>
			<div id="desc-content"></div>
		</div>
	</div>
</body>
</html>
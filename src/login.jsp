<html>
<body>
<%@page import="java.sql.*"%>
	<%!String us,ps;%>
	<%us=request.getParameter("t1");
	      ps=request.getParameter("t2");
		try
        		{
           			 Class.forName("oracle.jdbc.driver.OracleDriver");
            			Connection con  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
            			Statement st=con.createStatement();
            			ResultSet rs=st.executeQuery("select * from login1");
            			while(rs.next())
            			{
               				if(us.equals(rs.getString(1))&&ps.equals(rs.getString(2)))
                        			{
                            				response.sendRedirect("./sucess.html");
                        			}
            			}
			response.sendRedirect("./fail.html");
       		}
        		catch(Exception e)
       	 	{
            			System.out.println(e);
        		}
	%>
</body>
</html>
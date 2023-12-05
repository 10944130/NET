<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	
		try {
				String url="jdbc:mysql://localhost/?serverTimezone=UTC";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE `mmm`";
				con.createStatement().execute(sql);
				request.setCharacterEncoding("UTF-8");
				String bid = request.getParameter("aid");
				String bname = request.getParameter("aname");
				String bprice = request.getParameter("aprice");
				String badd = request.getParameter("aadd");
				String buserid = request.getParameter("auserid");
				String btotal = request.getParameter("atotal");
				String btime = request.getParameter("atime");
				String bdate = request.getParameter("adate");
				
				boolean no= con.createStatement().execute(sql); 
				
				
				
					
					
					//sql="SELECT MAX(id1) FROM `member` ";
					//ResultSet rs=con.createStatement().executeQuery(sql);
					//rs.next();
					
					//int a=rs.getInt(1)+1;  
					
				try{
				 sql = "INSERT `order`(`id`,`name`, `price` , `add`, `userid`, `total price`, `time`, `date`)"+" VALUES('"+bid+"','"+bname+"','"+bprice+"','"+badd+"','"+buserid+"','"+btotal+"','"+bdate+"','"+btime+"')";
				con.createStatement().execute(sql);
					out.print("<script>alert('送出訂單');window.location='allproduct.jsp'</script>");
				con.close();//結束資料庫連結
				}
				catch(SQLException sExec){
					out.print("<script>alert('再試一次');window.location='member.jsp'</script>");
					out.print(sql);
					//out.print(rs.getInt(1));
							con.close();//結束資料庫連結

				}
			
				
				
		}
		
		
		
		catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());

    }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
%>

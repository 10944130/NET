<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="config.jsp"%>
<html>
    <head>
        <title>JSP SELECT</title>
    </head>
    <body>
       <h3>會員資料管理</h3>
<%  
	    sql = "SELECT * FROM mmm.order";
        ResultSet rs =  con.createStatement().executeQuery(sql);
		
		while(rs.next())
		{%>
		<ul>
            <li>訂單鯿號: <%=rs.getString(1)%></li>
            <li>使用者帳號: <%=rs.getString(2)%></li>
		    <li>商品id: <%=rs.getString(3)%></li>
		    <li>商品名稱: <%=rs.getString(4)%></li>
			<li>商品價錢: <%=rs.getString(5)%></li>
            <li>購買數量: <%=rs.getString(6)%></li>
		    <li>手術日期: <%=rs.getString(7)%></li>
		    <li>手術時間: <%=rs.getString(8)%></li>
			<li>總金額: <%=rs.getString(9)%></li>
		<!--<form  action="delorder.jsp" method="post">
				<input type="hidden" name="userid" value="<%=rs.getString(1)%>">
			<button type="submit">完成訂單</button></form>
			</form>	-->
		<hr>
		</ul>
		<%}%>
	    <ul>
			<input type="button" value="回到後台" onclick="location.href='backstage.jsp'">
		</ul>
    </body>
</html>
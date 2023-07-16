<%@ include file = "connect.jsp" %>

<%
try{
 java.util.ArrayList<String> email=new java.util.ArrayList<String>();
String owner_email=(String)session.getAttribute("email");
PreparedStatement pst = con.prepareStatement("select * from Renter_DB where OwnerEmail = ?");
pst.setString(1,owner_email);
ResultSet rs = pst.executeQuery();
while(rs.next()){
    email.add(rs.getString(6))
}
session.setAttribute("email_list",email);
response.sendRedirect("send_email1.jsp");
}
catch(Exception e){
    out.println(e);
}
con.close();
%>
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author alex
 */
public class Insert extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
PrintWriter out=response.getWriter();    
String name =request.getParameter("name");
String phone= request.getParameter("phone");

Connection conn=null;
try{
    Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException e){
out.println(e.getMessage());
}
try{
    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/contacts", "root", "");
    PreparedStatement ps=conn.prepareStatement("insert into contact(Name, Phone) values('"+name+"','"+phone+"')");
    int i=ps.executeUpdate();
    
    
    String msg=" ";
          if(i!=0){  
            msg="warmatebit chaisva";
            out.println(msg);  

          }  
          else{  
            msg="ar chaisva";
            out.println(msg);
           }  
          ps.close();
        }  
catch(Exception e){
    out.println(e.getMessage());
}

    }
}

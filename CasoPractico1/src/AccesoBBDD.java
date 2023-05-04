import java.sql.*;

public class AccesoBBDD {
     public static void main(String[] args) throws SQLException {
         String url = "jdbc:mysql://192.168.209.160:3306/mysqldb";
         String username = "equipo3";
         String password = "equipo3";
         Connection conn = DriverManager.getConnection(url, username, password);

         Statement stmt = conn.createStatement();

         ResultSet rs = stmt.executeQuery("SELECT * from alumnos");

         while (rs.next()) {
             System.out.println(rs.getString(1));
             System.out.println(rs.getInt(2));
         }
         stmt.close();
         conn.close();
     }
}

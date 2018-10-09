package globant.topic4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Emiliano
 */
public class ConnectionToDB {
    private Connection conn;
    
         public void Connect() {
            try {
              Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
              conn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=high_school" /*[Emi on dbo]*/, "Emi", "34908814");
            }
            catch(Exception e) {
              System.out.println("Error when connecting to database. Cause: " + e.getMessage());
            }
         }
         
         public void disconnect() {
            try {
              if(conn != null) {
                conn.close();
              }
            }
            catch(Exception e) {
              System.out.println("Error al cerrar la conexión. Causa: " + e.getMessage());
            }
         }
         
         public ArrayList getTeacher(int teacherId) {
            ArrayList list = new ArrayList(); 
            try {
              Connect();
              Statement st = conn.createStatement();
              String sql = "select t.last_name+', '+t.first_name as 'Teacher: ', cd.day_course +' '+convert(varchar(20),cdh.begin_hour) +' - '+ convert(varchar(20),cdh.end_hour) +': '+ c.name as 'Schedule: '\n" +
                           "from Course c inner join Teacher t on c.assigned_teacher = t.teacher_id\n" +
                           "inner join Course_Day_hours cdh on c.id_course = cdh.id_course\n" +
                           " inner join Course_day cd on cdh.id_day = cd.id_day \n" +
                           "where c.assigned_teacher = "+ teacherId+"\n" +
                           "group by  t.last_name, t.first_name, cd.day_course, cdh.begin_hour, cdh.end_hour, c.name,cd.id_day\n" +
                           "order by cd.id_day;";
              ResultSet rs = st.executeQuery(sql);
              while(rs.next()) {
                String teacher = rs.getString(1);
                String course = rs.getString(2);
                list.add(teacher+" "+course);
              }
              rs.close();
              st.close();
              return list;
            }
            catch(Exception e) {
              System.out.println("Error getting data from database. Cause: " + e.getMessage());
            }
            finally {
              disconnect();
            }
            return list;
        }
}

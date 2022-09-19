
package Project;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class ConnectionP {
    static Connection con;
    public static Connection createDbConnection()
    {
        try{
        String dbpath = "jdbc:mysql://localhost:3308/bms"; 
        con= DriverManager.getConnection(dbpath, "root", "");
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e.getMessage());
        }
        return con;
    }
}

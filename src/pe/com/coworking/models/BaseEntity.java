package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.SQLException;

public class BaseEntity {

    private Connection connection;
    private static String BASE_QUERY = "SELECT * FROM ";
    private String tablename;

    public BaseEntity(Connection connection) {
        this.setConnection(connection);
    }

    public BaseEntity(Connection connection, String tablename) {
        this.setConnection(connection);
        this.setTablename(tablename);
    }

    public BaseEntity() {
    }


    public Connection getConnection() {
        return connection;
    }



    public BaseEntity setConnection(Connection connection) {
        this.connection = connection;
        return this;
    }

    public String getTablename() {
        return tablename;
    }

    public BaseEntity setTablename(String tablename) {
        this.tablename = tablename;
        return this;
    }

    public String getDefaultQuery(){
        return BASE_QUERY + getTablename();
    }

    public boolean change(String sql){
        try{
            int result = getConnection().createStatement().executeUpdate(sql);
            return result > 0;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
}
package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Country {
    private int id;
    private String name;


    public int getId() {
        return id;
    }

    public String getIdAsString(){
        return String.valueOf(getId());
    }

    public Country setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public String getNameAsValue(){
        return "'" + getName() + "'";
    }

    public Country setName(String name) {
        this.name = name;
        return this;
    }

    public static Country build(ResultSet resultSet){
        try{
            return (new Country())
                    .setId(resultSet.getInt("id"))
                    .setName(resultSet.getString("country_name"));

        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

}

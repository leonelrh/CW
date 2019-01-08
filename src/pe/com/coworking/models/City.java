package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class City {
    private int id;
    private String name;
    private Country country;


    public int getId() {
        return id;
    }

    public String getIdAsString(){return String.valueOf(getId());}

    public City setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public String getNameAsValue(){return "'" + getName() + "'";}

    public City setName(String name) {
        this.name = name;
        return this;
    }

    public Country getCountry() {
        return country;
    }

    public City setCountry(Country country) {
        this.country = country;
        return this;
    }

    public static City build(ResultSet rs, CountryEntity countryEntity) {
        try {
            return (new City())
                    .setId(rs.getInt("id"))
                    .setName(rs.getString("city_name"))
                    .setCountry(countryEntity.findById(rs.getInt("countries_id")));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}

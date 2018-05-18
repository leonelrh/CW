package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CityEntity extends BaseEntity{

    public CityEntity(Connection connection){
        super(connection, "cities");
    }

    public CityEntity(){super();}

    public List<City> findAll(CountryEntity countryEntity){
        return findByCriteria("",countryEntity);
    }

    List<City> findAllId(int id,CountryEntity countryEntity){
        String criteria=" countries_id = " + String.valueOf(id);
        return findByCriteria(criteria, countryEntity);
    }

    public City findById(int id, CountryEntity countryEntity){
        String criteria = " id = " + String.valueOf(id);
        return findByCriteria(criteria,countryEntity).get(0);
    }


    public List<City> findByCriteria(String criteria,CountryEntity countryEntity){
        String sql= getDefaultQuery() + (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<City> cities=new ArrayList<>();

        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            if (rs==null) return null;
            while (rs.next()) cities.add(City.build(rs,countryEntity));
            return cities;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return cities;
    }

    public boolean update(City city){
        String sql = "UPDATE cities SET " +
                "city_name = " + city.getNameAsValue() + ", " +
                " countries_id = " + city.getCountry().getIdAsString() +
                "WHERE id = " + city.getIdAsString();
        return change(sql);
    }



}

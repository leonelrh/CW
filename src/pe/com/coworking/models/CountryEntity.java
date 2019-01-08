package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CountryEntity extends BaseEntity{

    public CountryEntity(Connection connection){
        super(connection,"countries");
    }

    public CountryEntity(){super();}

    List<Country> findAll(){return findByCriteria("");}

    public Country findById(int id) {
        String criteria = " id = " +
                String.valueOf(id);
        return findByCriteria(criteria).get(0);
    }

    public Country findByName(String name) {
        String criteria = " country_name = '" +
                name + "'";
        return findByCriteria(criteria).get(0);
    }

    public List<Country> findAllOrderedByName() {
        String criteria = "true ORDER BY country_name";
        return findByCriteria(criteria);
    }


    public List<Country> findByCriteria(String criteria){
        String sql = getDefaultQuery()+
                (criteria.equalsIgnoreCase("") ? "" : " WHERE " + criteria);
        List<Country> countries=new ArrayList<>();
        try {
            ResultSet resultSet=getConnection()
                    .createStatement()
                    .executeQuery(sql);
            if(resultSet == null) return null;
            while(resultSet.next()) {
                countries.add((new Country())
                        .setId(resultSet.getInt("id"))
                        .setName(resultSet.getString("country_name")));
            }
            return countries;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public boolean update(Country country){
        String sql="UPDATE countries SET country_name = " + country.getNameAsValue() +
                " WHERE id = " + country.getIdAsString();
        return change(sql);
    }

}

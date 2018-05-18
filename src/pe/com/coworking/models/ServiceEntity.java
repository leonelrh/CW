package pe.com.coworking.models;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceEntity extends BaseEntity{


    public ServiceEntity(Connection connection) {
        super(connection, "services");
    }

    public ServiceEntity() {
        super();
    }

    List<Service> findAll(OfficeEntity officeEntity,CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity) {
        return findByCriteria("",officeEntity,categoryEntity,cityEntity,countryEntity);
    }

    public Service findById(String id,OfficeEntity officeEntity,CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity) {
        String criteria = " id = '" + id + "'";
        return findByCriteria(criteria,officeEntity,categoryEntity,cityEntity,countryEntity).get(0);
    }


    public List<Service> findAllId(String id,OfficeEntity officeEntity,CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity) {
        String criteria = " offices_id = '"+id+"'";
        return findByCriteria(criteria,officeEntity,categoryEntity,cityEntity,countryEntity);
    }



    public List<Service> findByCriteria(String criteria,OfficeEntity officeEntity,CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity) {
        String sql = getDefaultQuery() +
                (criteria.equalsIgnoreCase("") ? "" : " WHERE " + criteria) ;
        List<Service> services = new ArrayList<>();
        try {
            ResultSet resultSet = getConnection()
                    .createStatement()
                    .executeQuery(sql);
            if(resultSet == null) return null;
            while(resultSet.next()) {
                services.add(Service.build(resultSet,officeEntity,categoryEntity,cityEntity,countryEntity));
            }
            return services;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }





}
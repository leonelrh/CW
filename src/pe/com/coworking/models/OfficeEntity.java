package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ArrayList;
import java.util.List;

public class OfficeEntity extends BaseEntity{

    public OfficeEntity(Connection connection){
        super(connection,"offices");
    }

    public OfficeEntity(){super();}

    public List<Office> findAll(CategoryEntity categoryEntity,
                                CityEntity cityEntity,CountryEntity countryEntity){
        return findByCriteria("",categoryEntity,cityEntity,countryEntity);
    }

    public List<Office> findAllId(int id,CategoryEntity categoryEntity,
                           CityEntity cityEntity ,CountryEntity countryEntity){
        String criteria = " id = " + String.valueOf(id);
        return findByCriteria(criteria,categoryEntity,cityEntity,countryEntity);
    }

    public Office findById(int id,CategoryEntity categoryEntity,
                           CityEntity cityEntity ,CountryEntity countryEntity){
        String criteria = " id = " + String.valueOf(id);
        return findByCriteria(criteria,categoryEntity,cityEntity,countryEntity).get(0);
    }

    public List<Office> findByCriteria(String criteria, CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity) {
        String sql = getDefaultQuery() + (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<Office> offices = new ArrayList<>();
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            if(rs == null) return null;
            while(rs.next()) offices.add(Office.build(rs,cityEntity,categoryEntity,countryEntity));
            return offices;
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return offices;
    }


    private int getMaxId() {
        String sql = "SELECT MAX(id) AS id FROM offices";
        try {
            ResultSet resultSet = getConnection()
                    .createStatement()
                    .executeQuery(sql);
            return resultSet.next() ?
                    resultSet.getInt("id") : 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public boolean add(Office office){
        int id = getMaxId()+ 1;
        String sql="INSERT INTO offices(id,titulo,capacity,address,price,photo,state,phone,categories_id,cities_id,descripcion) VALUES (" +
                id + ", " +
                office.getTitleAsValue()+ ", " +
                office.getCapacityAsString()+", "+
                office.getAddressAsValue()+", " +
                office.getPriceAsString()+", " +
                office.getPhotoAsValue()+", " +
                office.getStateAsValue()+", " +
                office.getPhoneAsValue()+", " +
                office.getCategory().getIdAsString()+ ", " +
                office.getCity().getIdAsString()+ ", " +
                office.getDescriptionAsValue()+ ")";
        return change(sql);
    }

    public boolean update(Office office){
        String sql= " UPDATE offices SET " +
                " id = " + office.getIdAsString()+", " +
                " titulo = " + office.getTitleAsValue()+", " +
                " capacity = " + office.getCapacityAsString()+", "+
                " address = " + office.getAddressAsValue()+", "+
                " price = " + office.getPriceAsString()+", "+
                " photo = " + office.getPhotoAsValue() +", " +
                " state = " + office.getStateAsValue() +", " +
                " phone = " + office.getPhoneAsValue() + ", "+
             /*   " categories_id ="+office.getCategory().getIdAsString()+", "+
                " cities_id = "+office.getCity().getIdAsString()+", "+*/
                " descripcion = " + office.getDescriptionAsValue() +
                " WHERE id = " + office.getIdAsString();
        return change(sql);
    }

    public boolean delete(Office office){
        String sql="DELETE FROM offices WHERE id = " +
                office.getIdAsString();
        return change(sql);
    }


}

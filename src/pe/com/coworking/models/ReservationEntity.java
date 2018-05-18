package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReservationEntity extends BaseEntity {

    public ReservationEntity(Connection connection){super(connection,"reservations");}

    public ReservationEntity(){ super();}


    public List<Reservation> findAllById(String id,UserEntity userEntity,OfficeEntity officeEntity,
                                         CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity) {
        String criteria = " usuarios_id = '"+id+"'";
        return findByCriteria(criteria,userEntity,officeEntity,categoryEntity,cityEntity,countryEntity);
    }



    public List<Reservation> findAll(UserEntity userEntity,OfficeEntity officeEntity,
                                     CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity){
        return findByCriteria("",userEntity,officeEntity,categoryEntity,cityEntity,countryEntity);
    }

    public Reservation findById(String id,UserEntity userEntity,OfficeEntity officeEntity,
                                CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity){
        String criteria = "id = " + "'" + id + "'";
        return findByCriteria(criteria,userEntity,officeEntity,categoryEntity,cityEntity,countryEntity).get(0);
    }



    public List<Reservation> findByCriteria(String criteria,UserEntity userEntity,
                                            OfficeEntity officeEntity,
                                            CategoryEntity categoryEntity,
                                            CityEntity cityEntity,CountryEntity countryEntity){
        String sql=getDefaultQuery()+(criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<Reservation> reservations=new ArrayList<>();

        try{
            ResultSet resultSet=getConnection().createStatement().executeQuery(sql);
            if(resultSet==null) return null;
            while (resultSet.next()){
                reservations.add(Reservation.build(resultSet,userEntity,officeEntity,categoryEntity,cityEntity,countryEntity));
            }
            return reservations;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public  boolean add(Reservation reservation) {
        return change("INSERT INTO reservations(id,start_date,state,end_date,hours,paid,usuarios_id,offices_id)" +
                "VALUES (" + reservation.getIdAsString() + ", " +
                reservation.getStarDateAsValue() + ", " + reservation.getStateAsValue() + ", " +
                reservation.getEndDateAsValue() + ", " + reservation.getHoursAsString() + ", " + reservation.getPaidAsString() + ", " +
                reservation.getUser().getIdAsString()+ ", " +reservation.getOffice().getIdAsString()+
                " )" );
    }


    public boolean delete(Reservation reservation){

        return change("DELETE FROM reservations WHERE id = " + reservation.getIdAsString());
    }

    public  boolean update(Reservation reservation){
        return change("UPDATE reservations SET start_date = " + reservation.getStarDateAsValue() +
                ", state = " + reservation.getStateAsValue() +
                ", end_date = " + reservation.getEndDate()+
                ", hours = " + reservation.getHoursAsString()+
                ", paid = "+ reservation.getPaidAsString() +
                ", usuarios_id = " + reservation.getUser().getIdAsString() +
                ", offices_id = " + reservation.getOffice().getIdAsString() +
                " WHERE id = " + reservation.getIdAsString());
    }


}

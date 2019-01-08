package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class PaymentEntity extends BaseEntity {

    public PaymentEntity(Connection connection) {
        super(connection, "payments");
    }

    public PaymentEntity() {
        super();
    }

    public List<Payment> findAll(ReservationEntity reservationEntity,
                                 UserEntity userEntity,OfficeEntity officeEntity,
                                 CategoryEntity categoryEntity,CityEntity cityEntity,
                                 CountryEntity countryEntity) {
        return findByCriteria("", reservationEntity,userEntity,officeEntity,categoryEntity,
                cityEntity,countryEntity);
    }

    public Payment findById(String id,  ReservationEntity reservationEntity,
                                UserEntity userEntity,OfficeEntity officeEntity,
                                CategoryEntity categoryEntity,CityEntity cityEntity,
                                CountryEntity countryEntity) {
        String criteria = " id = '" + id + "'";
        return findByCriteria(criteria, reservationEntity,userEntity,officeEntity,categoryEntity,
                cityEntity,countryEntity).get(0);
    }


    public List<Payment> findAllId(String id,ReservationEntity reservationEntity,
                                   UserEntity userEntity,OfficeEntity officeEntity,
                                   CategoryEntity categoryEntity,CityEntity cityEntity,
                                   CountryEntity countryEntity) {
        String criteria = " organizer_id = '"+id+"'";
        return findByCriteria(criteria,reservationEntity,userEntity,officeEntity,categoryEntity,
                cityEntity,countryEntity);
    }



    public List<Payment> findByCriteria(String criteria, ReservationEntity reservationEntity,
                                        UserEntity userEntity,OfficeEntity officeEntity,
                                        CategoryEntity categoryEntity,CityEntity cityEntity,
                                        CountryEntity countryEntity) {
        String sql = getDefaultQuery() + (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<Payment> payments = new ArrayList<>();
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            if(rs == null) return null;
            while(rs.next()) payments.add(Payment.build(rs,reservationEntity,userEntity,officeEntity,categoryEntity,
                    cityEntity,countryEntity));
            return payments;
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return payments;
    }


    public boolean add(Payment payment) {
        String sql = "INSERT payments (id,amount, payment_date, last_update, card_number, expired_date,cvc,reservations_id) " +
                "VALUES(" + payment.getId() + ", " +
                payment.getAmount() + ", " +
                payment.getPaymentDate() + ", " +
                payment.getLastUpdate()+ ", " +
                payment.getCardNumber()+ ", " +
                payment.getExpiredDate()+", " +
                payment.getCvc()+", " +
                payment.getReservation().getIdAsString()+ ")";
        return change(sql);
    }

    public boolean update(Payment payment) {
        String sql = "UPDATE payments SET amount = " + payment.getAmount() +
                ", payment_date = "+ payment.getPaymentDate() +
                ", last_update = "+ payment.getLastUpdate() +
                ", card_number = "+ payment.getCardNumber()+
                ", expired_date = "+ payment.getExpiredDate()+
                ", cvc = "+ payment.getCvc() +
                ", reservations_id = " + payment.getReservation().getIdAsString() +
                " WHERE id = " + payment.getId();
        return change(sql);
    }

    public boolean delete(Payment payment) {
        String sql = "DELETE FROM payments WHERE id = " +
                payment.getId();
        return change(sql);
    }




}

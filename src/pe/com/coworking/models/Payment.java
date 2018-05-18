package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Payment {

    private int id;
    private float amount;
    private Date paymentDate;
    private String lastUpdate;
    private int cardNumber;
    private Date expiredDate;
    private String cvc;
    private Reservation reservation;

    public Payment() {
    }

    public Payment(int id, float amount, Date paymentDate, String lastUpdate, int cardNumber, Date expiredDate, String cvc, Reservation reservation) {
        this.id = id;
        this.amount = amount;
        this.paymentDate = paymentDate;
        this.lastUpdate = lastUpdate;
        this.cardNumber = cardNumber;
        this.expiredDate = expiredDate;
        this.cvc = cvc;
        this.setReservation(reservation);
    }

    public int getId() {
        return id;
    }

    public Payment setId(int id) {
        this.id = id;
        return this;
    }

    public float getAmount() {
        return amount;
    }

    public Payment setAmount(float amount) {
        this.amount = amount;
        return this;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public Payment setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
        return this;
    }

    public String getLastUpdate() {
        return lastUpdate;
    }

    public Payment setLastUpdate(String lastUpdate) {
        this.lastUpdate = lastUpdate;
        return this;
    }

    public int getCardNumber() {
        return cardNumber;
    }

    public Payment setCardNumber(int cardNumber) {
        this.cardNumber = cardNumber;
        return this;
    }

    public Date getExpiredDate() {
        return expiredDate;
    }

    public Payment setExpiredDate(Date expiredDate) {
        this.expiredDate = expiredDate;
        return this;
    }

    public String getCvc() {
        return cvc;
    }

    public Payment setCvc(String cvc) {
        this.cvc = cvc;
        return this;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public Payment setReservation(Reservation reservation) {
        this.reservation = reservation;
        return this;
    }


    public static Payment build(ResultSet rs, ReservationEntity reservationEntity,UserEntity userEntity,
                                OfficeEntity officeEntity,CategoryEntity categoryEntity,CityEntity cityEntity,
                                CountryEntity countryEntity) {
        try {
            return (new Payment())
                    .setId(rs.getInt("id"))
                    .setAmount(rs.getFloat("amount"))
                    .setPaymentDate(rs.getDate("payment_date"))
                    .setLastUpdate(rs.getString("last_update"))
                    .setCardNumber(rs.getInt("card_number"))
                    .setExpiredDate(rs.getDate("expired_date"))
                    .setCvc(rs.getString("cvc"))
                    .setReservation(reservationEntity.findById(rs.getString("organizer_id"),userEntity,
                            officeEntity,categoryEntity,cityEntity,countryEntity));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}

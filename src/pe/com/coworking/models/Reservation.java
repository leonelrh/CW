package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Reservation {
    private int id;
    private Date starDate;
    private String state;
    private Date endDate;
    private float hours;
    private boolean paid;
    private User user;
    private Office office;

    public Reservation() {
    }

    public Reservation(int id, Date starDate, String state, Date endDate, float hours, boolean paid, User user, Office office) {
        this.setId(id);
        this.setStarDate(starDate);
        this.setState(state);
        this.setEndDate(endDate);
        this.setHours(hours);
        this.setPaid(paid);
        this.setUser(user);
        this.setOffice(office);
    }


    public int getId() {
        return id;
    }

    public String getIdAsString(){
        return String.valueOf(getId());
    }

    public Reservation setId(int id) {
        this.id = id;
        return this;
    }

    public Date getStarDate() {
        return starDate;
    }

    public String getStarDateAsValue(){
        return "'" + getStarDate()+ "'";
    }

    public Reservation setStarDate(Date starDate) {
        this.starDate = starDate;
        return this;
    }

    public String getState() {
        return state;
    }

    public String getStateAsValue(){
        return "'" + getState()+ "'";
    }

    public Reservation setState(String state) {
        this.state = state;
        return this;
    }

    public Date getEndDate() {
        return endDate;
    }

    public String getEndDateAsValue(){
        return "'"+ getEndDate()+ "'";
    }

    public Reservation setEndDate(Date endDate) {
        this.endDate = endDate;
        return this;
    }

    public float getHours() {
        return hours;
    }

    public String getHoursAsString(){return String.valueOf(getState());}

    public Reservation setHours(float hours) {
        this.hours = hours;
        return this;
    }

    public boolean getPaid() {
        return paid;
    }

    public String getPaidAsString(){return String.valueOf(getPaid());}

    public Reservation setPaid(boolean paid) {
        this.paid = paid;
        return this;
    }

    public User getUser() {
        return user;
    }

    public String getUserAsValue(){return "'" +
    getUser()+"'";}

    public Reservation setUser(User user) {
        this.user = user;
        return this;
    }

    public Office getOffice() {
        return office;
    }

    public String getOfficeAsValue(){return "'" + getOffice()+"'";}

    public Reservation setOffice(Office office) {
        this.office = office;
        return this;
    }

    public static Reservation build(ResultSet resultSet,UserEntity userEntity,OfficeEntity officeEntity,
                                    CategoryEntity categoryEntity,
                                    CityEntity cityEntity,
                                    CountryEntity countryEntity){

        try {
            return (new Reservation())
                    .setId(resultSet.getInt("id"))
                    .setStarDate(resultSet.getDate("start_date"))
                    .setState(resultSet.getString("state"))
                    .setEndDate(resultSet.getDate("end_date"))
                    .setHours(resultSet.getFloat("hours"))
                    .setPaid(resultSet.getBoolean("paid"))
                    .setUser(userEntity.findById(resultSet.getInt("usuarios_id")))
                    .setOffice(officeEntity.findById(resultSet.getInt("offices_id"),categoryEntity,cityEntity,countryEntity));
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }


}

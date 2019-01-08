package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;



public class User {

    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String dni;
    private String photo;
    private String phone;
    private int points;
    private String address;


    public User() {


    }

    public User(int id, String firstName, String lastName, String email, String password, String dni, String photo, String phone, int points, String address) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.dni = dni;
        this.photo = photo;
        this.phone = phone;
        this.points = points;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public String getIdAsString(){return String.valueOf(getId());}


    public User setId(int id) {
        this.id = id;
        return this;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getFirstNameAsValue(){return "'" + getFirstName() + "'";}

    public User setFirstName(String firstName) {
        this.firstName = firstName;
        return this;
    }

    public String getLastName() {
        return lastName;
    }

    public String getLastNameAsValue(){return "'" + getLastName() + "'";}

    public User setLastName(String lastName) {
        this.lastName = lastName;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public String getEmailAsValue(){return "'" + getEmail() + "'";}

    public User setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public String getPasswordAsValue(){ return "'" + getPassword() + "'";}

    public User setPassword(String password) {
        this.password = password;
        return this;
    }

    public String getDni() {
        return dni;
    }

    public String getDniAsValue(){return "'" + getDni() + "'";}

    public User setDni(String dni) {
        this.dni = dni;
        return this;
    }

    public String getPhoto() {
        return photo;
    }

    public String getPhotoAsValue(){return "'" + getPhoto() +"'";}

    public User setPhoto(String photo) {
        this.photo = photo;
        return this;
    }

    public String getPhone() {
        return phone;
    }

    public String getPhoneAsValue(){return "'" + getPhone() + "'";}

    public User setPhone(String phone) {
        this.phone = phone;
        return this;
    }

    public int getPoints() {
        return points;
    }

    public String getPointAsString(){return String.valueOf(getPoints());}


    public User setPoints(int points) {
        this.points = points;
        return this;
    }

    public String getAddress() {
        return address;
    }

    public String getAddressAsValue(){return "'" + getAddress() + "'"; }

    public User setAddress(String address) {
        this.address = address;
        return this;
    }


    public static User build(ResultSet resultSet){

        try{
            return (new User())
                    .setId(resultSet.getInt("id"))
                    .setFirstName(resultSet.getString("first_name"))
                    .setLastName(resultSet.getString("last_name"))
                    .setEmail(resultSet.getString("email"))
                    .setPassword(resultSet.getString("password"))
                    .setDni(resultSet.getString("dni"))
                    .setPhoto(resultSet.getString("photo"))
                    .setPhone(resultSet.getString("phone"))
                    .setPoints(resultSet.getInt("points"))
                    .setAddress(resultSet.getString("address"));
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }


}

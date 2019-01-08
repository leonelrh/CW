package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Office {

     private int id;
     private String title;
    private int capacity;
     private String address;
     private float price;
     private String photo;
     private String state;
     private String phone;
     private Category category;
     private City city;
     private String description;
     private String coordinates;

    public Office() {
    }


    public Office(int id, String title, int capacity, String address, float price, String photo, String state, String phone, Category category, City city, String description, String coordinates) {
        this.id = id;
        this.title = title;
        this.capacity = capacity;
        this.address = address;
        this.price = price;
        this.photo = photo;
        this.state = state;
        this.phone = phone;
        this.category = category;
        this.city = city;
        this.description = description;
        this.coordinates = coordinates;
    }

    public int getId() {
        return id;
    }

    public String getIdAsString(){
        return String.valueOf(getId());
    }

    public Office setId(int id) {
        this.id = id;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public String getTitleAsValue(){return "'" + getTitle() + "'";}

    public Office setTitle(String title) {
        this.title = title;
        return this;
    }

    public int getCapacity() {
        return capacity;
    }

    public String getCapacityAsString(){
        return String.valueOf(getCapacity());
    }

    public Office setCapacity(int capacity) {
        this.capacity = capacity;
        return this;
    }

    public String getAddress() {
        return address;
    }

    public String getAddressAsValue(){return "'" + getAddress() + "'";}

    public Office setAddress(String address) {
        this.address = address;
        return this;
    }

    public float getPrice() {
        return price;
    }

    public String getPriceAsString(){return String.valueOf(getPrice());}

    public Office setPrice(float price) {
        this.price = price;
        return this;
    }

    public String getPhoto() {
        return photo;
    }

    public String getPhotoAsValue(){return "'" + getPhoto() + "'";}

    public Office setPhoto(String photo) {
        this.photo = photo;
        return this;
    }

    public String getState() {
        return state;
    }

    public String getStateAsValue(){return "'" + getState() + "'";}

    public Office setState(String state) {
        this.state = state;
        return this;
    }

    public String getPhone() {
        return phone;
    }

    public String getPhoneAsValue(){return "'" + getPhone() + "'";}

    public Office setPhone(String phone) {
        this.phone = phone;
        return this;
    }

    public Category getCategory() {
        return category;
    }

    public String getCategoryAsValue(){return "'" + getCategory() + "'";}

    public Office setCategory(Category category) {
        this.category = category;
        return this;
    }


    public City getCity() {
        return city;
    }

    public String getCityAsValue(){return "'" + getCity() + "'";}

    public Office setCity(City city) {
        this.city = city;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public String getDescriptionAsValue(){return "'" + getDescription() + "'";}

    public Office setDescription(String description) {
        this.description = description;
        return this;
    }


    public String getCoordinates() {
        return coordinates;
    }

    public String getCoordinatesAsValue(){return "'" + getCoordinates() + "'" ;}

    public Office setCoordinates(String coordinates) {
        this.coordinates = coordinates;
        return this;
    }

    public static Office build(ResultSet resultSet, CityEntity cityEntity,CategoryEntity categoryEntity,CountryEntity countryEntity){

        try {
            return (new Office())
                    .setId(resultSet.getInt("id"))
                    .setTitle(resultSet.getString("titulo"))
                    .setCapacity(resultSet.getInt("capacity"))
                    .setAddress(resultSet.getString("address"))
                    .setPrice(resultSet.getFloat("price"))
                    .setPhoto(resultSet.getString("photo"))
                    .setState(resultSet.getString("state"))
                    .setPhone(resultSet.getString("phone"))
                    .setCategory(categoryEntity.findById(resultSet.getInt("categories_id")))
                    .setCity(cityEntity.findById(resultSet.getInt("cities_id"),countryEntity))
                    .setDescription(resultSet.getString("descripcion"))
                    .setCoordinates(resultSet.getString("coordinates"));
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }



}

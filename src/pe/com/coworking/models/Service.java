package pe.com.coworking.models;


import java.sql.ResultSet;
import java.sql.SQLException;

public class Service {

    private int id;
    private String namService;
    private Float price;
    private String description;
    private Office office;

    public Service() {
    }

    public Service(int id, String namService, Float price, String description, Office office) {
        this.setId(id);
        this.setNamService(namService);
        this.setPrice(price);
        this.setDescription(description);
        this.setOffice(office);
    }


    public int getId() {
        return id;
    }

    public String getIdAsString(){
        return String.valueOf(getId());
    }


    public Service setId(int id) {
        this.id = id;
        return this;
    }

    public String getNamService() {
        return namService;
    }

    public String getNamServiceAsValue(){return "'" + getNamService() + "'";}

    public Service setNamService(String namService) {
        this.namService = namService;
        return this;
    }

    public Float getPrice() {
        return price;
    }

    public String getPriceAsString(){
        return String.valueOf(getPrice());
    }

    public Service setPrice(Float price) {
        this.price = price;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public String getDescriptionAsValue (){return "'" + getDescription() + "'";}

    public Service setDescription(String description) {
        this.description = description;
        return this;
    }

    public Office getOffice() {
        return office;
    }

    public String getofficeAsValue (){return "'" + getOffice() + "'";}

    public Service setOffice(Office office) {
        this.office = office;
        return this;
    }



    public static Service build(ResultSet resultSet, OfficeEntity officeEntity,CategoryEntity categoryEntity,
                               CityEntity cityEntity, CountryEntity countryEntity){

        try {
            return (new Service())
                    .setId(resultSet.getInt("id"))
                    .setNamService(resultSet.getString("nam_service"))
                    .setPrice(resultSet.getFloat("price"))
                    .setDescription(resultSet.getString("description"))
                    .setOffice(officeEntity.findById(resultSet.getInt("offices_id"),categoryEntity,cityEntity,countryEntity));

        }catch (SQLException e){
            e.printStackTrace();

        }
        return null;
    }





}

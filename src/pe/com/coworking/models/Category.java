package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Category {
        private int id;
        private String categoryName;
        private String categoryDesc;
        private String  picture;

    public Category() {
    }

    public Category(int id, String categoryName, String categoryDesc, String picture) {
        this.id = id;
        this.categoryName = categoryName;
        this.categoryDesc = categoryDesc;
        this.picture = picture;
    }

    public int getId() {
        return id;
    }

    public String getIdAsString(){return String.valueOf(getId());}

    public Category setId(int id) {
        this.id = id;
        return this;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public String getCategoryNameAsValue(){return "'" + getCategoryName() + "'";}

    public Category setCategoryName(String categoryName) {
        this.categoryName = categoryName;
        return this;
    }

    public String getCategoryDesc() {
        return categoryDesc;
    }

    public String getCategoryDescAsValue(){return "'" + getCategoryDesc() + "'";}

    public Category setCategoryDesc(String categoryDesc) {
        this.categoryDesc = categoryDesc;
        return this;
    }

    public String getPicture() {
        return picture;
    }

    public String getPitureAsValue(){return "'" + getPicture() + "'" ;}

    public Category setPicture(String picture) {
        this.picture = picture;
        return this;
    }

    public static Category build(ResultSet resultSet){

        try{
            return (new Category())
                    .setId(resultSet.getInt("id"))
                    .setCategoryName(resultSet.getString("category_name"))
                    .setCategoryDesc(resultSet.getString("category_description"))
                    .setPicture(resultSet.getString("picture"));
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }


}

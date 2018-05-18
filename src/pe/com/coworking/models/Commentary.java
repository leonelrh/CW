package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;


public class Commentary {
    private User user;
    private Office office;
    private String comment;
    private Date dateComment;
    private String evaluation;


    public User getUser() {
        return user;
    }

    public Commentary setUser(User user) {
        this.user = user;
        return this;
    }

    public Office getOffice() {
        return office;
    }

    public Commentary setOffice(Office office) {
        this.office = office;
        return this;
    }

    public String getComment() {
        return comment;
    }

    public Commentary setComment(String comment) {
        this.comment = comment;
        return this;
    }

    public Date getDateComment() {
        return dateComment;
    }

    public Commentary setDateComment(Date dateComment) {
        this.dateComment = dateComment;
        return this;
    }

    public String getEvaluation() {
        return evaluation;
    }

    public Commentary setEvaluation(String evaluation) {
        this.evaluation = evaluation;
        return this;
    }

    public static Commentary build(ResultSet resultSet,UserEntity userEntity,OfficeEntity officeEntity
                                   ,CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity)
    {
        try {
            return (new Commentary())
                    .setUser(userEntity.findById(resultSet.getInt("usuarios_id")))
                    .setOffice(officeEntity.findById(resultSet.getInt("offices_id"),categoryEntity,cityEntity,countryEntity));

        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

}
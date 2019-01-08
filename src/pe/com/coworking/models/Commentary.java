package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Commentary {

    private int id;
    private String comment;
    private Date dateComment;
    private String evaluation;
    private User user;
    private Office office;

    public Commentary() {
    }

    public Commentary(int id, User user, Office office, String comment, Date dateComment, String evaluation) {
        this.id = id;
        this.user = user;
        this.office = office;
        this.comment = comment;
        this.dateComment = dateComment;
        this.evaluation = evaluation;
    }

    public int getId() {
        return id;
    }

    public Commentary setId(int id) {
        this.id = id;
        return this;
    }

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

    public String getCommentAsValue(){return "'" + getComment() + "'";}

    public Commentary setComment(String comment) {
        this.comment = comment;
        return this;
    }

    public Date getDateComment() {
        return dateComment;
    }


    public String getDateCommentAsValue(){return "'" + getDateComment() + "'";}


    public Commentary setDateComment(Date dateComment) {
        this.dateComment = dateComment;
        return this;
    }

    public String getEvaluation() {
        return evaluation;
    }

    public String getEvaluationAsValue(){return "'" + getEvaluation() + "'";}

    public Commentary setEvaluation(String evaluation) {
        this.evaluation = evaluation;
        return this;
    }

    public static Commentary build(ResultSet resultSet,UserEntity userEntity,OfficeEntity officeEntity
                                   ,CategoryEntity categoryEntity,CityEntity cityEntity,CountryEntity countryEntity)
    {
        try {
            return (new Commentary())
                    .setId(resultSet.getInt("idevaluation"))
                    .setComment(resultSet.getString("commentary"))
                    .setDateComment(resultSet.getDate("date_commentary"))
                    .setEvaluation(resultSet.getString("valoracion"))
                    .setUser(userEntity.findById(resultSet.getInt("usuarios_id")))
                    .setOffice(officeEntity.findById(resultSet.getInt("offices_id"),categoryEntity,cityEntity,countryEntity));

        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

}

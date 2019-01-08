package pe.com.coworking.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Participant {
    private int id;
    private String name;
    private String mail;
    private User user;

    public Participant() {
    }

    public Participant(int id, String name, String mail, User user) {
        this.setId(id);
        this.setName(name);
        this.setMail(mail);
        this.setUser(user);
    }


    public int getId() {
        return id;
    }

    public String getIdAsString(){
        return String.valueOf(getId());
    }

    public Participant setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public String getNameAsValue(){return "'" + getName() + "'";}

    public Participant setName(String name) {
        this.name = name;
        return this;
    }

    public String getMail() {
        return mail;
    }

    public String getMailAsValue(){return "'"+ getMail()+"'";}

    public Participant setMail(String mail) {
        this.mail = mail;
        return this;
    }

    public User getUser() {
        return user;
    }

    public String getUserAsValue(){return "'"+getUser()+"'";}

    public Participant setUser(User user) {
        this.user = user;
        return this;
    }

    public static Participant build(ResultSet resultSet, UserEntity userEntity){

        try {
            return (new Participant())
                    .setId(resultSet.getInt("id"))
                    .setName(resultSet.getString("name"))
                    .setMail(resultSet.getString("mail"))
                    .setUser(userEntity.findById(resultSet.getInt("usuarios_id")));

        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }


}

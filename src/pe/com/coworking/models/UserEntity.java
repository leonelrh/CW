package pe.com.coworking.models;

import javax.jws.soap.SOAPBinding;
import java.sql.Connection;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserEntity extends BaseEntity{

    public UserEntity() {super(); }

    public UserEntity(Connection connection){ super(connection,"users");}

    List<User> findAll() {return findByCriteria("");}

    public User findById(int id){
        String criteria = " id = " + String.valueOf(id);
        return findByCriteria(criteria).get(0);
    }


    public User findIdByEmailPassword(String email, String password){
        String criteria= " email = '"+email+"' and password ='"+password+"'";
        return findByCriteria(criteria).get(0);
    }

    public User findByName(String name){
        String criteria = " first_name = '"+
                name + "'";
        return findByCriteria(criteria).get(0);
    }

    public List<User> findAllOrderByName(){
        String criteria = "true ORDER BY first_name";
        return findByCriteria(criteria);
    }

    public List<User> findAllById(int id){
        String criteria = " id = " + String.valueOf(id);

        return findByCriteria(criteria);
    }


    public User findyIdByEmailPassword(String email,String password){
        String criteria= " email = '"+email+"' and password = '"+password+"'";
        return findByCriteria(criteria).get(0);
    }

    public List<User> findByCriteria(String criteria){
        String sql=getDefaultQuery() +
                (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<User> users=new ArrayList<>();
        try {
            ResultSet resultSet=getConnection()
                    .createStatement()
                    .executeQuery(sql);
            if (resultSet==null) return null;
            while(resultSet.next()){
                users.add(User.build(resultSet));
            }
            return users;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }


    public  boolean findByEmailPassword(String email,String password) {
        boolean st =false;
//            String sql=getDefaultQuery()+" where email=? and password=? ";
        try{
//                Connection con= DriverManager.getConnection
//                        ("jdbc:mysql://localhost:3306/dbsoccer","root","alumno");
            PreparedStatement ps =getConnection().prepareStatement
                    (getDefaultQuery()+ " where email=? and password=?" );
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs =ps.executeQuery();
            st = rs.next();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return st;
    }


    public boolean findByEmailPass(String email, String password){
        boolean s=false;
        try{
            PreparedStatement ps=getConnection().prepareStatement(getDefaultQuery() + " WHERE email=? and password=?");
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            s=rs.next();
        } catch (Exception e){
            e.printStackTrace();

        }
        return s;
    }


    private int getMaxId() {
        String sql = "SELECT MAX(id) AS id FROM users";
        try {
            ResultSet resultSet = getConnection()
                    .createStatement()
                    .executeQuery(sql);
            return resultSet.next() ?
                    resultSet.getInt("id") : 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }



    public boolean add(User user){
        int id = getMaxId()+ 1;
        String sql= "INSERT INTO users (id, first_name, last_name, email,password,dni,photo,phone,points,address) " +
                "VALUES(" + id + ", " + user.getFirstNameAsValue()+" ,"+
                user.getLastNameAsValue() +", "+user.getEmailAsValue()+", "+ user.getPasswordAsValue() +", "+
                user.getDniAsValue()+", "+user.getPhotoAsValue()+", "+user.getPhoneAsValue()+", "+user.getPointAsString()+ ", "+user.getAddressAsValue()+ ")";
        return change(sql);
    }

    public boolean delete(User user){
        return change("DELETE FROM usuarios WHERE id = " + user.getIdAsString());
    }

    public boolean update(User user){
        return change("UPDATE users SET first_name = " + user.getFirstNameAsValue()+
        ", last_name = " + user.getLastNameAsValue() +
        ", email = " + user.getEmailAsValue() +
        ", password = " + user.getPasswordAsValue() +
        ", dni = " + user.getDniAsValue()+
        ", photo = " + user.getPhotoAsValue()+
        ", phone = " + user.getPhoneAsValue() +
        ", points = "+ user.getPointAsString()+
        " WHERE id = " +user.getIdAsString());
    }
}

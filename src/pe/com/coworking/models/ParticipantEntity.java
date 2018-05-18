package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ParticipantEntity extends BaseEntity{

   public ParticipantEntity(Connection connection){super(connection,"participants");}

    public ParticipantEntity() {
        super();
    }

    public List<Participant> findAll(UserEntity userEntity) {
        return findByCriteria("", userEntity);
    }

    public Participant findById(String id,  UserEntity userEntity) {
        String criteria = " id = '" + id + "'";
        return findByCriteria(criteria, userEntity).get(0);
    }


    public List<Participant> findAllId(String id,UserEntity userEntity) {
        String criteria = " organizer_id = '"+id+"'";
        return findByCriteria(criteria,userEntity);
    }



    public List<Participant> findByCriteria(String criteria, UserEntity userEntity) {
        String sql = getDefaultQuery() + (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<Participant> participants = new ArrayList<>();
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            if(rs == null) return null;
            while(rs.next()) participants.add(Participant.build(rs, userEntity));
            return participants;
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return participants;
    }

    public List<Participant> findByOrganizer(User user, UserEntity userEntity) {
        String criteria = "organizer_id = " + user.getIdAsString();
        return findByCriteria(criteria, userEntity);
    }

    public List<Participant> findAllOrderByFirstName(UserEntity userEntity, boolean isAscending) {
        return findByCriteria("true ORDER BY first_name" +
                (isAscending ? "" : " DESC"), userEntity );
    }

    public List<Participant> findAllOrderByLastName(UserEntity userEntity, boolean isAscending) {
        return findByCriteria("true ORDER BY last_name" +
                (isAscending ? "" : " DESC"), userEntity );
    }

    public boolean add(Participant participant) {
        String sql = "INSERT participants (id,name, email, usuarios_id) " +
                "VALUES(" + participant.getIdAsString() + ", " +
                participant.getNameAsValue() + ", " +
                participant.getMailAsValue() + ", " +
                participant.getUser().getIdAsString()+ ")";
        return change(sql);
    }

    public boolean update(Participant participant) {
        String sql = "UPDATE participants SET name = " + participant.getNameAsValue() +
                ", email = "+ participant.getMailAsValue() +
                ", usuarios_id = " + participant.getUser().getIdAsString() +
                " WHERE id = " + participant.getIdAsString();
        return change(sql);
    }

    public boolean delete(Participant participant) {
        String sql = "DELETE FROM participants WHERE id = " +
                participant.getIdAsString();
        return change(sql);
    }

    public boolean delete(String id) {
        String sql = "DELETE FROM participants WHERE id = " +
                "'" + id + "'";
        return change(sql);
    }

}

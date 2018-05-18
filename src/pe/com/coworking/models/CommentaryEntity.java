package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentaryEntity extends BaseEntity {

  public CommentaryEntity(Connection connection){
      super(connection,"comments");
  }
  public CommentaryEntity(){
      super();
  }

    public List<Commentary> findAll(UserEntity userEntity,
                                    OfficeEntity officeEntity,
                                    CategoryEntity categoryEntity,
                                    CityEntity cityEntity,
                                    CountryEntity countryEntity) {
        return findByCriteria("", userEntity,officeEntity,categoryEntity,cityEntity,countryEntity);
    }

    public Commentary findById(String id, UserEntity userEntity,
                            OfficeEntity officeEntity,
                            CategoryEntity categoryEntity,
                            CityEntity cityEntity,
                            CountryEntity countryEntity) {

        String criteria = "country_id = " + "'" + id + "'";
        return findByCriteria(criteria,userEntity,officeEntity,categoryEntity,cityEntity,countryEntity).get(0);

    }

    public List<Commentary> findByCriteria (String criteria, UserEntity userEntity,
                                           OfficeEntity officeEntity,
                                           CategoryEntity categoryEntity,
                                           CityEntity cityEntity,
                                           CountryEntity countryEntity
                                           ) {
        String sql = getDefaultQuery() + (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<Commentary> commentaries = new ArrayList<>();
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            if(rs == null) return null;
            while(rs.next()) commentaries.add(Commentary.build(rs,userEntity,officeEntity,categoryEntity,cityEntity,countryEntity));
            return commentaries;
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return commentaries;
    }


    public boolean add(Commentary commentary) {
        String sql = "INSERT INTO comments (usuarios_id, offices_id, comentario,date_comment,evaluacion) VALUES(" +
                commentary.getUser().getIdAsString() + ", " +
                commentary.getOffice().getIdAsString() + ", " +
                commentary.getComment()+", " +
                commentary.getDateComment()+", " +
                commentary.getEvaluation()+ ", " +
                ")";
        return change(sql);
    }

    public boolean update(Commentary commentary) {
        String sql = "UPDATE comments SET " +
                "usuarios_id = " + commentary.getUser().getIdAsString()+ ", " +
                "offices_id = " + commentary.getOffice().getIdAsString()+", "+
                "comentario = " + commentary.getComment()+ ", " +
                "date_comment = " + commentary.getDateComment()+", "+
                "evaluacion = " + commentary.getEvaluation()+", " +
                " WHERE usuarios_id = " + commentary.getUser().getIdAsString();
        return change(sql);
    }


}

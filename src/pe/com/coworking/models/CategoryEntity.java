package pe.com.coworking.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CategoryEntity extends BaseEntity{

    public CategoryEntity(Connection connection){
    super(connection,"categories");
    }

    public CategoryEntity(){super();}

    public Category findById(int id){
        String criteria = " id = " + String.valueOf(id);
        return findByCriteria(criteria).get(0);
    }

    public List<Category> findAll(){
        return findByCriteria("");
    }



    public List<Category> findByCriteria(String criteria){
        String sql=getDefaultQuery()+ (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<Category> categories=new ArrayList<>();

        try{
            ResultSet resultSet=getConnection().createStatement().executeQuery(sql);
            if(resultSet==null) return null;
            while (resultSet.next()){
                categories.add(Category.build(resultSet));
            }
            return categories;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public boolean update(Category category){
        return change("UPDATE categories SET category_name = " + category.getCategoryNameAsValue()+
        ", category_description = " + category.getCategoryDescAsValue() +
        ", picture = " + category.getPitureAsValue()+
        " WHERE id = " + category.getIdAsString());
    }

}

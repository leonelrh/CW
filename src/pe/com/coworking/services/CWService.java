package pe.com.coworking.services;

import pe.com.coworking.models.*;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class CWService {
    private Connection connection;
    private CWDataStore dataStore;
    public CWService(InitialContext ctx) {
        try {
            connection = ((DataSource) ctx.lookup("jdbc/MySQLDataSource1"))
                    .getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }
    public CWService(){

        try {
            InitialContext ctx = new InitialContext();
            connection = ((DataSource) ctx.lookup("jdbc/MySQLDataSource1"))
                    .getConnection();
        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    private Connection getConnection() {
        return connection;
    }
    private CWDataStore getDataStore() {
        if(dataStore == null) {
            dataStore = new CWDataStore(getConnection());
        }
        return dataStore;
    }

    public List<Office> getOffices() { return getDataStore().findAllOffices(); }

    public List<Category> getCategories(){return  getDataStore().findAllCategories();}

    public List<User> getUsers(){return getDataStore().findAllUsers();}

    public List<Country> getCountries(){return getDataStore().findAllCountries();}

    public List<City> getCity(){return getDataStore().findAllCities();}

    public List<City> getCities(int id){return getDataStore().findAllCityById(id);}

    public List<Service> getServices(){return  getDataStore().findAllServices();}

    public List<Reservation> getReservations(){return getDataStore().findAllReservations();}



    public boolean getUserByEmail(String email,String password){
        return getDataStore().findUserByEmail(email,password);
    }

    public User getUserIdByEmail(String email,String password){return getDataStore().findUserIdByEmail(email,password);}





    public List<Service> getServicesByOffice(String id){return getDataStore().findAllServiceByoffice(id);}

    public List<Office> getOfficesById (int id){return getDataStore().findAllOfficesById(id);}

    public User getUserById(int id){return getDataStore().findUserById(id);}

    public Office getOfficeById(int id){return getDataStore().findOfficeById(id);}

    public boolean addUser (User user){return getDataStore().addUser(user);}

    public boolean addOffice (Office office) {return getDataStore().addOffice(office);}

    public boolean updateUser (User user){return getDataStore().updateUser(user);}

    public boolean updateOffice (Office office){return  getDataStore().updateOffice(office);}

    public List<User> getUsersById(int id){ return getDataStore().findAllByIdUsers(id); }

    public Reservation getReservationById(int id){return getDataStore().findReservationById(id);}

    public boolean addReservation(Reservation reservation){return getDataStore().addReservation(reservation);}

    public boolean addEvaluation(Commentary commentary){return getDataStore().addCommentary(commentary);}

    public boolean updateReservation(Reservation reservation){return getDataStore().updateReservation(reservation);}

    public boolean deleteReservation(Reservation reservation){return getDataStore().deleteReservation(reservation);}


    //public boolean deleteOffice(Office office){ return getDataStore().deleteOffice(office);}
    public boolean deleteOfficeLogic(String id){ return getDataStore().deleteOfficeLogic(id);}

    public List<Office> getOfficesOrderByX(int typeOrder) { return getDataStore().findAllOfficesOrderByX(""+typeOrder); }

    public List<Office> getOfficeByCategory(int category){ return getDataStore().findAllByCategoryOffice(category); }

}

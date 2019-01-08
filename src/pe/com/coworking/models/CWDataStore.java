package pe.com.coworking.models;

import java.sql.Connection;
import java.util.List;

public class CWDataStore {

    private Connection connection;
    private CategoryEntity categoryEntity;
    private CityEntity cityEntity;
    private CommentaryEntity commentaryEntity;
    private CountryEntity countryEntity;
    private OfficeEntity officeEntity;
    private ParticipantEntity participantEntity;
    private PaymentEntity paymentEntity;
    private ReservationEntity reservationEntity;
    private ServiceEntity serviceEntity;
    private UserEntity userEntity;

    public CWDataStore(Connection connection) {
        this.setConnection(connection);
    }

    public CWDataStore() {
    }


    public Connection getConnection() {
        return connection;
    }

    public CWDataStore setConnection(Connection connection) {
        this.connection = connection;
        return this;
    }

    public CategoryEntity getCategoryEntity() {
        if(categoryEntity==null){
            categoryEntity = new CategoryEntity(getConnection());
        }
        return categoryEntity;
    }

    public List<Category> findAllCategories(){ return getCategoryEntity().findAll(); }


    public CityEntity getCityEntity() {
        if(cityEntity==null){
            cityEntity = new CityEntity(getConnection());
        }
        return cityEntity;
    }

    public List<City> findAllCities(){ return getCityEntity().findAll(getCountryEntity()); }

    public CommentaryEntity getCommentaryEntity() {
        if(commentaryEntity==null){
            commentaryEntity = new CommentaryEntity(getConnection());
        }
        return commentaryEntity;
    }

    public List<Commentary> findAllCommentaries(){ return getCommentaryEntity().findAll(getUserEntity(),getOfficeEntity(),getCategoryEntity(),getCityEntity(),getCountryEntity()); }

    public CountryEntity getCountryEntity() {
        if(countryEntity==null){
            countryEntity = new CountryEntity(getConnection());
        }
        return countryEntity;
    }

    public List<Country> findAllCountries(){ return getCountryEntity().findAll(); }

    public List<City> findAllCityById(int id){return getCityEntity().findAllId(id,getCountryEntity());}

    public OfficeEntity getOfficeEntity() {
        if(officeEntity==null){
            officeEntity = new OfficeEntity(getConnection());
        }
        return officeEntity;
    }

    public List<Office> findAllOffices(){ return getOfficeEntity().findAll(getCategoryEntity(),getCityEntity(),getCountryEntity()); }

    public ParticipantEntity getParticipantEntity() {
        if(participantEntity==null){
            participantEntity = new ParticipantEntity(getConnection());
        }
        return participantEntity;
    }

    public List<Participant> findAllParticipants(){ return getParticipantEntity().findAll(getUserEntity()); }

    public PaymentEntity getPaymentEntity() {
        if(paymentEntity==null){
            paymentEntity = new PaymentEntity(getConnection());
        }
        return paymentEntity;
    }

    public List<Payment> findAllPayments(){ return getPaymentEntity().findAll(getReservationEntity(),getUserEntity(),getOfficeEntity(),getCategoryEntity(),getCityEntity(),getCountryEntity()); }

    public ReservationEntity getReservationEntity() {
        if(reservationEntity==null){
            reservationEntity = new ReservationEntity(getConnection());
        }
        return reservationEntity;
    }

    public List<Reservation> findAllReservations(){ return getReservationEntity().findAll(getUserEntity(),getOfficeEntity(),getCategoryEntity(),getCityEntity(),getCountryEntity()); }



    public ServiceEntity getServiceEntity() {
        if(serviceEntity==null){
            serviceEntity = new ServiceEntity(getConnection());
        }
        return serviceEntity;
    }

   public List<Service> findAllServices(){return getServiceEntity().findAll(getOfficeEntity(),getCategoryEntity(),getCityEntity(),getCountryEntity());}



    public UserEntity getUserEntity() {
        if(userEntity==null){
            userEntity = new UserEntity(getConnection());
        }
        return userEntity;
    }

    public List<User> findAllUsers(){ return getUserEntity().findAll(); }

    public boolean findUserByEmail(String email,String password){ return getUserEntity().findByEmailPassword(email,password); }


    public User findUserIdByEmail(String email,String password){
        return getUserEntity().findyIdByEmailPassword(email,password);
    }


    public List<Service> findAllServiceByoffice(String id){return getServiceEntity().findAllId(id,getOfficeEntity(),getCategoryEntity(),getCityEntity(),getCountryEntity());}

    public List<Office> findAllOfficesById(int id){return getOfficeEntity().findAllId (id,getCategoryEntity(),getCityEntity(),getCountryEntity());}

    public User findUserById(int id){return getUserEntity().findById(id);}

    public Office findOfficeById(int id){return getOfficeEntity().findById(id,getCategoryEntity(),getCityEntity(),getCountryEntity());}

    public boolean addUser(User user){return getUserEntity().add(user);}

    public boolean addOffice(Office office){return getOfficeEntity().add(office);}

    public boolean updateUser (User user){return getUserEntity().update(user);}

    public boolean updateOffice(Office office){return getOfficeEntity().update(office);}

    public List<User> findAllByIdUsers(int id){return  getUserEntity().findAllById(id);}

    public boolean deleteReservation(Reservation reservation){return getReservationEntity().delete(reservation);}

    public boolean updateReservation(Reservation reservation){return getReservationEntity().update(reservation);}

    public boolean addReservation(Reservation reservation){return getReservationEntity().add(reservation);}

    public boolean addCommentary(Commentary commentary){return getCommentaryEntity().add(commentary);}

    public Reservation findReservationById(int id){return getReservationEntity().findById(id,getUserEntity(),getOfficeEntity(),getCategoryEntity(),getCityEntity(),getCountryEntity());}

    //public boolean deleteOffice(Office office){return getOfficeEntity().delete(office);}
    public boolean deleteOfficeLogic(String id){return getOfficeEntity().delete(id);}

    public List<Office> findAllOfficesOrderByX(String typeOrder){ return getOfficeEntity().findAllOfficesOrderByX(typeOrder,getCategoryEntity(),getCityEntity(),getCountryEntity()); }

    public List<Office> findAllByCategoryOffice(int id){return  getOfficeEntity().findAllByCategory(id,getCategoryEntity(),getCityEntity(),getCountryEntity());}
}
package pe.com.coworking.models;

public class OfficeDetalle {
    private Office office;
    private Service servic;
    private String quantityServices;

    public OfficeDetalle() {
    }

    public OfficeDetalle(Office office, Service servic, String quantityServices) {
        this.setOffice(office);
        this.setServic(servic);
        this.setQuantityServices(quantityServices);
    }


    public Office getOffice() {
        return office;
    }

    public OfficeDetalle setOffice(Office office) {
        this.office = office;
        return this;
    }

    public Service getServic() {
        return servic;
    }

    public OfficeDetalle setServic(Service servic) {
        this.servic = servic;
        return this;
    }

    public String getQuantityServices() {
        return quantityServices;
    }

    public OfficeDetalle setQuantityServices(String quantityServices) {
        this.quantityServices = quantityServices;
        return this;
    }



}

package pe.com.coworking.viewcontrollers;

import pe.com.coworking.models.Office;
import pe.com.coworking.models.Reservation;
import pe.com.coworking.models.User;
import pe.com.coworking.services.CWService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet(name = "ReservationsServlet",urlPatterns = "/reservations")
public class ReservationsServlet extends HttpServlet {

    CWService service=new CWService();

    public static String RESERVATIONS_EDIT_URI = "/editOffice.jsp";
    public static String RESERVATIONS_ADD_URI = "/newOffice.jsp";
    public static String RESERVATIONS_INDEX_URI = "/indexp.jsp";
    public static String RESERVATIONS_LIST_URI = "/office.jsp";
    public static String RESERVATIONS_DEL_URI = "/prueba5.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action=request.getParameter("action");
        switch (action){

            case "update":{
                Reservation reservation = service.getReservationById(Integer.parseInt(request.getParameter("id")));
                reservation.setStarDate(Date.valueOf(request.getParameter("starDate")));
                reservation.setState("reservado");
                reservation.setEndDate(Date.valueOf(request.getParameter("enddate")));
                reservation.setHours(Float.parseFloat(request.getParameter("np")));
                reservation.setPaid(true);
                String message = service.updateReservation(reservation) ?
                        "indexp.jsp" :
                        "Error while updating";
                log(message);
                request.setAttribute("myname",reservation.getId());
                request.getRequestDispatcher("prueba4.jsp").forward(request, response);
                break;
            }

            case "agregate":{
                Reservation reservation=new Reservation();
                User user=new User();
                Office office=new Office();

                String sd = request.getParameter("starDate");
                String ed = request.getParameter("enddate");
                SimpleDateFormat formateador = new SimpleDateFormat("MM/dd/yyyy");
                SimpleDateFormat formatea = new SimpleDateFormat("yyyy-MM-dd");
                try{
                    java.util.Date fecha = formateador.parse(sd);
                    String fec = formatea.format(fecha);
                    reservation.setStarDate(Date.valueOf(fec));

                    java.util.Date fech=formateador.parse(ed);
                    String fe=formatea.format(fech);
                    reservation.setEndDate(Date.valueOf(fe));
                }
                catch (ParseException e){
                }

                reservation.setState("state");
                reservation.setHours(Float.parseFloat(request.getParameter("np")));
                reservation.setPaid(true);
                reservation.setUser(user.setId(Integer.parseInt("180012")));
                reservation.setOffice(office.setId(Integer.parseInt("1001")));
                String message = service.addReservation(reservation)?
                        "success" :
                        "Error while updating";
                log(message);
            }

            RequestDispatcher dispatcher=request.getRequestDispatcher("prueba5.jsp");
            dispatcher.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        String actionUri;

        switch (action){
            case "add":{
                actionUri = RESERVATIONS_ADD_URI;
                request.setAttribute("action","add");
                break;
            }
            case "edit": {
                Reservation reservation= service.getReservationById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("reservation",reservation);
                request.setAttribute("action","edit");
                actionUri=RESERVATIONS_EDIT_URI;
                break;
            }
            case "list": {
                Reservation reservation = service.getReservationById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("reservation",reservation);
                request.setAttribute("action","list");
                actionUri=RESERVATIONS_LIST_URI;
                break;
            }
            case "delete":{
                Reservation reservation= service.getReservationById(Integer.parseInt(request.getParameter("id")));
                String message = service.deleteReservation(reservation)?
                        "Delete success" :
                        "Error while delete";
                log(message);
                actionUri=RESERVATIONS_DEL_URI;
                break;
            }

            default:
                actionUri=RESERVATIONS_INDEX_URI;
        }
        RequestDispatcher dispatcher=request.getRequestDispatcher(actionUri);
        dispatcher.forward(request,response);
    }
}

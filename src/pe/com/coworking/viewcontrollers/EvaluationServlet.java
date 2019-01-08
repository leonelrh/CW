package pe.com.coworking.viewcontrollers;

import pe.com.coworking.models.Commentary;
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
import java.util.Date;

import java.io.*;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;

/*import java.sql.Date;*/

import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet(name = "EvaluationServlet", urlPatterns = "/evaluations")
public class EvaluationServlet extends HttpServlet {

    CWService service=new CWService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action=request.getParameter("action");
        switch (action){

        case "agregate":{

            Commentary commentary=new Commentary();
            User user=new User();
            Office office=new Office();

             Date dNow = new Date();


            SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");


   /*         SimpleDateFormat ft=new SimpleDateFormat("MM/dd/yyyy");
            String currentDate = ft.format(dnow);*/


            try {
                Date date=ft.parse(ft.format(dNow));
                commentary.setDateComment(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }


            commentary.setComment(request.getParameter("commentary"));
            commentary.setEvaluation((request.getParameter("rating")));
            commentary.setUser(user.setId(Integer.parseInt("180012")));
            commentary.setOffice(office.setId(Integer.parseInt("1001")));
            String message = service.addEvaluation(commentary)?
                    "success" :
                    "Error while updating";
            log(message);
        }


        RequestDispatcher dispatcher=request.getRequestDispatcher("prueba4.jsp");
        dispatcher.forward(request,response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
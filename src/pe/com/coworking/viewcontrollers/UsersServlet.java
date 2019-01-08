package pe.com.coworking.viewcontrollers;

import pe.com.coworking.services.CWService;
import pe.com.coworking.models.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.List;

import java.io.File;


import javax.servlet.http.Part;
import java.nio.file.Paths;
import java.util.Date;
import java.util.Properties;


@MultipartConfig
@WebServlet(name = "UsersServlet",urlPatterns = "/users")

public class UsersServlet extends HttpServlet {

    CWService service=new CWService();
    private final String UPLOAD_DIRECTORY = "C:/Users/leone/Documents/IdeaProjects/CW/web/image";

    public static String USERS_EDIT_URI = "/editUser.jsp";
    public static String USERS_ADD_URI = "/newUser.jsp";
    public static String USERS_INDEX_URI = "/indexp.jsp";

    public String namephoto(String variab){
        char [] cadena_div = variab.toCharArray();
        String n="";
        String c="";
        for (int i=0;i<cadena_div.length;i++){
            if(Character.isDigit(cadena_div[i])){
                n+=cadena_div[i];

            }
        }
        for (int i=0;i<cadena_div.length-3;i++){
            if(Character.isLetter(cadena_div[i])){
                c+=cadena_div[i];
            }
        }
        int nume=Integer.parseInt(n)+1;
        String fnam=c+nume+".jpg";
        return fnam;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");

        switch (action){

    case "update":{

        User user = service.getUserById(Integer.parseInt(request.getParameter("id")));
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        user.setDni(request.getParameter("dni"));

        String fname=namephoto(user.getPhoto());

        if(request.getPart("file")!=null) {
            Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
            InputStream fileContent = filePart.getInputStream();
            File file = new File("/Users/wramoshe/Documents/Proyecto/CW/out/artifacts/CW_war_exploded/image/"+fname);
            Files.copy(fileContent, file.toPath());
            user.setPhoto(fname);
        }
        else{

            user.setPhoto(request.getParameter("photo"));
        }


        user.setPhone(request.getParameter("phone"));
        user.setPoints(Integer.parseInt(request.getParameter("points")));
        user.setAddress(request.getParameter("address"));
        String message = service.updateUser(user) ?
                "indexp.jsp" :
                "Error while updating";
        log(message);
        request.setAttribute("myname",user.getId());
        request.getRequestDispatcher("index2.jsp").forward(request, response);
        break;
    }

    case "agregate":{
        User user=new User();
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        user.setDni("");
        user.setPhone("");
        user.setPoints(0);
        user.setAddress("");

        String message = service.addUser(user)?
                "Success" :
                "Error";
        log(message);
        request.setAttribute("msg",message);

        String to=request.getParameter("email");
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.starttls.enable", true);
        Session session = Session.getInstance(props, null);
        try {
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom("work.spaces18@gmail.com");
            msg.setRecipients(Message.RecipientType.TO, to);
            msg.setSubject("Welcome to WorkSpace");
            msg.setSentDate(new Date());
            msg.setText("Bienvenido a workspace ");
            Transport.send(msg,"work.spaces18@gmail.com","1qazcde34");
        } catch (MessagingException mex) {
            System.out.println("send failed, exception: " + mex);
        }
    }

    RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
    dispatcher.forward(request,response);
     }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String action=request.getParameter("action");
          String actionUri;
          switch (action){
    case "add":{
        actionUri = USERS_ADD_URI;
        request.setAttribute("action","add");
        break;
    }
    case "edit": {
        User user=service.getUserById(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("user",user);
        request.setAttribute("action","edit");
        actionUri=USERS_EDIT_URI;
        break;
    }
    default:
        actionUri=USERS_INDEX_URI;
    }
        RequestDispatcher dispatcher=request.getRequestDispatcher(actionUri);
        dispatcher.forward(request,response);

    }
}
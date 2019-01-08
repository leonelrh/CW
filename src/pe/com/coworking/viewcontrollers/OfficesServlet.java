package pe.com.coworking.viewcontrollers;

import pe.com.coworking.services.CWService;
import pe.com.coworking.models.*;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.servlet.annotation.MultipartConfig;

import javax.servlet.http.Part;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@MultipartConfig
@WebServlet(name = "OfficesServlet",urlPatterns = "/offices")

public class OfficesServlet extends HttpServlet {

    CWService service=new CWService();

    public static String OFFICES_EDIT_URI = "/editOffice.jsp";
    public static String OFFICES_ADD_URI = "/newOffice.jsp";
    public static String OFFICES_INDEX_URI = "/indexp.jsp";
    public static String OFFICES_LIST_URI = "/office2.jsp";
    public static String OFFICES_DEL_URI = "/prueba4.jsp";



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action=request.getParameter("action");
        switch (action){

            case "update":{

                Office office = service.getOfficeById(Integer.parseInt(request.getParameter("id")));
                office.setTitle(request.getParameter("title"));
                office.setCapacity(Integer.parseInt(request.getParameter("capacity")));
                office.setAddress(request.getParameter("address"));
                office.setPrice(Float.parseFloat(request.getParameter("price")));
                office.setPhoto(request.getParameter("photo"));
                office.setState(request.getParameter("state"));
                office.setPhone(request.getParameter("phone"));
                office.setDescription(request.getParameter("description"));
                String message = service.updateOffice(office) ?
                        "indexp.jsp" :
                        "Error while updating";
                log(message);
                request.setAttribute("myname",office.getId());
                request.getRequestDispatcher("prueba4.jsp").forward(request, response);

                break;
            }

            case "agregate":{
                Office office=new Office();
                Category category=new Category();
                City city=new City();

                office.setTitle(request.getParameter("title"));
                office.setCapacity(Integer.parseInt(request.getParameter("capacity")));
                office.setAddress(request.getParameter("address"));
                office.setPrice(Integer.parseInt(request.getParameter("price")));

                Part filePart = request.getPart("file");

                if(filePart != null){
                    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                    InputStream fileContent = filePart.getInputStream();
                    File file = new File("/Users/wramoshe/Documents/Proyecto/CW/out/artifacts/CW_war_exploded/image/"+fileName);
                    if(file.exists() && !file.isDirectory()){
                         boolean success=file.delete();
                    }
                    Files.copy(fileContent,file.toPath());
                    office.setPhoto(fileName);
                }
                else{
                    office.setPhoto("phot.jpg");
                }


                office.setState("1");
                office.setPhone(request.getParameter("phone"));
                office.setCategory(category.setId(Integer.parseInt(request.getParameter("categoryId"))));
                office.setCity(city.setId(Integer.parseInt(request.getParameter("cityId"))));
                office.setDescription(request.getParameter("description"));
                office.setCoordinates(request.getParameter("coordinates"));
                String message = service.addOffice(office)?
                        "success" :
                        "Error while updating";
                log(message);

            }

            RequestDispatcher dispatcher=request.getRequestDispatcher("prueba4.jsp");
            dispatcher.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        String actionUri;
        switch (action){
            case "add":{
                actionUri = OFFICES_ADD_URI;
                request.setAttribute("action","add");
                break;
            }
            case "edit": {
                Office office = service.getOfficeById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("office",office);
                request.setAttribute("action","edit");
                actionUri=OFFICES_EDIT_URI;
                break;
            }
            case "list": {
                Office office = service.getOfficeById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("office",office);
                request.setAttribute("action","list");
                actionUri=OFFICES_LIST_URI;
                break;
            }
            case "delete":{
                //Office office = service.getOfficeById(Integer.parseInt(request.getParameter("id")));

                String message = service.deleteOfficeLogic(request.getParameter("id"))?
                        "Delete success" :
                        "Error while delete";
                log(message);
                actionUri=OFFICES_DEL_URI;


                break;
            }
            case "order":{

                //Redirecciona a la pagina segun el tipo de orden elegido
                String typeOrder= request.getParameter("typeOrder");
                String url="";

                switch (typeOrder){

                    case "1":url="/prueba4-ciudad.jsp"; break;
                    case "2":url="/prueba4-precio.jsp"; break;
                }
                actionUri=url;

                break;
            }


            default:
                actionUri=OFFICES_INDEX_URI;
        }

        RequestDispatcher dispatcher=request.getRequestDispatcher(actionUri);
        dispatcher.forward(request,response);

    }
}

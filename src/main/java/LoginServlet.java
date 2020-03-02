import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "LoginServlet",urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext servletContext = getServletContext();

        String brugernavn = request.getParameter("brugernavn");
        String kode = request.getParameter("kode");

        if(servletContext.getAttribute("brugerMap") == null) {

            Map<String,String> brugerMap = new HashMap<>();

            brugerMap.put("test","test");
            brugerMap.put("admin","1234");

            servletContext.setAttribute("brugerMap",brugerMap);
        }

        if(!((Map<String,String>)servletContext.getAttribute("brugerMap")).containsKey(brugernavn)) {
            //todo gå til login side
            request.setAttribute("besked","Opret dig som bruger her!");
            request.getRequestDispatcher("WEB-INF/opretBruger.jsp").forward(request,response);
        }

        if(((Map<String,String>)servletContext.getAttribute("brugerMap")).get(brugernavn).equalsIgnoreCase(kode)) {

            if (brugernavn.equalsIgnoreCase("admin")) {
                request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request,response);
            }

            request.getRequestDispatcher("WEB-INF/huskeliste.jsp").forward(request,response);
        }

        //todo gå til login dvs. index-siden
        request.setAttribute("besked","Din kode er forkert, prøv igen");
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

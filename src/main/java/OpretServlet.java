import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "OpretServlet", urlPatterns = {"/OpretServlet"})
public class OpretServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext servletContext = getServletContext();

        String brugernavn = request.getParameter("brugernavn");
        String kode = request.getParameter("kode");

        if (((Map<String,String>) servletContext.getAttribute("brugerMap")).containsKey(brugernavn)) {
            request.setAttribute("besked","Navnet du angav er allerede brugt!");
            request.getRequestDispatcher("WEB-INF/opretBruger.jsp").forward(request,response);
        }

        ((Map<String,String>) servletContext.getAttribute("brugerMap")).put(brugernavn,kode);
        request.setAttribute("color","green");
        request.setAttribute("besked","Du er nu oprettet og klar til at logge ind");
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

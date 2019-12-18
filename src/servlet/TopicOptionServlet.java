package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TopicOptionServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a=request.getParameter("a");
        request.getSession().setAttribute("a",a);
        System.out.println(a);
        request.getRequestDispatcher("/topicEdit2.jsp").forward(request, response);
    }
}

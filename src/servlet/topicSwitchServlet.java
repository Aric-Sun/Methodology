package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 因为同一个页面不能出现两次请求，所以改用js实现刷新页面。但是会出现点击浏览器刷新也会自动下一题
 * @author AricSun
 * @date 2019/12/16 21:14
 */
@WebServlet(urlPatterns = {"/topic.showBelowTopic", "/topic.showAfterTopic"})
public class topicSwitchServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("12123");
        super.service(req, resp);
        String path = req.getServletPath();
        if (path.equals("/topic.showBelowTopic")){
            showBelowTopic(req,resp);
        }else if (path.equals("/topic.showAfterTopic")){
            showAfterTopic(req,resp);
        }
    }
    /*
     * function: ip表示读取到的题目id，由于会和本来的题目id冲突，所以换了一个名字，
     * 但是这个方法已经废弃，在js中使用的是current_id
     * @Param: [request, response]
     * @Return: void
     */
    protected void showBelowTopic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ip = (int) request.getSession().getAttribute("current_id");
        if (ip>0){
            ip--;
        }
        request.getSession().setAttribute("current_id", ip);
//        return;
        request.getRequestDispatcher("/web/test.jsp");
    }

    protected void showAfterTopic(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int ip = (int) request.getSession().getAttribute("current_id");
        if (ip < 10){//暂时写了10，如果题目更多的话，需要读取最大题目数量（顺序练习是提取所有题目）
            ip++;
        }
        request.getSession().setAttribute("current_id", ip);
//        response.sendRedirect(request.getContextPath()+"/test.jsp");
        request.getRequestDispatcher("/web/test.jsp");
    }
}

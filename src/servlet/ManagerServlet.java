package servlet;

import entity.Topic;
import entity.TopicOption;
import entity.User;
import util.JDBCUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManagerServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if ("/user.manager".equals(path)) {
            user(request, response);
        }
    }
    protected void user(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet resultSet=null;
        List<User> users=new ArrayList<User>();
        User user=null;
        try {
            con= JDBCUtil.getConnection();
            con.setAutoCommit(false);
            String sql="select * from user";
            ps=con.prepareStatement(sql);
            resultSet=ps.executeQuery();
            while (resultSet.next()){
                user=new User();
                user.setId(resultSet.getInt("user_id"));
                user.setUser_userId(resultSet.getString("user_userId"));
                user.setUser_username(resultSet.getString("user_username"));
                users.add(user);
            }
            con.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(con,ps,resultSet);
        }
        request.setAttribute("users", users);
        request.getRequestDispatcher("/modify.jsp").forward(request, response);
    }
}

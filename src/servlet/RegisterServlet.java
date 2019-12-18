package servlet;

import entity.Manager;
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

public class RegisterServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if ("/register".equals(path)) {
            register(request, response);
        }
    }

    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        Manager manager = null;
        User user = new User();
        try {
            con = JDBCUtil.getConnection();
            con.setAutoCommit(false);
            String sql = "insert into user(user_userId,user_username,user_password) values(?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, userId);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.executeUpdate();
            user.setUser_userId(userId);
            user.setUser_username(username);
            con.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(con, ps, resultSet);
        }
        request.getSession().setAttribute("user", user);
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
}
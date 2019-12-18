package servlet;

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

public class DeleteServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if ("/delete".equals(path)) {
            System.out.println(2);
            System.out.println(path);
            delete(request, response);
            System.out.println(3);
        }
        System.out.println(1);
    }

    protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        System.out.println(id);
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet resultSet=null;
        try {
            con= JDBCUtil.getConnection();
            con.setAutoCommit(false);
            String sql="delete from user where user_id=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(id));
            ps.executeUpdate();
            con.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(con,ps,resultSet);
        }
        response.sendRedirect("/web/user.manager");
    }
}
package servlet;

import entity.Manager;
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

public class ChangeServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        if ("/delete.change".equals(path)) {
            delete(request, response);
        }
    }
    protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a=request.getParameter("a");
        System.out.println(a);
        Connection con1=null;
        PreparedStatement ps1=null;
        ResultSet resultSet1=null;
        try {
            con1= JDBCUtil.getConnection();
            con1.setAutoCommit(false);
            String sql="delete from topicoption where tO_topic_id=?";
            ps1=con1.prepareStatement(sql);
            ps1.setString(1,a);
            ps1.executeUpdate();
            con1.commit();

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(con1,ps1,resultSet1);
        }


        Connection con=null;
        PreparedStatement ps=null;
        ResultSet resultSet=null;
        try {
            con= JDBCUtil.getConnection();
            con.setAutoCommit(false);
            String sql="delete from topic where topic_id=?";
            ps=con.prepareStatement(sql);
            ps.setString(1,a);
//            ps.setString(2,password);
            ps.executeUpdate();
            con.commit();
            response.sendRedirect("/showAll");
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(con,ps,resultSet);
        }
    }
}

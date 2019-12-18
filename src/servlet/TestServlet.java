package servlet;

import entity.Manager;
import entity.Topic;
import entity.TopicOption;
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

public class TestServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if ("/test1".equals(path)) {
            test1(request, response);
        }
    }

    protected void test1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Connection con=null;
        PreparedStatement ps=null;
        ResultSet resultSet=null;
        Topic topic =null;
        try {
            con= JDBCUtil.getConnection();
            con.setAutoCommit(false);
            String sql="select * from topic where topic_id=?";
            ps=con.prepareStatement(sql);
            ps.setString(1,"1");
            resultSet=ps.executeQuery();
            if (resultSet.next()){
                topic=new Topic();
                topic.setId(resultSet.getInt("topic_id"));
                topic.setQuestion(resultSet.getString("topic_question"));
                topic.setArea(resultSet.getString("topic_area"));
                topic.setAnswer(resultSet.getString("topic_answer"));
                topic.setAnalysis(resultSet.getString("topic_Analysis"));
                sql="select * from  topicoption where tO_topic_id=?";
                ps=con.prepareStatement(sql);
                ps.setInt(1,topic.getId());
                resultSet=ps.executeQuery();
                while (resultSet.next()){
                    TopicOption[] topicOption=new TopicOption[4];
                    if (resultSet.getString("tO_optionNumber")=="A"){
                        topicOption[0].setOptionNumber("A");
                        topicOption[0].setContent(resultSet.getString("tO_content"));
                    }
                    if (resultSet.getString("tO_optionNumber")=="B"){
                        topicOption[1].setOptionNumber("B");
                        topicOption[1].setContent(resultSet.getString("tO_content"));
                    }
                    if (resultSet.getString("tO_optionNumber")=="C"){
                        topicOption[2].setOptionNumber("C");
                        topicOption[2].setContent(resultSet.getString("tO_content"));
                    }
                    if (resultSet.getString("tO_optionNumber")=="D"){
                        topicOption[3].setOptionNumber("D");
                        topicOption[3].setContent(resultSet.getString("tO_content"));
                    }
                    topic.setTopicOption(topicOption);
                }
            }
            con.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(con,ps,resultSet);
        }
        request.getSession().setAttribute("topic", topic);
        response.sendRedirect(request.getContextPath() + "/test.jsp");
    }

}
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
import java.util.ArrayList;
import java.util.List;
/*
 * function: 
 * @Param: 
 * @Return: 
 */
public class ShowAllTopicServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if ("/a.showAll".equals(path)) {
            showAll(request, response);
        }
        if ("/b.showAll".equals(path)) {
            showAllB(request, response);
        }
    }

    protected void showAllB(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        List<Topic> topics = new ArrayList<Topic>();
        int current_id=0;
        try {
            con = JDBCUtil.getConnection();
            con.setAutoCommit(false);
            String sql = "select * from topic";
            ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                Topic topic = new Topic();
                topic.setId(resultSet.getInt("topic_id"));
                topic.setQuestion(resultSet.getString("topic_question"));
                topic.setArea(resultSet.getString("topic_answer"));
                topic.setAnswer(resultSet.getString("topic_answer"));
                topic.setAnalysis(resultSet.getString("topic_Analysis"));

                Connection con1 = null;
                PreparedStatement ps1 = null;
                ResultSet resultSet1 = null;

                try {
                    con1 = JDBCUtil.getConnection();
                    con1.setAutoCommit(false);
                    String sql1 = "select * from topicoption where tO_topic_id=?";
                    ps1 = con1.prepareStatement(sql1);
                    ps1.setInt(1, topic.getId());
                    resultSet1 = ps1.executeQuery();
                    int i = 0;
                    TopicOption[] topicOption = new TopicOption[4];
                    while (resultSet1.next()) {
                        TopicOption topicOption1 = new TopicOption();
                        String a = resultSet1.getString("tO_optionNumber");
                        String b = resultSet1.getString("tO_content");
                        topicOption1.setOptionNumber(a);
                        topicOption1.setContent(b);
                        topicOption[i] = topicOption1;
                        i++;
                    }
                    topic.setTopicOption(topicOption);
                    topics.add(topic);
                    con1.commit();
                } catch (SQLException e) {
                    e.printStackTrace();
                } finally {
                    JDBCUtil.close(con1, ps1, resultSet1);
                }
            }
            con.commit();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(con, ps, resultSet);
        }
        request.getSession().setAttribute("current_id",current_id);
        request.getSession().setAttribute("topics", topics);
        response.sendRedirect(request.getContextPath() + "/test.jsp");
    }

    protected void showAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        List<Topic> topics = new ArrayList<Topic>();
        try {
            con = JDBCUtil.getConnection();
            con.setAutoCommit(false);
            String sql = "select * from topic";
            ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                Topic topic = new Topic();
                topic.setId(resultSet.getInt("topic_id"));
                topic.setQuestion(resultSet.getString("topic_question"));
                topic.setArea(resultSet.getString("topic_answer"));
                topic.setAnswer(resultSet.getString("topic_answer"));
                topic.setAnalysis(resultSet.getString("topic_Analysis"));

                Connection con1 = null;
                PreparedStatement ps1 = null;
                ResultSet resultSet1 = null;

                try {
                    con1 = JDBCUtil.getConnection();
                    con1.setAutoCommit(false);
                    String sql1 = "select * from topicoption where tO_topic_id=?";
                    ps1 = con1.prepareStatement(sql1);
                    ps1.setInt(1, topic.getId());
                    resultSet1 = ps1.executeQuery();
                    int i = 0;
                    TopicOption[] topicOption = new TopicOption[4];
                    while (resultSet1.next()) {
                        TopicOption topicOption1 = new TopicOption();
                        String a = resultSet1.getString("tO_optionNumber");
                        String b = resultSet1.getString("tO_content");
                        topicOption1.setOptionNumber(a);
                        topicOption1.setContent(b);
                        topicOption[i] = topicOption1;
                        i++;
                    }
                    topic.setTopicOption(topicOption);
                    topics.add(topic);
                    con1.commit();
                } catch (SQLException e) {
                    e.printStackTrace();
                } finally {
                    JDBCUtil.close(con1, ps1, resultSet1);
                }
            }
            con.commit();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(con, ps, resultSet);
        }
        request.getSession().setAttribute("topics", topics);
        response.sendRedirect(request.getContextPath() + "/topicEdit.jsp");
    }
}

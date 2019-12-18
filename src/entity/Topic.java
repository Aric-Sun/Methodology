package entity;

public class Topic {
    private int id;
    private String question;
    private String area;
    private String answer;
    private String Analysis;
    private TopicOption[] topicOption=new TopicOption[4];

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getAnalysis() {
        return Analysis;
    }

    public void setAnalysis(String analysis) {
        Analysis = analysis;
    }

    public TopicOption[] getTopicOption() {
        return topicOption;
    }

    public void setTopicOption(TopicOption[] topicOption) {
        this.topicOption = topicOption;
    }
}

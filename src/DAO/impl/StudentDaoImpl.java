package DAO.impl;

import bean.Score;
import bean.SingleMessage;
import bean.Student;

import javax.naming.Name;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImpl {

    public StudentDaoImpl()

    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/constugrade?characterEncoding=UTF-8",
                "root", "");
    }

    public int getTotal() {
        int total = 0;
        try (Connection c = getConnection();
             Statement s = c.createStatement();) {

            String sql = "select count(*) from stu";

            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                total = rs.getInt(1);
            }


        } catch (SQLException e) {

            e.printStackTrace();
        }
        return total;
    }

    public void add(Student student){
        String sql = "insert into stu values(?,?,?,?,?,?)";
        try (Connection c = getConnection();
             PreparedStatement ps = c.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
             ) {

            ps.setInt(1, student.getSid());
            ps.setString(2, student.getSname());
            ps.setInt(3, student.getSclass());
            ps.setString(4,student.getScollege());
            ps.setInt(5,student.getSage());
            ps.setString(6,student.getSaddress());

            ps.execute();

        } catch (SQLException e) {

            e.printStackTrace();
        }
    }

    public void adds(Student student){
        String sql = "insert into sc values(?,?,?,?)";
        try (Connection c = getConnection();
             PreparedStatement ps = c.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
        ) {

            ps.setInt(1, student.getSid());
            ps.setInt(2, student.getCid());
            ps.setString(4,student.getCname());
            ps.setInt(3, student.getScore());

            ps.execute();

        } catch (SQLException e) {

            e.printStackTrace();
        }
    }

    public void update(Student student) {

        String sql = "update stu set Sname= ?, Sclass = ? , Scollege = ? , Sage = ? , Saddress = ?where Sid = ?";
        try (Connection c = getConnection();
             PreparedStatement ps = c.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);) {


            ps.setString(1, student.getSname());
            ps.setInt(2, student.getSclass());
            ps.setString(3,student.getScollege());
            ps.setInt(4,student.getSage());
            ps.setString(5,student.getSaddress());
            ps.setInt(6,student.getSid());
            ps.execute();
        } catch (SQLException e) {

            e.printStackTrace();
        }

    }

    public void delete(int id) {

        try (Connection c = getConnection();
             Statement s = c.createStatement();) {

            String sql = "delete from stu where Sid = " + id;

            s.execute(sql);


        } catch (SQLException e) {

            e.printStackTrace();
        }
    }

    public Student get(int id) {
        Student student = null;

        try (Connection c = getConnection();
             Statement s = c.createStatement();) {

            String sql = "select * from stu where Sid = " + id;

            ResultSet rs = s.executeQuery(sql);

            if (rs.next()) {
                student = new Student();
                int Sid = rs.getInt(1);
                String Sname = rs.getString(2);
                int Sclass = rs.getInt(3);
                String Scollege = rs.getString(4);
                int Sage = rs.getInt(5);
                String Saddress = rs.getString(6);

                student.setSid(Sid);
                student.setSname(Sname);
                student.setSclass(Sclass);
                student.setScollege(Scollege);
                student.setSage(Sage);
                student.setSaddress(Saddress);

            }

        } catch (SQLException e) {

            e.printStackTrace();
        }
        return student;
    }

    public List<Student> list() {
        return list(0, Short.MAX_VALUE);
    }

    public List<Student> list(int start, int count) {
        List<Student> students = new ArrayList<Student>();

        String sql = "select * from stu order by Sid desc limit ?,? ";

        try (Connection c = getConnection();
             PreparedStatement ps = c.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);) {

            ps.setInt(1, start);
            ps.setInt(2, count);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Student student = new Student();
                int Sid = rs.getInt(1);
                String Sname = rs.getString(2);
                int Sclass = rs.getInt(3);
                String Scollege = rs.getString(4);
                int Sage = rs.getInt(5);
                String Saddress = rs.getString(6);

                student.setSid(Sid);//对数据进行封装
                student.setSname(Sname);
                student.setSclass(Sclass);
                student.setScollege(Scollege);
                student.setSage(Sage);
                student.setSaddress(Saddress);

                students.add(student);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return students;
    }


    public List<Score> listJavascore() {
        List<Score> scores = new ArrayList<Score>();

        String sql = "select stu.Sid,stu.Sname,course.Cname,sc.Score from stu,sc,course " +
                "where sc.Sid=stu.Sid and course.Cid=sc.Cid  ";
//        and sc.Cid=4

        try (Connection c = getConnection();
             PreparedStatement ps = c.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Score score=new Score();
                score.setSid(rs.getInt(1));
                score.setSname(rs.getString(2));
                score.setCname(rs.getString(3));
                score.setScore(rs.getInt(4));
                scores.add(score);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return scores;
    }

    public List<SingleMessage> listSinglemess(Integer sid) {
        List<SingleMessage> singleMessages = new ArrayList<SingleMessage>();

        String sql = "SELECT stu.Sid,stu.Sname,stu.Sclass,stu.Scollege,stu.Sage,stu.Saddress,course.Cname,sc.Score FROM course,sc,stu " +
                "WHERE course.Cid=sc.Cid AND stu.Sid = sc.Sid  AND stu.Sid = ?";

        try (Connection c = getConnection();
             PreparedStatement ps = c.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
             ) {
            ps.setInt(1,sid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SingleMessage singleMessage=new SingleMessage();
                singleMessage.setSid(rs.getInt(1));
                singleMessage.setSname(rs.getString(2));
                singleMessage.setSclass(rs.getInt(3));
                singleMessage.setScollege(rs.getString(4));
                singleMessage.setSage(rs.getInt(5));
                singleMessage.setSaddress(rs.getString(6));
                singleMessage.setCname(rs.getString(7));
                singleMessage.setScore(rs.getInt(8));
                singleMessages.add(singleMessage);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return singleMessages;
    }







}

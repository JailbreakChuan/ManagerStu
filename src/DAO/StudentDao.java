package DAO;

import bean.Student;

import java.util.List;

public interface StudentDao {

     void add(Student student);

     void delete(String Sid);

     void  update(Student student);

     public void  get (int id);

     List<Student> find();

     List<Student> list(int start , int count);


}

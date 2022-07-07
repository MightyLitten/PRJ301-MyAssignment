/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendence;
import model.Lecturer;
import model.Session;
import model.Student;

/**
 *
 * @author apc
 */
public class AttendenceDBContext extends DBContext<Attendence> {

    public ArrayList<Attendence> listBySessionID(int seid) {
        ArrayList<Attendence> attendences = new ArrayList<>();
        try {
            String sql = "select a.SessionID,a.Status, a.Comment,a.EditDate,b.SID,b.SCode,b.SName,b.Img,c.LID,c.LName from Attendance a \n"
                    + "join Student b on a.SID = b.SID\n"
                    + "join Lecturer c on a.LID = c.LID\n"
                    + "where a.SessionID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, seid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attendence a = new Attendence();
                Session se = new Session();
                se.setSeid(seid);
                a.setSession(se);
                Lecturer le = new Lecturer();
                le.setLid(rs.getInt("LID"));
                le.setLname(rs.getString("LName"));
                a.setLecturer(le);
                Student s = new Student();
                s.setSid(rs.getInt("SID"));
                s.setSname(rs.getString("SName"));
                s.setScode(rs.getString("SCode"));
                s.setImg(rs.getString("Img"));
                a.setStudent(s);
                attendences.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendenceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return attendences;
    }

    @Override
    public ArrayList<Attendence> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attendence get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Attendence model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attendence model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attendence model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}

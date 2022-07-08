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
import model.Group;
import model.Lecturer;
import model.Student;
import model.Subject;

/**
 *
 * @author apc
 */
public class GroupDBContext extends DBContext<Group> {

    @Override
    public ArrayList<Group> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group get(int id) {
        try {
            String sql = "SELECT [GID]\n"
                    + "      ,[Gname]\n"
                    + "      ,[SubjectID]\n"
                    + "      ,[LecturerID]\n"
                    + "  FROM [Group] where GID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group g = new Group();
                g.setGid(id);
                g.setGname(rs.getString("Gname"));
                Subject su = new Subject();
                su.setSuid(rs.getInt("SubjectID"));
                g.setSubject(su);
                Lecturer l = new Lecturer();
                l.setLid(rs.getInt("LecturerID"));
                g.setLecturer(l);
                StudentDBContext stuDB = new StudentDBContext();
                g.setStudents(stuDB.listByGroup(id));
                return g;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendenceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}

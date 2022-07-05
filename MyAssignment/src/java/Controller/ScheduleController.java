/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.SlotDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.temporal.IsoFields;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author apc
 */
public class ScheduleController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    SlotDBContext slotDB = new SlotDBContext();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LocalDate ld = LocalDate.now();
        Calendar calendar = Calendar.getInstance();
        int currentYear = ld.getYear();
        int currentWeek = ld.get(IsoFields.WEEK_OF_WEEK_BASED_YEAR);
        System.out.println(currentWeek + " " + currentYear);
        int dow = LocalDate.now().getDayOfWeek().getValue();
        ArrayList<Date> days = new ArrayList<>();
        for (int i = 0; i < 7; i++) {
            Date startDate = Date.valueOf(LocalDate.now().minusDays(dow - 1).plusDays(i));
            days.add(startDate);
        }
        int weeksOfYear = Calendar.getInstance().getActualMaximum(Calendar.WEEK_OF_YEAR);
        ArrayList<String> weeks = new ArrayList<>();
        SimpleDateFormat df = new SimpleDateFormat("dd/MM");
        for (int i = 0; i < weeksOfYear; i++) {
            calendar.clear();
            calendar.set(Calendar.WEEK_OF_YEAR, i+1);
            calendar.set(Calendar.YEAR, currentYear);
            String w = df.format(calendar.getTime()) + " to ";
            calendar.add(Calendar.DATE, 6);
            w += df.format(calendar.getTime());
            weeks.add(w);
        }
        request.setAttribute("weeks", weeks);
        request.setAttribute("currentWeek", currentWeek);
        request.setAttribute("currentYear", currentYear);
        request.setAttribute("days", days);
        request.setAttribute("slots", slotDB.list());
        request.getRequestDispatcher("view/WeeklySchedule.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

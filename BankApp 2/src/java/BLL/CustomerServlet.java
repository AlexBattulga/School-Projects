
package BLL;

import DAL.CustomerDAL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Enkhbaatar
 */
public class CustomerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        
        CustomerInfoDAO customer = new CustomerInfoDAO();
        customer.setFirstName(request.getParameter("firstname"));
        customer.setLastName(request.getParameter("lastname"));
        customer.setDob(request.getParameter("dob"));
        customer.setAddress(request.getParameter("address"));
        customer.setEmail(request.getParameter("email"));
        customer.setPhoneNumber(request.getParameter("pNumber"));
        
        CustomerDAL customerDAL = new CustomerDAL();
        customerDAL.SaveCustomerInfo(customer);
        
        HttpSession session = request.getSession(true);
        
         CustomerList customerList = (CustomerList) (session.getAttribute("currentSessionUser"));
            if (customerList == null) {
                customerList = new CustomerList();
            }

       
        customerList.addCustomer(customer);
       
        session.setAttribute("currentSessionUser",customerList);
        response.sendRedirect("WelcomePage.jsp");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}

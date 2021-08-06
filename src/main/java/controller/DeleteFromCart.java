package controller;

import model.BillProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "Servlet3", value = "/delete-cart")
public class DeleteFromCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");

        // gio hang co nhieu mat hang
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("cart");// luu tam vao session

        if (obj != null) {
            Map<String, BillProduct> map = (Map<String, BillProduct>) obj;
            map.remove(key);
            // update lai vao session
            session.setAttribute("cart", map);
        }
        // chuyen ve trang gio hang
        response.sendRedirect(request.getContextPath() + "/cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package controller;

import DAO.ProductDAO;
import model.BillProduct;
import model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "Servlet", value = "/add-to-cart")
public class AddToCart extends HttpServlet {
    ProductDAO productDAO = new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");
        Product product = null;
        try {
            product = productDAO.findById(Integer.parseInt(productId));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        Object obj = session.getAttribute("cart");// luu tam vao session
        if (obj == null) {// tao moi
            // Tao mat hang
            BillProduct billProduct = new BillProduct();
            billProduct.setProduct(product);
            billProduct.setQuantity(1);
            billProduct.setUnitPrice(product.getPrice());
            // gio hang co nhieu mat hang
            Map<String, BillProduct> map = new HashMap<>();
            map.put(productId, billProduct);// them mat hang vao ds

            session.setAttribute("cart", map);// luu tam vao session
        } else {
            Map<String, BillProduct> map = (Map<String, BillProduct>) obj;

            BillProduct billProduct = map.get(productId);

            if (billProduct == null) {
                billProduct = new BillProduct();
                billProduct.setProduct(product);
                billProduct.setQuantity(1);
                billProduct.setUnitPrice(product.getPrice());

                map.put(productId, billProduct);
            } else {

                billProduct.setQuantity(billProduct.getQuantity() + 1);
            }

            session.setAttribute("cart", map);// luu tam vao session
        }

        response.sendRedirect(request.getContextPath() + "/cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

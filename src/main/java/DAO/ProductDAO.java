package DAO;

import model.Category;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements GeneralDAO<Product> {
    private final SQLConnection sqlConnection = new SQLConnection();
    private final String FIND_ALL = "SELECT * FROM product;";
    private final String CREATE = "INSERT INTO product(name, price, quantity, color, description, categoryId) values (?,?,?,?,?,?);";
    private final String FIND_BY_ID = "SELECT * FROM product where id = ?;";
    private final String UPDATE = "Update product set name = ?, price = ?, quantity = ?, color = ?, description =?, categoryId =? where id =?;";
    private final String DELETE = "DELETE from product where id =?;";
    private final String FIND_BY_NAME = "SELECT * FROM product where name like ?;";
    private final String COUNT_BY_ID = "select count(*) from product where categoryId=?;";
    private final String FIND_BY_CATEGORY_ID = "SELECT * FROM product where categoryId = ?;";
    private final String FIND_BY_PRICE = "select * from product where price between ? and ?;";
    private final String SORT_BY_PRICE_MAX = "select * from product order by price desc;";
    private final String SORT_BY_PRICE_MIN = "select * from product order by price asc;";
    private final String COUNT_PRODUCT = "select count(*) from product;";
    private final String FIND_PRODUCT_BY_PAGE = "select * from product limit ?,?;";
    private final String UPDATE_QUANTITY = "Update product set quantity=? where id =?;";
    private  final String GET_QUANTITY_BY_ID = "select quantity from product where id=?;";
    private final int endPage = 5;

    public void updateQuantity(int quantityUpdate, int id) throws SQLException, ClassNotFoundException {

        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_QUANTITY);
        preparedStatement.setInt(1, quantityUpdate);
        preparedStatement.setInt(2, id);
        preparedStatement.executeUpdate();

    }

    public int getQuantityById(int id) throws SQLException, ClassNotFoundException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(GET_QUANTITY_BY_ID);
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            return resultSet.getInt("quantity");
        }
        return 0;
    }


    @Override
    public List<Product> findAll() throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int categoryId = resultSet.getInt("categoryId");
            products.add(new Product(id, name, price, quantity, color, description, categoryId));
        }
        return products;
    }


    public List<Product> findAllByPage(int index) throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_PRODUCT_BY_PAGE);
        preparedStatement.setInt(1, index);
        preparedStatement.setInt(2, endPage);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int categoryId = resultSet.getInt("categoryId");
            products.add(new Product(id, name, price, quantity, color, description, categoryId));
        }
        return products;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ProductDAO productDAO = new ProductDAO();
        List<Product> list = productDAO.findAllByPage(5);
        for (Product p : list
        ) {
            System.out.println(p.toString());

        }
    }

    public List<Product> findAllByPriceMax() throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SORT_BY_PRICE_MAX);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int categoryId = resultSet.getInt("categoryId");
            products.add(new Product(id, name, price, quantity, color, description, categoryId));
        }
        return products;
    }


    public List<Product> findAllByPriceMin() throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SORT_BY_PRICE_MIN);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int categoryId = resultSet.getInt("categoryId");
            products.add(new Product(id, name, price, quantity, color, description, categoryId));
        }
        return products;
    }

    public int countProduct() throws SQLException, ClassNotFoundException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(COUNT_PRODUCT);
        ResultSet resultSet = preparedStatement.executeQuery();
        int count = 0;
        while (resultSet.next()) {
            count = resultSet.getInt(1);
        }
        return count;
    }


    public int countPage() throws SQLException, ClassNotFoundException {
        int count = countProduct();
        int countPage = count / endPage;
        if (count % endPage != 0) countPage++;
        return countPage;
    }


    public List<Product> findByPrice(int priceMin, int priceMax) throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_PRICE);
        preparedStatement.setInt(1, priceMin);
        preparedStatement.setInt(2, priceMax);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int categoryId = resultSet.getInt("categoryId");
            products.add(new Product(id, name, price, quantity, color, description, categoryId));
        }
        return products;
    }

    public List<Product> findByCategoryId(int cId) throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_CATEGORY_ID);
        preparedStatement.setInt(1, cId);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int categoryId = resultSet.getInt("categoryId");
            products.add(new Product(id, name, price, quantity, color, description, categoryId));
        }
        return products;
    }


    @Override
    public Product findById(int id) throws SQLException, ClassNotFoundException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            String name = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int categoryId = resultSet.getInt("categoryId");
            return new Product(id, name, price, quantity, color, description, categoryId);
        }
        return null;
    }


    @Override
    public List<Product> findByName(String name) throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_NAME);
        preparedStatement.setString(1, "%" + name + "%");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String productName = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int categoryId = resultSet.getInt("categoryId");
            products.add(new Product(id, productName, price, quantity, color, description, categoryId));
        }
        return products;
    }

    @Override
    public void add(Product product) throws SQLException, ClassNotFoundException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(CREATE);
        preparedStatement.setString(1, product.getName());
        preparedStatement.setDouble(2, product.getPrice());
        preparedStatement.setInt(3, product.getQuantity());
        preparedStatement.setString(4, product.getColor());
        preparedStatement.setString(5, product.getDescription());
        preparedStatement.setInt(6, product.getCategoryId());
        preparedStatement.executeUpdate();
    }

    @Override
    public void edit(int id, Product product) throws SQLException, ClassNotFoundException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
        preparedStatement.setString(1, product.getName());
        preparedStatement.setDouble(2, product.getPrice());
        preparedStatement.setInt(3, product.getQuantity());
        preparedStatement.setString(4, product.getColor());
        preparedStatement.setString(5, product.getDescription());
        preparedStatement.setInt(6, product.getCategoryId());
        preparedStatement.setInt(7, id);
        preparedStatement.executeUpdate();
    }

    @Override
    public void delete(int id) throws SQLException, ClassNotFoundException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
        preparedStatement.setInt(1, id);
        preparedStatement.executeUpdate();
    }
}
package dao;

import dto.Product;

import java.util.ArrayList;

public class ProductRepository {

    private ArrayList<Product> listOfProduct = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();

    public static ProductRepository getInstance() {
        return instance;
    }

    public ProductRepository() {

        Product phone = new Product("P1234", "iPhone 6s", 800000);
        phone.setDescription("4.7-inch, 1334X750 Regina HD display, 8-megapixel iSight Camera");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Apple");
        phone.setUnitsInStock(1000);
        phone.setCondition("New");

        Product notebook = new Product("P1235", "LG PC그램", 1500000);
        phone.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
        phone.setCategory("NoteBook");
        phone.setManufacturer("LG");
        phone.setUnitsInStock(1000);
        phone.setCondition("Refurbished");

        Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
        phone.setDescription("212.8*125.6*6*6.6mm, Super AMOLED display, Octa-Core processor");
        phone.setCategory("Tablet");
        phone.setManufacturer("Samsung");
        phone.setUnitsInStock(1000);
        phone.setCondition("Old");

        listOfProduct.add(phone);
        listOfProduct.add(notebook);
        listOfProduct.add(tablet);

    }

    public ArrayList<Product> getAllProducts() {
        return listOfProduct;
    }

    public Product getProductById(String productID) {
        Product productById = null;

        for (int i = 0; i < listOfProduct.size(); i++) {
            Product product = listOfProduct.get(i);
            if (product != null && product.getProductId() != null && product.getProductId().equals(productID)) {
                productById = product;
                break;
            }
        }
        return productById;
    }

    public void addProduct(Product product) {
        listOfProduct.add(product);
    }

}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import entity.Product;
import static entity.Product_.productId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author angelmungg
 */
public class Cart {

    private Map<Integer, LineItem> map;

    public Cart() {
        map = new HashMap(32);
    }

    public void add(Product product) {
        add(product, 1);
    }

    public void add(Product product, int quantity) {

        LineItem item = map.get(product.getProductId());
        if (item == null) {
            map.put(product.getProductId(),
                    new LineItem(product, quantity, product.getProductPrice()));
        } else {
            item.setQuantity(item.getQuantity() + quantity);
        }
    }

    public void update(int productid, int quantity) {
        LineItem item = map.get(productid);
        item.setQuantity(quantity);
    }

    public void remove(int productId) {
        map.remove(productId);
    }

    public int getItemCount() {
        return map.size();
    }

    public List<LineItem> getItems() {
        List<LineItem> lineItems = new ArrayList(map.values());
        return Collections.unmodifiableList(lineItems);
    }

    public double getTotalPrice() {
        double total = 0;
        for (LineItem lineItem : map.values()) {
            total = total + lineItem.getTotalPrice();
        }
        return total;
    }

    public static class LineItem {

        private Product product;
        private int quantity;
        private double price;

        public LineItem(Product product, double price) {
            this(product, 1, price);
        }

        public LineItem(Product product, int quantity, double price) {
            this.product = product;
            this.quantity = quantity;
            this.price = price;
        }

        public double getTotalPrice() {   // EL ${pl.totalPrice}
            return quantity * price;
        }

        public Product getProduct() {
            return product;
        }

        public void setProduct(Product product) {
            this.product = product;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }

    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author User
 */
public class NewClass {

    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.mycompany_ProjectWebPro_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        Query qry = em.createQuery("select p from Product p");
        List<Product> pd = qry.getResultList();
        for (Product p : pd) {
            System.out.printf("%-10d %s \n",p.getProductId());
        }
        em.close();
    }
}

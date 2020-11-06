/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author User
 */
@Entity
@Table(name = "brand")
@NamedQueries({
    @NamedQuery(name = "Brand.findAll", query = "SELECT b FROM Brand b"),
    @NamedQuery(name = "Brand.findByBrandId", query = "SELECT b FROM Brand b WHERE b.brandId = :brandId"),
    @NamedQuery(name = "Brand.findByBrandName", query = "SELECT b FROM Brand b WHERE b.brandName = :brandName"),
    @NamedQuery(name = "Brand.findByBrandQuantity", query = "SELECT b FROM Brand b WHERE b.brandQuantity = :brandQuantity")})
public class Brand implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "brandId")
    private Integer brandId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "brandName")
    private String brandName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "brandQuantity")
    private int brandQuantity;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "brandId")
    private Collection<Product> productCollection;

    public Brand() {
    }

    public Brand(Integer brandId) {
        this.brandId = brandId;
    }

    public Brand(Integer brandId, String brandName, int brandQuantity) {
        this.brandId = brandId;
        this.brandName = brandName;
        this.brandQuantity = brandQuantity;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public int getBrandQuantity() {
        return brandQuantity;
    }

    public void setBrandQuantity(int brandQuantity) {
        this.brandQuantity = brandQuantity;
    }

    public Collection<Product> getProductCollection() {
        return productCollection;
    }

    public void setProductCollection(Collection<Product> productCollection) {
        this.productCollection = productCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (brandId != null ? brandId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Brand)) {
            return false;
        }
        Brand other = (Brand) object;
        if ((this.brandId == null && other.brandId != null) || (this.brandId != null && !this.brandId.equals(other.brandId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Brand[ brandId=" + brandId + " ]";
    }
    
}

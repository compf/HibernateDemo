package HibernateDemo.model;

import jakarta.persistence.Embeddable;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

/**
 * Represent a simple address with street, house nr and post code
 */
//Provides that the address class can be embedded into another class and therefore another table
@Embeddable
public class Address {

    private String street, postCode, houseNr;

    public Address(String street, String postCode, String houseNr) {
        this.street = street;
        this.postCode = postCode;
        this.houseNr = houseNr;
    }

    public String getStreet() {
        return street;
    }

    public Address() {
    }

    public String getPostCode() {
        return postCode;
    }

    public String getHouseNr() {
        return houseNr;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public void setHouseNr(String houseNr) {
        this.houseNr = houseNr;
    }

}

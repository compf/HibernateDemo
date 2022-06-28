package HibernateDemo.model;

import java.time.LocalDate;
import java.util.Calendar;

import jakarta.persistence.Id;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;

@Entity
public class Person {

    @Id
    @GeneratedValue
    private int id;
    private String firstName;
    private String lastName;
    @Embedded
    private Address address;
    private LocalDate birthDate;

    public Person() {
    }

    public Person(String firstName, String lastName, Address address, LocalDate bDate) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.birthDate = bDate;
    }

    public int getId() {
        return this.id;
    }

    public void setAddress(Address value) {
        this.address = value;
    }

    public String getFirstName() {
        return this.firstName;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null)
            return false;
        if (obj == this)
            return true;
        if (obj instanceof Person) {
            Person p = (Person) obj;
            return p.id == this.id;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return id;
    }

    public String getLastName() {
        return this.lastName;
    }

    public Address getAddress() {
        return this.address;
    }

    public LocalDate getBirthDate() {
        return this.birthDate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

}

package HibernateDemo.model;

import java.time.LocalDate;
import java.util.Calendar;

import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;

/**
 * Represent a simple Person
 */
// Declares that this class is an entity and can be saved to the database
@Entity
/*
 * Specifies that inheritance should be resolved by creating a table for each concrete class
 * Each table has all attributes of the class and all of its base classes
 */
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Person {
    //provides that the field "id" is an ID for the database
    @Id
    // provides that the id value is generated automatically when creating an object
    @GeneratedValue
    private int id;
    private String firstName;
    private String lastName;

    // The address object is embedded into the person/student class
    // so that it hasn't it a table in the database
    @Embedded
    private Address address;
    private LocalDate birthDate;

    public Person() {
        this("New","Person",new Address("", "", ""),LocalDate.now());
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
    @Override
    public String toString(){
        return firstName+ " "+lastName;
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

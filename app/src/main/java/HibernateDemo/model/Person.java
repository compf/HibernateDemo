package HibernateDemo.model;

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
    private Calendar birthDate;
    public Person(){}
    public Person(String firstName,String lastName,Address address,Calendar bDate){
        this.firstName=firstName;
        this.lastName=lastName;
        this.address=address;
        this.birthDate=bDate;
    }
    public int getId() {
        return this.id;
    }
    public void setAddress(Address value){
        this.address=value;
    }
    
    public String getFirstName() {
        return this.firstName;
    }

    @Override
    public boolean equals(Object obj){
        if(obj==null)return false;
        if(obj==this)return true;
        if(obj instanceof Person){
            Person p=(Person)obj;
            return p.id==this.id;
        }
        return false;
    }
    @Override
    public int hashCode(){
        return id;
    }

    public String getLastName() {
        return this.lastName;
    }

   

    public Address getAddress() {
        return this.address;
    }

    

    public Calendar getBirthDate() {
        return this.birthDate;
    }

 
}
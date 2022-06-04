package HibernateDemo.model;

import java.util.Calendar;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Student extends Person {
    private int matrNumber;

    public Student( int matrNr,String firstName, String lastName, Address address, Calendar bDate) {
        super(firstName, lastName, address, bDate);
        this.matrNumber=matrNr;
    }
    public Student(){}
    
}

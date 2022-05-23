package HibernateDemo;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
@Entity
public class Person {
    @Id
    @GeneratedValue
    private long Id;
    private String name;
    public String getName(){
        return name;
    }
    public void setName(String name)
    {
        this.name=name;
    }
}

package HibernateDemo;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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

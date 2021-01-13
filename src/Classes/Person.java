package Classes;

import java.util.HashMap;
import java.util.Map;

public class Person {
    int ID;
    String firstName;
    String lastName;
    String email;
    String phone;
    String name;
    String gender;

    Map<String, String[]> subjects = new HashMap<>();

    Person() {
    }

    public String getFirstName() {
        return firstName;
    }

    public  void  setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Map<String, String[]> getSubjects() {
        return subjects;
    }

    public String getName() {
        return this.getFirstName() + this.getLastName();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}

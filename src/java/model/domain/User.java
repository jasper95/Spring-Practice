package model.domain;
// Generated Apr 8, 2015 10:55:02 AM by Hibernate Tools 4.3.1
import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import model.services.UserService;
import model.validator.user.Unique;
import org.hibernate.validator.constraints.NotBlank;
@Entity
public class User implements Serializable{
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    @NotBlank(message="Please select at least one role")
    @Unique(service=UserService.class, fieldName="username", message="Username already taken!")
    @Size(min=4, max=30)
    private String username;
    @NotBlank
    private String password;
    @NotNull(message="Please select at least one role")
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name="UsersAndRoles",
                joinColumns=@JoinColumn(name="user_id"),
                inverseJoinColumns=@JoinColumn(name="role_id"))
    private List<Role> roles;
    @Enumerated(EnumType.STRING)
    private UserStatus status;

    public User(){}

    public User(int id, String username, String password, List<Role> roles,
                UserStatus status) {
        super();
        this.id = id;
        this.username = username;
        this.password = password;
        this.roles = roles;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public UserStatus getStatus() {
        return status;
    }

    public void setStatus(UserStatus status) {
        this.status = status;
    }
	
}

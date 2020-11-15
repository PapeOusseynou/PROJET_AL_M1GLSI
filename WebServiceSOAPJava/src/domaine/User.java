package domaine;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class User
{
    private int id, type;
    private boolean isLog;
    private String name, username, email, password,gender,image,code,status;

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name= name;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getEmail()
    {
        return email;
    }

    public void Password(String password)
    {
        this.password = password;
    }

    public String getPassword()
    {
        return password;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isLog() {
        return isLog;
    }

    public void isLog(boolean login) {
        isLog = login;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }
    public void setGender(String gender)
    {
        this.gender = gender;
    }
    public String getImage()
    {
        return image;
    }
    public void setImage(String image)
    {
        this.image = image;
    }
    public String getGender()
    {
        return gender;
    }
    public void setCode(String code)
    {
        this.code = code;
    }
    public String getCode()
    {
        return code;
    }
    public void setStatus(String status)
    {
        this.status = status;
    }
    public String getStatus()
    {
        return status;
    }

    public User(String name, String username, String email, String password,String gender, String image, String code, String status) {

        setName(name);
        setUsername(username);
        setEmail(email);
        setPassword(password);
        setGender(gender);
        setImage(image);
        setCode(code);
        setStatus(status);

    }
    

	public User(String name, String username, String email, String password,String gender, String image, String code, String status, int type ,int id) {

		setName(name);
        setUsername(username);
        setEmail(email);
        setPassword(password);
        setGender(gender);
        setImage(image);
        setCode(code);
        setStatus(status);
        setType(type);
        setId(id);

    }

    public User()
    {

    }

	public void setLogin(boolean b) {
		// TODO Auto-generated method stub
		
	}
}

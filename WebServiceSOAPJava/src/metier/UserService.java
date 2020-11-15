package metier;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.jws.WebParam;
import javax.jws.WebService;

import com.sun.xml.internal.ws.client.Stub;

import domaine.User;
import dao.UserDAO;

@WebService(serviceName = "UserService")


public class UserService
{
    private static ArrayList<User> users = new ArrayList<User>();
    UserDAO userDAO = new UserDAO();


    public User userLogin(
            @WebParam(name = "username") String username,
            @WebParam(name = "password") String password) throws NoSuchAlgorithmException
    {
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] hashInBytes = md.digest(password.getBytes(StandardCharsets.UTF_8));

        StringBuilder sb = new StringBuilder();
        for (byte b : hashInBytes) {
            sb.append(String.format("%02x", b));
        }

        if(userDAO.userLogin(username, sb.toString()) == null)
        {
            return null;
        }
        else
        {
            return userDAO.userLogin(username, sb.toString());
        }
    }



    public List<User> getAllUser ()
    {
        return userDAO.getAllUser();
    }



    public String addUser(
            @WebParam(name = "name") String name,
            @WebParam(name = "username") String username,
            @WebParam(name = "email") String email,
            @WebParam(name = "password") String password,
            @WebParam(name = "gender") String gender,
            @WebParam(name = "image") String image,
            @WebParam(name = "code") String code,
            @WebParam(name = "status") String status)throws NoSuchAlgorithmException
    
    {

        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] hashInBytes = md.digest(password.getBytes(StandardCharsets.UTF_8));

        StringBuilder sb = new StringBuilder();
        for (byte b : hashInBytes) {
            sb.append(String.format("%02x", b));
        }
        User user = new User(name, username, email, password,gender,image,code,status);
        try
        {
            userDAO.addUser(user);
            return String.format("Utilisateur ajouté avec succès !");
        }
        catch(Exception e)
        {
            return String.format(e.getMessage());
        }

    }

    public String updateUser(
    		@WebParam(name = "name") String name,
            @WebParam(name = "username") String username,
            @WebParam(name = "email") String email,
            @WebParam(name = "password") String password,
            @WebParam(name = "gender") String gender,
            @WebParam(name = "image") String image,
            @WebParam(name = "code") String code,
            @WebParam(name = "status") String status)throws NoSuchAlgorithmException
    {
        User user = new User(name, username, email, password,gender,image,code,status);
        try
        {
            userDAO.updateUser(user);
            return String.format("Utilisateur modifié avec succès");
        }
        catch (Exception e)
        {
            return String.format(e.getMessage());
        }
    }

    public String deleteUser(@WebParam(name = "id") int id)
    {
        try
        {
            userDAO.deleteUser(id);
            return String.format("Utilisateur supprimé !");
        }
        catch (Exception e)
        {
            return String.format(e.getMessage());
        }
    }


}

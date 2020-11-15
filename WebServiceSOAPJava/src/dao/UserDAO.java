package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import domaine.User;
import metier.DBConnection;

public class UserDAO 
{
   
    private Connection connection;
    private PreparedStatement statement = null;
    private ResultSet result = null;



    String addQuery = "INSERT INTO users(name, username, email, password, gender,image,code,status,type) VALUES (?, ?, ?, ?, ?, ?, ?, ?1)";
    String allQuery = "SELECT * FROM users";
    String userLogin = "SELECT * FROM users WHERE username = ? and password = ?";
    String updateQuery = "update users set name = ?, username = ?, email = ?,password = ?, gender = ?, image,code = ?, status = ? where id = ?";
    String deleteQuery = "delete from users where id = ?";


    public void addUser(User user)
    {
        try
        {
            connection = DBConnection.getInstance();
            statement = connection.prepareStatement(addQuery);
            statement.setString(1, user.getName());
            statement.setString(2, user.getUsername());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());
            statement.setString(1, user.getGender());
            statement.setString(2, user.getImage());
            statement.setString(3, user.getCode());
            statement.setString(4, user.getStatus());
            statement.setInt(1, user.getType());
            statement.executeUpdate();
        }
        catch (Exception e)
        {
            System.out.println("Erreur lors de l'ajout "+e.getMessage());
        }
    }

    public User userLogin(String username, String password)
    {
        User user = null;
        try
        {
            connection = DBConnection.getInstance();
            statement = connection.prepareStatement(userLogin);
            statement.setString(1, username);
            statement.setString(2, password);
            result = statement.executeQuery();

            if(result.next())
            {
                user = new User();
                user.setId(result.getInt("iduser"));
                user.setName(result.getString("name"));
                user.setUsername(result.getString("username"));
                user.setEmail(result.getString("email"));
                user.setPassword(result.getString("password"));
                user.setGender(result.getString("gender"));
                user.setImage(result.getString("image"));
                user.setCode(result.getString("code"));
                user.setStatus(result.getString("status"));
                user.setType(result.getInt("type"));
                user.setLogin(true);
            }


        }
        catch (Exception e)
        {
            System.out.println("login DAO error");
        }

        return user;
    }


    public void updateUser(User user)
    {
        try
        {
            connection = DBConnection.getInstance();
            statement = connection.prepareStatement(updateQuery);
            statement.setString(1, user.getName());
            statement.setString(2, user.getUsername());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());
            statement.setString(1, user.getGender());
            statement.setString(2, user.getImage());
            statement.setString(3, user.getCode());
            statement.setString(4, user.getStatus());
            statement.setInt(1, user.getType());

            statement.executeUpdate();
        }
        catch (Exception e)
        {
            System.out.println(e.getMessage());
        }
    }

    public void deleteUser(int id)
    {
        try
        {
            connection = DBConnection.getInstance();
            statement = connection.prepareStatement(deleteQuery);
            statement.setInt(1, id);
            statement.executeUpdate();
        }
        catch (Exception e)
        {
            System.out.println(e.getMessage());
        }
    }


    public ArrayList<User> getAllUser()
    {
        ArrayList<User> allUser = new ArrayList<User>();

        try
        {
            connection = DBConnection.getInstance();
            statement = connection.prepareStatement(allQuery);
            result = statement.executeQuery();

            while(result.next())
            {
                User user = new User();
                user.setName(result.getString("name"));
                user.setUsername(result.getString("username"));
                user.setEmail(result.getString("email"));
                user.setPassword(result.getString("password"));
                user.setGender(result.getString("gender"));
                user.setImage(result.getString("image"));
                user.setCode(result.getString("code"));
                user.setStatus(result.getString("status"));
                user.setType(result.getInt("type"));

                allUser.add(user);
            }
        }
        catch (Exception e)
        {
            System.out.println("Erreur serveur " + e.getMessage());
        }

        return allUser;
    }

}
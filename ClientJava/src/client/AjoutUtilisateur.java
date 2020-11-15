package client;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.rmi.RemoteException;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

import service.UserService;
import service.UserService_Service;



public class AjoutUtilisateur extends JFrame implements ActionListener {
	

	private JTextField chname,chusername,chemail, chpass,chgender,chimage,chcode, chstatus,chtype;
	private JButton aj,qt,aff;
    
	public AjoutUtilisateur() {
		
		super("Ajouter un utilisateur");
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setBounds(420, 280, 629, 500);;
        this.setLocationRelativeTo(null);
        
        JPanel rootPanel = (JPanel) this.getContentPane();
        rootPanel.setLayout(null);
        
        rootPanel.setBackground(new Color(30, 144, 255));
        
        JLabel message = new JLabel("Formulaire d'ajout d'utilisateur");
        message.setForeground(new Color(255, 255, 255));
        message.setFont(new Font("Tahoma", Font.BOLD, 15));
        message.setBounds(186, 57, 301, 36);
        rootPanel.add(message);
        
        JLabel nomLabel = new JLabel("Name :");
        nomLabel.setForeground(new Color(255, 255, 255));
        nomLabel.setBounds(38, 104, 100, 31);
        rootPanel.add(nomLabel);
        
        chname= new JTextField();
        chname.setPreferredSize(new Dimension(120, 30));
        rootPanel.add(chname);
        chname.setBounds(176, 104, 277, 31);
        
        JLabel usernameLabel = new JLabel("Username:");
        usernameLabel.setForeground(new Color(255, 255, 255));
        usernameLabel.setBounds(38, 170, 116, 31);
        rootPanel.add(usernameLabel);

        chusername = new JTextField();
        chusername.setPreferredSize(new Dimension(120, 30));
        chusername.setBounds(176, 170, 277, 31);
        rootPanel.add(chusername);
        
        JLabel emailLabel = new JLabel("Login :");
        emailLabel.setForeground(new Color(255, 255, 255));
        emailLabel.setBounds(38, 236, 100, 31);
        rootPanel.add(emailLabel);
        
        chemail= new JTextField();
        chemail.setPreferredSize(new Dimension(120, 30));
        rootPanel.add( chemail);
        chemail.setBounds(176, 236, 277, 31);
        
        JLabel passwordLabel = new JLabel("Password :");
        passwordLabel.setForeground(new Color(255, 255, 255));
        passwordLabel.setBounds(38, 302, 116, 31);
        rootPanel.add(passwordLabel);

        chpass = new JTextField();
        chpass.setPreferredSize(new Dimension(120, 30));
        chpass.setBounds(176, 302, 277, 31);
        rootPanel.add(chpass);
        
        aj = new JButton("Ajouter");
        aj.setBounds(177, 368, 110, 31);
        aj.addActionListener(this);
        rootPanel.add(aj);

        qt = new JButton("Quitter");
        qt.setBounds(343, 368, 110, 31);
        qt.addActionListener(this);
        rootPanel.add(qt);

		setUndecorated(true);
		
		setVisible(true);
	}
	
	public void actionPerformed(ActionEvent e)
	{
		   if (e.getSource()==aj)
		 {
			   Client clent;
	            String name = chname.getText();
	            String username= chusername.getText();
	            String email = chemail.getText();
	            String password = chpass.getText();
	            Client.addUser(name, username, email, password);
	            

	            
		}else
				if (e.getSource()==qt)
				{
					
					dispose();
					new Accueil();
				   
				}	
	}
	

	public static void main(String[] args) {
		
		new AjoutUtilisateur();

	}

}

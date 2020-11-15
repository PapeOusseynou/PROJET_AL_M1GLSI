package client;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.rmi.RemoteException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.BevelBorder;

import service.User;


public class ClientJava extends JFrame implements ActionListener

{
	private JTextField loginfield, passwordfield;
    private JButton valider, quitter;

	public ClientJava() {
		super("Gestion des utilisateurs");
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setBounds(320, 180, 629, 329);
        this.setLocationRelativeTo(null);

        JPanel rootPanel = (JPanel) this.getContentPane();
        rootPanel.setLayout(null);

        JLabel message = new JLabel("Formulaire de connection");
        message.setForeground(new Color(255, 255, 255));
        message.setFont(new Font("Tahoma", Font.BOLD, 15));
        message.setBounds(226, 57, 171, 36);

        rootPanel.add(message);
        
        

        loginfield= new JTextField();
        loginfield.setPreferredSize(new Dimension(120, 30));
        rootPanel.add(loginfield);
        loginfield.setBounds(176, 104, 277, 31);

        JLabel logLabel = new JLabel("Login :");
       logLabel.setBounds(38, 104, 100, 31);
        logLabel.setForeground(new Color(255, 255, 255));
        rootPanel.add(logLabel);

        passwordfield = new JTextField();
        passwordfield.setPreferredSize(new Dimension(120, 30));
        rootPanel.add(passwordfield);
        passwordfield.setBounds(176, 170, 277, 31);

        JLabel passLabel = new JLabel("Mot de passe :");
        passLabel.setBounds(38, 170, 116, 31);
        passLabel.setForeground(new Color(255, 255, 255));
        rootPanel.add(passLabel);

        rootPanel.setBackground(new Color(30, 144, 255));

        valider = new JButton("Valider");
        valider.setBounds(177, 228, 110, 31);
        valider.setHorizontalAlignment(SwingConstants.CENTER);
        valider.addActionListener(this);
        rootPanel.add(valider);
        
        quitter= new JButton("Annuler");
        quitter.setBorder(new BevelBorder(BevelBorder.RAISED, null, null, null, null));
		quitter.setHorizontalAlignment(SwingConstants.CENTER);
		quitter.setBounds(343, 228, 110, 31);
		quitter.addActionListener(this);
		rootPanel.add(quitter);
        
        setUndecorated(true);
		setVisible(true);
	}

	
	  public void actionPerformed(ActionEvent e) {
		  
	        if(e.getSource() == valider)
	        {
	        	if(loginfield.getText().trim().isEmpty() && passwordfield.getText().trim().isEmpty()) {
	  			  JOptionPane.showMessageDialog( null,"Veuillez renseigner les champs!");
	  		  	}else if(loginfield.getText().trim().isEmpty()){
	  		  		
	  		  	JOptionPane.showMessageDialog( loginfield,"champs login non vide!");
	  		  	
	  		  	}else if(passwordfield.getText().trim().isEmpty()) {
	  		  		
	  		  	JOptionPane.showMessageDialog( passwordfield,"champs password non vide!");
	  		  	}else {
	        	User user = new User();
	        	String login = loginfield.getText();
	            String password = passwordfield.getText();
	        	user = Client.UserLogin(login, password);
	        	  if(user != null) {
	        		 dispose();
	        		 new Accueil(); 
	        	  }else {
	        		  JOptionPane.showMessageDialog( null,"login ou password incorrect !!");
	        	  }
	        	  }      	
	        	 
	        }else
				if (e.getSource()==quitter)
				{
					dispose();
					System.exit(0);
				    
				}
	    }
	   
	  
	public static void main(String[] args) {
		
		 new ClientJava();
	}

}

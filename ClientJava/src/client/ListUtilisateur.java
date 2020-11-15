package client;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import service.User;



public class ListUtilisateur extends JFrame implements ActionListener {
	
	private JTable table;
	private JScrollPane sc;
	private JPanel panneau1,panneau2;
	private JButton mod,qt;

	public ListUtilisateur() {
		
		setBackground(new Color(30, 144, 255));
		
		panneau1=new JPanel();
		panneau2=new JPanel();
		qt = new JButton("Quitter");
		  sc  = new JScrollPane();
		  table = new JTable();
		  sc.setViewportView(table);
		  DefaultTableModel modele = (DefaultTableModel)table.getModel();
		  modele.addColumn("Nom");
		  modele.addColumn("Prenom");
		  modele.addColumn("Login");
		  modele.addColumn("Modifier");
		  modele.addColumn("Supprimer");
		  
		  int ligne=0;
		  List<User> users = Client.getAllUser();

	        for(User user : users)
	        {
	            modele.addRow(new Object[0]);
	            modele.setValueAt(user.getName(), ligne, 0);
	            modele.setValueAt(user.getUsername(), ligne, 1);
	            modele.setValueAt(user.getPassword(), ligne, 2);
	            modele.setValueAt("Modifier", ligne, 3);
	            modele.setValueAt("Supprimer", ligne, 4);
	            table.getColumn("Modifier").setCellRenderer(new ButtonRenderer());
	            table.getColumn("Supprimer").setCellRenderer(new ButtonRenderer());
	            table.getColumnModel().getColumn(3).setCellEditor(new ClientTableRenderer(new JCheckBox()));
	            table.getColumnModel().getColumn(4).setCellEditor(new ClientTableRenderer(new JCheckBox()));

	            
	            
	            ligne ++;
	            
	        }
		  
		  setTitle("Liste des utilisateurs");
		  setSize(550,500);
		  qt.addActionListener(this); 
		  panneau1.add(sc);
		  panneau2.add(qt);
		  add(panneau1,BorderLayout.NORTH);
		  add(panneau2,BorderLayout.SOUTH);
		  setLocationRelativeTo(null);
		  setVisible(true);
	}
	
	 public void actionPerformed(ActionEvent e)
	    {
	    	if (e.getSource()==qt)
	    	{
	    		dispose();
	    		new Accueil();
	    	}
	    }

	public static void main(String[] args) {
		new ListUtilisateur();

	}

}

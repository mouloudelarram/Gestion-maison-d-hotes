/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import java.sql.ResultSet;
import java.time.LocalDateTime;

/**
 *
 * @author mouloud
 */
public class TableClient extends ConnectionGMHDB {
    public int IdClinet;
    public String FirstName;
    public String LastName;
    public String Email;
    public String Phone ;
    public String CIN;  
    
    public TableClient(){
        super();
    }
    public void pushTableClient(String FirstName, String LastName, String Email, String Phone, String CIN ) {
        try{
            statementAdmin.executeUpdate("INSERT INTO `client` (`FirstName`, `LastName`, `Email`, `Phone`, `CIN`) VALUES\n" +
            "('"+FirstName+"', '"+LastName+"','"+Email+"', '"+Phone+"', '"+CIN+"'); ");
        }catch(Exception e){
            System.out.println("Erreur table client : "+e);
        }
    }
    public ResultSet getTableClient(){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN from client");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("erreur get datas client :"+e);
            return null;
        }
    } 
    public ResultSet ChercherData(String str){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN  FROM client WHERE FirstName = '"+str+"' or LastName = '"+str+"' or CIN = '"+str+"';");
            return ResultAdmin;
            
            
        }catch(Exception e){
            System.out.println("Erreur table client  :  " + e);
            return null;
        }
    }
}

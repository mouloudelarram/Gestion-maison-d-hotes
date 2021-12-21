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
    public void pushTableClient(String FirstName, String LastName, String Email, String Phone, String CIN , int idoffre) throws Exception {
        try{
            statementAdmin.executeUpdate("INSERT INTO `client` (`FirstName`, `LastName`, `Email`, `Phone`, `CIN`, `ID_OFFER`) VALUES\n" +
            "('"+FirstName+"', '"+LastName+"','"+Email+"', '"+Phone+"', '"+CIN+"','"+idoffre+"'); ");
        }catch(Exception e){
            System.out.println("Erreur table client : "+e);
            throw new Exception("erreur in push data client");
        }
    }
    public ResultSet getTableClient(){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN, ID_OFFER, label from client, offre where ID_OFFER = IdOffre and client.status = true");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("erreur get datas client :"+e);
            return null;
        }
    } 
    public ResultSet ChercherData(String str){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN, ID_OFFER, label  FROM client, offre WHERE (FirstName = '"+str+"' or LastName = '"+str+"' or CIN = '"+str+"') and ID_OFFER = IdOffre;");
            return ResultAdmin;
            
            
        }catch(Exception e){
            System.out.println("Erreur table client  :  " + e);
            return null;
        }
    }
    public boolean ChnageStatusTableClinet(String CIN){
        try{
            statementAdmin.executeUpdate("UPDATE client set status = !status where CIN='"+CIN+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table client :"+e);
            return false;
        }
    }
    public boolean ChangeOffreTableClient(String CIN, int Idoffre){
        try{
            statementAdmin.executeUpdate("UPDATE client set ID_OFFER='"+Idoffre+"' where CIN='"+CIN+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table client :"+e);
            return false;
        }
    }
    public boolean ChangeOffreTableClient(int Idoffre){
        try{
            statementAdmin.executeUpdate("UPDATE client set status = false where status = true AND ID_OFFER='"+Idoffre+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table client :"+e);
            return false;
        }
    }
}

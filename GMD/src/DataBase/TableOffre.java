/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import java.sql.ResultSet;

/**
 *
 * @author mouloud
 */
public class TableOffre extends ConnectionGMHDB {
    int idOffre;
    String Label;
    String Type;
    boolean status;
    float price;
    public TableOffre(){
        super();
    }
     public boolean pushTableOffre(String Label, float price, String Type) {
        try{
            statementAdmin.executeUpdate("INSERT INTO `offre` (`label`, `price`,`type`) VALUES\n" +
            "('"+Label+"', '"+price+"','"+Type+"'); ");
            return true;
        }catch(Exception e){
            System.out.println("Erreur table offre : "+e);
            return false;
        }
    }
    public ResultSet getTableOffre(){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT idOffre, label, price, status from offre");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("erreur get datas offre :"+e);
            return null;
        }
    } 
    public boolean editTableOffre(String oldName, String NewName, float Price){
        try{
            statementAdmin.executeUpdate("UPDATE offre set label='"+NewName+"', price='"+Price+"'where label='"+oldName+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table offre :"+e);
            return false;
        }
    } 
    public boolean editStatusTableOffre(int idOffre){
        try{
            statementAdmin.executeUpdate("UPDATE offre set status= true where idOffre='"+idOffre+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table offre :"+e);
            return false;
        }
    } 
    public boolean removeTableOffre(String str){
        try{
            statementAdmin.executeUpdate("delete from offre where label='"+str+"'");
            return true;
        }catch(Exception e){
            System.out.println("Erreur Remove table admin :"+e);
            return false;
        }
    }
    
}

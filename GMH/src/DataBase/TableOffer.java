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
public class TableOffer extends ConnectionGMHDB {
    int idoffer;
    String Label;
    String Type;
    boolean status;
    float price;
    public TableOffer(){
        super();
    }
     public boolean pushTableOffer(String Label, float price, String Type) {
        try{
            statementAdmin.executeUpdate("INSERT INTO `offer` (`label`, `price`,`type`) VALUES\n" +
            "('"+Label+"', '"+price+"','"+Type+"'); ");
            return true;
        }catch(Exception e){
            System.out.println("Erreur table offer : "+e);
            return false;
        }
    }
    public ResultSet getTableOffer(String type){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT idoffer, label, price, status from offer where type ='"+type+"'");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("erreur get datas offer :"+e);
            return null;
        }
    } 
    public boolean editTableOffer(String oldName, String NewName, float Price, String type){
        try{
            statementAdmin.executeUpdate("UPDATE offer set label='"+NewName+"', price='"+Price+"'where label='"+oldName+"' and type='"+type+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table offer :"+e);
            return false;
        }
    } 
    public boolean editStatusTableOffer(int idOffer){
        try{
            statementAdmin.executeUpdate("UPDATE offer set status= true where idoffer='"+idOffer+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table offer :"+e);
            return false;
        }
    } 
    public boolean removeTableOffer(String str, String type){
        try{
            statementAdmin.executeUpdate("delete from offer where label='"+str+"' and type ='"+type+"'");
            return true;
        }catch(Exception e){
            System.out.println("Erreur Remove table offer :"+e);
            return false;
        }
    }
    public boolean statusTableOffer(int id_offer){
        try{
            //System.out.println("id :"+id_offer);
            ResultAdmin = statementAdmin.executeQuery("SELECT status from offer where Idoffer = "+id_offer+"");
            //System.out.println("status :"+ResultAdmin.getBoolean("status"));
            boolean var = true;
            while(ResultAdmin.next()){
                var = ResultAdmin.getBoolean("status");
            }
            return var;
        }catch(Exception e){
            System.out.println("erreur get datas offer :"+e);
            return true;
        }
    }
    public boolean changeStatusTableOffer(int id_offer, int status){
        try{
            //System.out.println("id = "+id_offer + "status :"+status);
            statementAdmin.executeUpdate("UPDATE offer set status= '"+status+"' where idoffer='"+id_offer+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table offer :"+e);
            return false;
        }
    }
    public boolean checkIfIdExist(int id_offer, String Type){
        try{
            //System.out.println("id :"+id_offer);
            ResultAdmin = statementAdmin.executeQuery("SELECT type FROM `offer` WHERE idoffer = "+id_offer+"; ");
            //System.out.println("status :"+ResultAdmin.getBoolean("status"));
            String var = "";
            while(ResultAdmin.next()) var=ResultAdmin.getString("type");
            System.out.println("var :"+var);
            if (var.equals(Type)){
                return true;
            }
            else
                return false;
           
        }catch(Exception e){
            System.out.println("erreur check if id exist  offer :"+e);
            return true;
        }
    }    
}

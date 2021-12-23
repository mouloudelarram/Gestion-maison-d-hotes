/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import DataBase.TableOffer;
import java.awt.Color;
import java.awt.Component;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.TableCellRenderer;

/**
 *
 * @author mouloud
 */
public class test extends JTable{
    @Override
    public Component prepareRenderer(TableCellRenderer renderer, int row, int column){
        try{
              Component comp = super.prepareRenderer(renderer, row, column);
              comp.setBackground(Color.white);
              comp.setForeground(Color.BLACK);
              //System.out.println(getValueAt(0,0));
              if (Object.class.equals(this.getColumnClass(column)) && (getValueAt(row,column) != null)){
                  //System.out.println("i am here");
                  String var = getValueAt(row,column).toString();
                  //System.out.println(var);
                  if (var.equals("free")){
                      comp.setBackground(Color.white);
                      comp.setForeground(Color.green);
                  }
                  if (var.equals("occuped")){
                      comp.setBackground(Color.white);
                      comp.setForeground(Color.red);
                  }                    
              }
              return comp;
        }catch(Exception e){
            System.out.println("errror test"+e);
            return null;
        }
  }
}

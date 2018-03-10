/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import main.Read;
import model.KriptoValute;
/**
 *
 * @author kingf
 */
public class Start {
    private KriptoValute kp;
    public static List<KriptoValute> kplista;
    public Start(){
        
    }
    
    public static void readUrl(String url){
        try {
            String json = Read.readUrl(url);
            Gson gson = new Gson();
            kplista = gson.fromJson(json, new TypeToken<List<KriptoValute>>(){}.getType());
            
        } catch (Exception ex) {
            Logger.getLogger(Start.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<KriptoValute> getKplista (){
        return kplista;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pos;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class JSONpos {
    public static ResultSet RetrieveData() throws Exception {
        DriverManager.registerDriver(new org.postgresql.Driver());
        String mysqlUrl = "jdbc:postgresql://localhost/sales";
        Connection con = DriverManager.getConnection(mysqlUrl, "postgres", "123");
        Statement stmt = con.createStatement();

        ResultSet rs = stmt.executeQuery("Select * from items");
        return rs;
    }

    public static void main(String args[]) throws Exception {
        JSONObject jsonObject = new JSONObject();
        JSONArray array = new JSONArray();
        ResultSet rs = RetrieveData();

        while(rs.next()) {
            JSONObject record = new JSONObject();
            record.put("Item", rs.getString("newitem"));
            record.put("Price", rs.getString("price"));
            record.put("Qty", rs.getString("qty"));
            record.put("Total", rs.getString("total"));
            array.add(record);
        }
        
        jsonObject.put("Students_data", array);
        try {
            FileWriter file = new FileWriter("output.json");
            file.write(jsonObject.toJSONString());
            file.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("JSON file created!");
    }
}

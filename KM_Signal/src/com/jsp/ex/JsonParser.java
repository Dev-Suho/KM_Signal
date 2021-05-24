package com.jsp.ex;

import java.io.FileReader;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


public class JsonParser {
	
	public static void main(String[] args) {
		JSONParser parser = new JSONParser(); 
		JSONArray sendArray = new JSONArray();
		
		try {
			Object obj = parser.parse(new FileReader("resources/json_test.json"));
			JSONObject jsonObject = (JSONObject) obj;
			System.out.println(jsonObject);
			
			//String department = (String)jsonObject.get("department");
			JSONObject volunteer = (JSONObject)jsonObject.get("volunteer");
			
			System.out.println(volunteer.values());			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}

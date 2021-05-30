package com.java.ex;

import java.io.FileReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


@WebServlet("/Main")
public class PythonData extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JSONParser parser = new JSONParser(); 
		
		try {
			Object obj = parser.parse(new FileReader("WebContent/resources/json_test.json"));
			JSONObject jsonObject = (JSONObject) obj;
			System.out.println(jsonObject);
			
			//String department = (String)jsonObject.get("department");
			JSONObject volunteer = (JSONObject)jsonObject.get("volunteer");
			
			
			request.setAttribute("volunteer", volunteer.values());
			System.out.println(volunteer.values());
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

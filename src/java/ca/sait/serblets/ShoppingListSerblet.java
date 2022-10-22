
package ca.sait.serblets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author John McSwiney
 */
public class ShoppingListSerblet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = (String) request.getSession().getAttribute("name");
        
        //delete later!
        
        if(name != null){
            this.getServletContext().getRequestDispatcher("/WEB-INF/shoppinglist.jsp").forward(request, response);
        } else{
            this.getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
       
    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        //change me
        
        if(action.equals("register")){
            String name = request.getParameter("name");
            System.out.println("testtesttest: " + name);
            
            if (name != null) {
            request.getSession().setAttribute("name", name);
            ArrayList<String> items = new ArrayList<>();
            
            request.getSession().setAttribute("items", items);
            } else{
            this.getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            }
        } else if (action.equals("add")){
            // 30:53 
            String item = request.getParameter("item");
            
            ArrayList<String> items = (ArrayList<String>) request.getSession().getAttribute("items");
            
            items.add(item);
            
            request.getSession().setAttribute("items", items);
            
        } else if(action.equals("delete")){
            String itemValue = request.getParameter("item");
            
            ArrayList<String> items = (ArrayList<String>) request.getSession().getAttribute("items");
             
            //items.remove(itemValue); 
            
            int indextodelete = -1;
            
            for(int i = 0; i< items.size(); i++){
                if (items.get(i).equals(itemValue)){
                   indextodelete = i;
                   break;
                }
            }
            if(indextodelete != -1){
                items.remove(indextodelete);
            }
            
            request.getSession().setAttribute("items", items);
        
        
        
    }else if (action.equals("logout")){
            this.getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/shoppinglist.jsp").forward(request, response);
    }
    
    
}

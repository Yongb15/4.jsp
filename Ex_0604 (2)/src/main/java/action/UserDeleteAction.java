package action;

import java.io.IOException;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/user_del")
public class UserDeleteAction extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		int res = UserDAO.getInstance().delete(idx);
		
		String result = "no";
		if(res >0) {
			result = "yes";
		}
		
		String result2 = String.format("{\"param\":\"%s\"}", result);
		response.getWriter().print(result2);
		
		
	}
}








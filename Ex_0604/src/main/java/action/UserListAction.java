package action;

import java.io.IOException;
import java.util.List;

import dao.UserDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.UserVO;

@WebServlet("/user_list")
public class UserListAction extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<UserVO> list = UserDAO.getInstance().selectList();
		
		request.setAttribute("list", list);
		
		RequestDispatcher disp = request.getRequestDispatcher("user_list.jsp");
		disp.forward(request, response);
	}
}

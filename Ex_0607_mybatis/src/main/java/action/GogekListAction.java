package action;

import java.io.IOException;
import java.util.List;

import dao.GogekDAO;
import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.GogekVO;

@WebServlet("/gogek_list")
public class GogekListAction extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<GogekVO> list = GogekDAO.getInstance().selectList();
		
		request.setAttribute("list", list);
		
		RequestDispatcher disp = request.getRequestDispatcher("gogek_list.jsp");
		disp.forward(request, response);
	}
	
}

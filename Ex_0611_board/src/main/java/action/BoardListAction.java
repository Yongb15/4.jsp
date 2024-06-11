package action;

import java.io.IOException;
import java.util.List;

import DAO.BoardDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.BoardVO;

@WebServlet("/board_list")
public class BoardListAction extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 전체목록 가져오기
		List<BoardVO> list = BoardDAO.getInstance().selectList();
		
		request.setAttribute("list", list);
		
		RequestDispatcher disp = request.getRequestDispatcher("board_list.jsp");
		disp.forward(request, response);
	}
}

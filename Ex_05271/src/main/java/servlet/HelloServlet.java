package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

// @WebServlet("/hello") : mapping("/hello"로 마지막에 요청)을 해주면 해당 주소가 브라우저에서 입력될 때 톰캣에서 찾아준다. 
@WebServlet("/hello")

// HttpServlet : 서블릿을 만들기 위해 반드시 상속해야 할 필수 클래스
public class HelloServlet extends HttpServlet{
	
	@Override
	public void init() throws ServletException {
		// 서블릿이 초기화 될 때 호출되는 메서드
		// 1. 서블릿의 초기화하는 역할
		System.out.println("[HelloServlet] init() is called");
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse response) throws ServletException, IOException {
		// 1. 입력
		// 2. 처리
		System.out.println("[HelloServlet] service() is called");
		
		int total = 0;
		
		for(int i = 1; i < 101; i++) {
			total += i;
		}
		// 3. 출력
		// PrintWriter
		// int, float, double, String 또는 Object와 같은 형태의 데이터를 콘솔이나 Java 파일에 텍스트 형식으로 쓰는데 사용되는 클래스
		response.setContentType("text/html; charset=urf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.printf("1부터 100까지의 합 : %d", total);
		out.println("</body>");
		out.println("</html>");
	}
	
	@Override
	public void destroy() {
		// 3. 뒷정리 - 서블릿이 메모리에서 제거될 때 서블릿 컨테이너에 의해서 자동 호출
		System.out.println("[HelloServlet] service() is called");
	}
}

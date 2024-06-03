package action;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload.do")
public class FileUploadAction extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 접속됨");
		
		request.setCharacterEncoding("utf-8");
		
		String web_path = "/upload2/";
		
		ServletContext application = request.getServletContext();
		String path = application.getRealPath(web_path);
		System.out.println(path);
		
		int max_size = 1024 * 1024 * 100; // 100mb
		
		MultipartRequest mr = new MultipartRequest(request, path, max_size, "utf-8", new DefaultFileRenamePolicy());
		
		String filename = "no_file";
		
		File f = mr.getFile("photo");
		
		if(f != null) {
			filename = f.getName();		// 업로드된 파일의 이름을 가져옴
		}
		
		String title = mr.getParameter("title");
		
		request.setAttribute("title", title);
		request.setAttribute("filename", filename);
		
		// 바인딩 해놓은 정보를 어디에서 사용할 것인지 지정
		RequestDispatcher disp = request.getRequestDispatcher("result.jsp");
		disp.forward(request, response);
	}
}

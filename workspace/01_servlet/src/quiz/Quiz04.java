package quiz;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Quiz04
 */
@WebServlet("/Quiz04")
public class Quiz04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Quiz04() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String title =request.getParameter("title");
		String writer= request.getParameter("writer");
		String contents=request.getParameter("contents");
		
		//ip주소
		//기본은 request.getRemoteAddr()
		//거쳐서 온 ip 는 x-forwarded-for요청 헤더에 있다.
		String ip = request.getHeader("X-forwarded-For");
		if(ip==null) {
			ip=request.getRemoteAddr();
		}
		String date =new SimpleDateFormat("yyyy-MM-dd h:mm:ss").format(new Date());
		//생성할 파일명
		String filename= date.substring(0,10)+"_" + writer +".txt";
		File file = new File("D:\\spring0303\\JSPstudy",filename);
		BufferedWriter bw =new BufferedWriter(new FileWriter(file));
		bw.write("작성일자 : " + date); bw.newLine();
		bw.write("작성ip : " + ip); bw.newLine();
		bw.write("작성자 : " + writer); bw.newLine();
		bw.write("제목 : " + title); bw.newLine();
		bw.write(contents); bw.newLine();
		
		if(bw!=null) {
			bw.close();
		}
		response.setHeader("Content-Type", "text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('" + filename + "파일이 생성되었습니다.')");
		out.println("history.back()");
		out.println("</script>");
		out.flush();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package ch07.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

/**
 * Servlet implementation class FileuploadProcessServlet
 */
@WebServlet("/fileuploadProcess")
@MultipartConfig(
//		location = "D:/upload", // 최종 저장될 업로드 경로
		fileSizeThreshold = 1024 * 1024 * 1, // 메모리 임시 저장 임계값(1MB) -> 파일을 메모리에 임시 저장할 최대 크기
		maxFileSize = 1024 * 1024 * 10, // 업로드 최대 파일 크기(10MB) -> 업로드되는 개별 파일의 최대 크기
		maxRequestSize = 1024 * 1024 * 50 // 전체 요청 크기(50MB) -> 요청 전체(모든 파일 + 모든 일반 폼 필드)의 총합 크기
)
public class FileuploadProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileuploadProcessServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = response.getWriter();

	    String uploadPath = "/Users/choejiyun/upload";
	    File dir = new File(uploadPath);
	    if (!dir.exists()) dir.mkdirs();
	    int count = 1;

	    for (Part part : request.getParts()) {

	        if (!"files".equals(part.getName())) continue;

	        String originalName = part.getSubmittedFileName();
	        if (originalName == null || originalName.isEmpty()) continue;

	        String ext = "";
	        int dot = originalName.lastIndexOf(".");
	        if (dot != -1) ext = originalName.substring(dot);

	        String uuidName = java.util.UUID.randomUUID() + ext;
	        part.write(uploadPath + File.separator + uuidName);

	        out.println(originalName + " → " + uuidName + "<br>");
	    }

	}

}

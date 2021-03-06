<%@page import="net.sf.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
    // 이미지 업로드할 경로
	//String uploadPath = "C:\\Bit\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EnglishCommunity_papago\\boardupload";
	String uploadPath1 = request.getRealPath("boardupload");
    int size = 10 * 1024 * 1024;  // 업로드 사이즈 제한 10M 이하
	
	String fileName = ""; // 파일명
	
	try{
        // 파일업로드 및 업로드 후 파일명 가져옴
		MultipartRequest multi = new MultipartRequest(request, uploadPath1, size, "utf-8", new DefaultFileRenamePolicy());
		
		fileName = multi.getFilesystemName(
				(String)(multi.getFileNames().nextElement())); 
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
            

	
    // 업로드된 경로와 파일명을 통해 이미지의 경로를 생성
	String uploadPath2 = "boardupload/" + fileName;
	System.out.println(uploadPath1);
	
    // 생성된 경로를 JSON 형식으로 보내주기 위한 설정
	JSONObject jobj = new JSONObject();
	jobj.put("url", uploadPath2);
	
	response.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한 세팅
	out.print(jobj.toString());
	

%>
package kr.co.engcom.service.timeline;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.engcom.action.Action;
import kr.co.engcom.action.ActionForward;
import kr.co.engcom.dao.TimeLineDao;
import kr.co.engcom.dto.TimeLine;

public class TimeLineUpdateService implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String msg ="";
		String url ="";
		String content_eng = request.getParameter("content_eng");
		String content_kor = request.getParameter("content_kor");
		int timelinenumber = Integer.parseInt(request.getParameter("timeLineNumber"));
		
		try {
			TimeLineDao timelinedao = new TimeLineDao();
			
			int n = timelinedao.updateTimeLine(new TimeLine(content_eng,content_kor,timelinenumber));
			if(n > 0) {
				msg="정상적으로 수정되었습니다.";
				url="default.jsp";
			}else {
				msg="수정에 실패하였습니다.";
				url="default.jsp";
			}
		} catch (Exception e) {
			msg="다시 시도해 주세요";
			url="default.jsp";
		}
		request.setAttribute("msg",msg);
	    request.setAttribute("url", url);
	
	    ActionForward forward = new ActionForward();
	    forward.setRedirect(false);
	    forward.setPath("/WEB-INF/views/redirect.jsp");
	
	return forward;
		
	}
}

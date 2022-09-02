/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.79
 * Generated at: 2022-07-05 17:10:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.community;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.kh.community.model.vo.Community;
import com.kh.community.model.vo.CoAttachment;
import com.kh.community.model.vo.Reply;
import java.util.*;
import com.kh.user.model.vo.*;
import com.kh.user.model.vo.Hospital;

public final class CommunityDetailView_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/views/community/../common/menubar.jsp", Long.valueOf(1657040184405L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("com.kh.user.model.vo");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.kh.community.model.vo.CoAttachment");
    _jspx_imports_classes.add("com.kh.user.model.vo.Hospital");
    _jspx_imports_classes.add("com.kh.community.model.vo.Reply");
    _jspx_imports_classes.add("com.kh.community.model.vo.Community");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("     \r\n");
      out.write("    			\r\n");


		Community c = (Community)request.getAttribute("c");
		// 게시글번호, 카테고리명, 제목, 내용, 작성자 아이디 ,작성일
		
		CoAttachment coat = (CoAttachment)request.getAttribute("coat");
		// 파일번호 , 원본명, 수정명, 저장경로
		
		ArrayList<Reply> list = (ArrayList<Reply>)request.getAttribute("list");
		
		

      out.write("       \r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Petist-게시글 상세보기</title>\r\n");
      out.write("<link href=\"/Petist/resources/common/logo_mint.png\" rel=\"shortcut icon\" type=\"image/x-icon\">\r\n");
      out.write("<style>\r\n");
      out.write("    .outer{\r\n");
      out.write("       \r\n");
      out.write("		color: black;\r\n");
      out.write("		width: 1100px;\r\n");
      out.write("		height: 1600px;\r\n");
      out.write("		margin: auto;\r\n");
      out.write("		margin-top: 50px;\r\n");
      out.write("    }\r\n");
      out.write("    #detail-area{\r\n");
      out.write("        border: 2px solid black;\r\n");
      out.write("        width : 830px;\r\n");
      out.write("        height : 600px;\r\n");
      out.write("    }\r\n");
      out.write("    #detail-area th{\r\n");
      out.write("        text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    #reply-area2 {\r\n");
      out.write("    \r\n");
      out.write("    	border: 2px solid black;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    #reply-area2>thead>tr>th {\r\n");
      out.write("    \r\n");
      out.write("    	text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("     #reply-area2>thead>tr>td {\r\n");
      out.write("    \r\n");
      out.write("    	text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("       #replyContent{\r\n");
      out.write("         width:830px;\r\n");
      out.write("         border : 1px solid lightgrey;\r\n");
      out.write("   }\r\n");
      out.write("   \r\n");
      out.write("     #replyBtn{\r\n");
      out.write("         text-align:center;\r\n");
      out.write("         padding-top : 10px;\r\n");
      out.write("         margin-left : 750px;\r\n");
      out.write("   }\r\n");
      out.write("   \r\n");
      out.write("    #replyBtn2{\r\n");
      out.write("         text-align:center;\r\n");
      out.write("         padding-top : 10px;\r\n");
      out.write("         margin-left : 750px;\r\n");
      out.write("   }\r\n");
      out.write("    \r\n");
      out.write("    .colist{\r\n");
      out.write("      background-color : white;\r\n");
      out.write("      padding-left:890px;\r\n");
      out.write("      margin-top: 90px;\r\n");
      out.write("      margin-bottom : 10px;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    #file{\r\n");
      out.write("    \r\n");
      out.write("    width : 100px;\r\n");
      out.write("    height : 25px;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    .updel {\r\n");
      out.write("    \r\n");
      out.write("      margin-left: 670px;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    .reply_tbody td {\r\n");
      out.write("    \r\n");
      out.write("     border-bottom: 1px solid lightgrey;\r\n");
      out.write("     align : center;\r\n");
      out.write("     width: 500px;\r\n");
      out.write("	 padding-top:10px\r\n");
      out.write("     \r\n");
      out.write("    }\r\n");
      out.write("    .reply{\r\n");
      out.write("    	margin-left:135px;\r\n");
      out.write("    	width:820px;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    .date{\r\n");
      out.write("    \r\n");
      out.write("    	padding-right:10px;\r\n");
      out.write("    }\r\n");
      out.write("	\r\n");
      out.write("	.delb {\r\n");
      out.write("		padding-left : 200px;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	#datarea {\r\n");
      out.write("	\r\n");
      out.write("		width : 1600px;\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	.conten{\r\n");
      out.write("	\r\n");
      out.write("		padding-left : 100px;\r\n");
      out.write("		\r\n");
      out.write("	}\r\n");
      out.write("    \r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	Member loginUser = (Member)session.getAttribute("loginUser");
	Hospital loginHosp = (Hospital)session.getAttribute("loginHosp");

	String alertMsg = (String)session.getAttribute("alertMsg");
	
	String contextPath = request.getContextPath();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>메뉴바</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css\">\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@11\"></script>\r\n");
      out.write("<style>\r\n");
      out.write("    .nav-area { background-color: rgb(26, 188, 156); height: 78px; }\r\n");
      out.write("\r\n");
      out.write("    .menu {\r\n");
      out.write("        display: table-cell;\r\n");
      out.write("        height: 76px;\r\n");
      out.write("        width: auto;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("        color: white;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .menu a, .menu button {\r\n");
      out.write("        color: white;\r\n");
      out.write("        font-size: 16px; \r\n");
      out.write("        font-weight: bold;\r\n");
      out.write("        display: block;\r\n");
      out.write("        width: 100%;\r\n");
      out.write("        height: 100%;\r\n");
      out.write("        line-height: 30px;\r\n");
      out.write("        padding-top: 30px;\r\n");
      out.write("        padding-left: 20px;\r\n");
      out.write("        padding-right: 20px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .menu a {\r\n");
      out.write("        text-decoration: none;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .menu button {\r\n");
      out.write("        background-color: rgb(26, 188, 156);\r\n");
      out.write("        border: none;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    #logo:hover { cursor: pointer; }\r\n");
      out.write("\r\n");
      out.write("    #petist { \r\n");
      out.write("        color: white;\r\n");
      out.write("        font-size: 36px;\r\n");
      out.write("        font-weight: bold;\r\n");
      out.write("        vertical-align: center;\r\n");
      out.write("        padding-top: 10px;\r\n");
      out.write("    }\r\n");
      out.write("    #photo {\r\n");
      out.write("        padding-left: 15px;\r\n");
      out.write("        padding-right: 15px;\r\n");
      out.write("        vertical-align: middle;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    .menu a:hover { text-decoration: underline; text-underline-position: under; text-decoration-thickness: 4px; font-size: 18px; }\r\n");
      out.write("\r\n");
      out.write("    .last { padding-right: 40px; padding-left: 40px; }\r\n");
      out.write("\r\n");
      out.write("    img { width: 55px; height: 55px; }\r\n");
      out.write("    \r\n");
      out.write("    div {\r\n");
      out.write("        box-sizing: border-box;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .content {\r\n");
      out.write("    	width: 1200px;\r\n");
      out.write("        height: auto;\r\n");
      out.write("        margin: auto;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    .content > div, .content_short > div {\r\n");
      out.write("        height: 100%;\r\n");
      out.write("        float: left;\r\n");
      out.write("        margin-top: 30px;\r\n");
      out.write("        margin-bottom: 30px;    	\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    .content_short {\r\n");
      out.write("    	width: 1200px;\r\n");
      out.write("        height: auto;\r\n");
      out.write("        margin: auto;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    .content_1 {\r\n");
      out.write("        width: 10%;\r\n");
      out.write("    }\r\n");
      out.write("    .content_2 {\r\n");
      out.write("    	width: 80%;\r\n");
      out.write("    }\r\n");
      out.write("    .content_3 {\r\n");
      out.write("    	width: 10%;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    div {\r\n");
      out.write("    	box-sizing: border-box;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("		\r\n");
      out.write("		var msg = \"");
      out.print( alertMsg );
      out.write("\";\r\n");
      out.write("		\r\n");
      out.write("		if(msg != \"null\"){\r\n");
      out.write("			Swal.fire({\r\n");
      out.write("				  title: 'Petist',\r\n");
      out.write("				  text: msg,\r\n");
      out.write("				  imageUrl: '/Petist/resources/common/logo_mint.png',\r\n");
      out.write("				  imageWidth: 130,\r\n");
      out.write("				  imageHeight: 110,\r\n");
      out.write("				  confirmButtonText: '확인',\r\n");
      out.write("				  confirmButtonColor: '#1abc9c'\r\n");
      out.write("				});\r\n");
      out.write("			\r\n");
      out.write("			");
 session.removeAttribute("alertMsg"); 
      out.write("\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("	</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<div class=\"nav-area\" align=\"right\">\r\n");
      out.write("        <div class=\"menu\" id=\"logo\" style=\"float:left;\" onclick='location.href=\"");
      out.print( contextPath );
      out.write("\";'>\r\n");
      out.write("            <div class=\"menu\" id=\"photo\">\r\n");
      out.write("                <img src=\"/Petist/resources/common/logo.png\" alt=\"로고\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <span id=\"petist\" class=\"menu\">Petist</span>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("\">HOME</a></div>\r\n");
      out.write("        <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.ho?cpage=1\">동물병원</a></div>\r\n");
      out.write("        ");
 if(loginUser == null && loginHosp == null) { 
      out.write("\r\n");
      out.write("        <!-- 로그인전에 보여지는 로그인 form -->\r\n");
      out.write("            <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/start.pe\">반려동물 관리</a></div>\r\n");
      out.write("            <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.bo?cpage=1&cno=50\">커뮤니티</a></div>\r\n");
      out.write("            <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.no?cpage=1\">공지사항</a></div>\r\n");
      out.write("            <div class=\"menu last\"><a href=\"");
      out.print( contextPath );
      out.write("/loginEnroll.us\" class=\"last\">로그인/회원가입</a></div>\r\n");
      out.write("        \r\n");
      out.write("        ");
 } else if(loginUser != null) { 
      out.write("\r\n");
      out.write("\r\n");
      out.write("            ");
 if(loginUser.getMemberId().equals("admin")) { 
      out.write("\r\n");
      out.write("            <!--  관리자로 로그인시 로그인 form -->\r\n");
      out.write("                <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.bo?cpage=1&cno=50\">커뮤니티</a></div>\r\n");
      out.write("                <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.no?cpage=1\">공지사항</a></div>\r\n");
      out.write("                <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.mem?cpage=1\">관리자페이지</a></div>\r\n");
      out.write("		        <div class=\"menu last\" style=\"vertical-align: top;\">\r\n");
      out.write("		            <p style=\"margin-top: 20px; margin-bottom: 0px; color: white;\">");
      out.print( loginUser.getMemberName() );
      out.write("</p>\r\n");
      out.write("		            <a style=\"padding-bottom: 30px; padding-top: 0; height: 30px; \" href=\"");
      out.print( contextPath );
      out.write("/logout.us\">로그아웃</a>\r\n");
      out.write("		        </div>\r\n");
      out.write("\r\n");
      out.write("            ");
 } else {  
      out.write("\r\n");
      out.write("            <!-- 개인회원 로그인 시 로그인 form -->\r\n");
      out.write("                <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/start.pe\">반려동물 관리</a></div>\r\n");
      out.write("                <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.bo?cpage=1&cno=50\">커뮤니티</a></div>\r\n");
      out.write("                <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.no?cpage=1\">공지사항</a></div>\r\n");
      out.write("                <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/myPage.us\">마이페이지</a></div>\r\n");
      out.write("                <div class=\"menu last\" style=\"vertical-align: top;\">\r\n");
      out.write("		            <p style=\"margin-top: 20px; margin-bottom: 0px; color: white;\">");
      out.print( loginUser.getMemberName() );
      out.write("</p>\r\n");
      out.write("		            <a style=\"padding-bottom: 30px; padding-top: 0; height: 30px;\" href=\"");
      out.print( contextPath );
      out.write("/logout.us\">로그아웃</a>\r\n");
      out.write("		        </div>\r\n");
      out.write("            ");
 } 
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
 } else if(loginHosp != null) { 
      out.write("\r\n");
      out.write("		<!-- 병원회원 로그인 시 로그인 form -->\r\n");
      out.write("            <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.bo?cpage=1&cno=50\">커뮤니티</a></div>\r\n");
      out.write("            <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/list.no?cpage=1\">공지사항</a></div>\r\n");
      out.write("            <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/hospitalPage.ho?hospId=");
      out.print( loginHosp.getHospId() );
      out.write("\">동물병원 관리</a></div>\r\n");
      out.write("            <div class=\"menu\"><a href=\"");
      out.print( contextPath );
      out.write("/myPage.us\">마이페이지</a></div>\r\n");
      out.write("            <div class=\"menu last\" style=\"vertical-align: top;\">\r\n");
      out.write("	            <p style=\"margin-top: 20px; margin-bottom: 0px; color: white;\">");
      out.print( loginHosp.getHospName() );
      out.write("</p>\r\n");
      out.write("	            <a style=\"padding-bottom: 30px; padding-top: 0; height: 30px;\" href=\"");
      out.print( contextPath );
      out.write("/logout.us\">로그아웃</a>\r\n");
      out.write("	        </div>       \r\n");
      out.write("        ");
 } 
      out.write(" \r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<div class=\"outer\">\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	<br>\r\n");
      out.write("	<h2 align=\"center\"></h2>\r\n");
      out.write("	<br>\r\n");
      out.write("	\r\n");
      out.write("	<div class= colist>\r\n");
      out.write("		<a href = \"");
      out.print( contextPath );
      out.write("/list.bo?cpage=1&cno=50\" class = \"btn btn-sm btn-secondary\" >목록가기</a>\r\n");
      out.write("	</div>\r\n");
      out.write("	<table id=\"detail-area\" align=\"center\" border=\"1\">\r\n");
      out.write("\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th width=\"70\" >제목</th>\r\n");
      out.write("			<td width=\"370\">&nbsp;");
      out.print(c.getCommTitle() );
      out.write("</td>\r\n");
      out.write("			<th width=\"70\" height=\"50\">카테고리</th>\r\n");
      out.write("			<td width=\"150\">&nbsp;");
      out.print(c.getCategory() );
      out.write("</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th height=\"40\">작성자</th>\r\n");
      out.write("			<td width=\"100\">&nbsp;");
      out.print(c.getCommWriter() );
      out.write("</td>\r\n");
      out.write("			<th>작성일</th>\r\n");
      out.write("			<td>&nbsp;");
      out.print(c.getCreateDate() );
      out.write("</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th height=\"300\">내용</th>\r\n");
      out.write("			<td colspan=\"3\">\r\n");
      out.write("				<p style=\"height:200px;\"> &nbsp;");
      out.print(c.getCommContent() );
      out.write("</p>\r\n");
      out.write("			</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th id = \"file\">첨부파일</th>\r\n");
      out.write("			<td colspan=\"3\">&nbsp;\r\n");
      out.write("				<!-- 첨부파일이 없을수도있다.-->\r\n");
      out.write("				");
 if(coat == null) { 
      out.write("\r\n");
      out.write("				첨부파일이 없습니다.\r\n");
      out.write("				\r\n");
      out.write("				");
 } else {
      out.write("\r\n");
      out.write("				<!-- 첨부파일이 있을수도있따-->\r\n");
      out.write("				<a download=\"");
      out.print( coat.getOriginName() );
      out.write("\" href=\"");
      out.print(contextPath );
      out.write('/');
      out.print(coat.getFilePath());
      out.write('/');
      out.print(coat.getChangeName());
      out.write('"');
      out.write('>');
      out.print(coat.getOriginName() );
      out.write("</a>\r\n");
      out.write("				");
 } 
      out.write("\r\n");
      out.write("			</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("	</table>\r\n");
      out.write("	\r\n");
      out.write("	<br>\r\n");
      out.write("		<div class=\"updel\" align=\"center\">\r\n");
      out.write("\r\n");
      out.write("		<!-- 로그인한 사용자고 그리고 현재 이 게시글의 작성자일 경우에만 수정하기 삭제하기 보여지게끔 해보자!-->\r\n");
      out.write("		");
 if( loginUser != null && c.getCommWriter().equals(loginUser.getMemberId()) ) { 
      out.write("\r\n");
      out.write("			<a href =\"");
      out.print( contextPath );
      out.write("/updateForm.bo?ccno=");
      out.print( c.getCommNo() );
      out.write("\" class =\"btn btn-sm btn-warning\">수정하기</a>\r\n");
      out.write("		<!--	<a href =\"");
      out.print( contextPath );
      out.write("/delete.bo\" class=\"btn btn-sm btn-danger\">삭제하기</a>-->\r\n");
      out.write("			<button data-toggle=\"modal\" data-target=\"#myModal\" class =\"btn btn-sm btn-danger\">삭제하기></button>\r\n");
      out.write("\r\n");
      out.write("		");
 } 
      out.write("\r\n");
      out.write("		");
 if( loginHosp != null && c.getCommWriter().equals(loginHosp.getHospId()) ) { 
      out.write("\r\n");
      out.write("			<a href =\"");
      out.print( contextPath );
      out.write("/updateForm.bo?ccno=");
      out.print( c.getCommNo() );
      out.write("\" class =\"btn btn-sm btn-warning\">수정하기</a>\r\n");
      out.write("		<!--	<a href =\"");
      out.print( contextPath );
      out.write("/delete.bo\" class=\"btn btn-sm btn-danger\">삭제하기</a>-->\r\n");
      out.write("			<button data-toggle=\"modal\" data-target=\"#myModal\" class =\"btn btn-sm btn-danger\">삭제하기</button>\r\n");
      out.write("\r\n");
      out.write("		");
 } 
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("	<br><br>\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	<!-- 댓글창 !! -->\r\n");
      out.write("	");
 if(loginUser != null){ 
      out.write("\r\n");
      out.write("	<input type='hidden' name=\"userId\" value=\"");
      out.print( loginUser.getMemberId() );
      out.write("\">\r\n");
      out.write("	");
 } else if(loginHosp != null) { 
      out.write("\r\n");
      out.write("	<input type='hidden' name=\"userId\" value=\"");
      out.print( loginHosp.getHospId() );
      out.write("\">\r\n");
      out.write("	");
 } 
      out.write("\r\n");
      out.write("	\r\n");
      out.write("\r\n");
      out.write("	<table border=\"1\" align =\"center\" id=\"reply-area1\" width =\"700\" height=\"80\">\r\n");
      out.write("			");
 if( loginUser!=null || loginHosp!=null )  {
      out.write("\r\n");
      out.write("		    <thead>\r\n");
      out.write("                     <tr>\r\n");
      out.write("                        <td colspan=\"4\"  style=\"border:none;\">\r\n");
      out.write("                           <textarea id=\"replyContent\" rows=\"5\"></textarea>\r\n");
      out.write("                        </td>\r\n");
      out.write("                         \r\n");
      out.write("                     </tr>\r\n");
      out.write("                  </thead>\r\n");
      out.write("               </table>\r\n");
      out.write("               <div id=\"replyBtn\">\r\n");
      out.write("                     <button type=\"submit\" class=\"btn btn-outline-secondary\" onclick=\"insertReply();\">댓글등록</button>\r\n");
      out.write("                    \r\n");
      out.write("               </div>\r\n");
      out.write("               <table class=\"reply\">\r\n");
      out.write("	               <br><br><br>\r\n");
      out.write("	              \r\n");
      out.write("	               <tbody class=\"reply_tbody\">\r\n");
      out.write("	              	\r\n");
      out.write("	               </tbody>\r\n");
      out.write("               \r\n");
      out.write("               </table>\r\n");
      out.write("      \r\n");
      out.write("               \r\n");
      out.write("	\r\n");
      out.write("\r\n");
      out.write("			");
 } else { 
      out.write(" \r\n");
      out.write("			\r\n");
      out.write("			<!-- 로그인이 x -->\r\n");
      out.write("		<table border=\"1\" align =\"center\" id=\"reply-area2\" width =\"700\" height=\"80\">\r\n");
      out.write("			<thead>\r\n");
      out.write("				<tr height = \"80\">\r\n");
      out.write("\r\n");
      out.write("					\r\n");
      out.write("					 <td colspan=\"4\"  style=\"border:none;\">\r\n");
      out.write("\r\n");
      out.write("					로그인 후 이용 가능한 서비스입니다.\r\n");
      out.write("					</td>\r\n");
      out.write("	\r\n");
      out.write("				</tr>\r\n");
      out.write("			</thead>\r\n");
      out.write("		</table>\r\n");
      out.write("		\r\n");
      out.write("		<tbody class=\"reply_tbody\">\r\n");
      out.write("			\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		</tbody>\r\n");
      out.write("		\r\n");
      out.write("				");
 } 
      out.write("\r\n");
      out.write("\r\n");
      out.write("	\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  	<br><br><br>\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("\r\n");
      out.write("	<br><br><br><br>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- The Modal -->\r\n");
      out.write("<div class=\"modal\" id=\"myModal\">\r\n");
      out.write("	<div class=\"modal-dialog\">\r\n");
      out.write("	  <div class=\"modal-content\">\r\n");
      out.write("  \r\n");
      out.write("		<!-- Modal Header -->\r\n");
      out.write("		<div class=\"modal-header\">\r\n");
      out.write("		  <h4 class=\"modal-title\">삭제하시겠습니까?</h4>\r\n");
      out.write("		  <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		<!-- Modal footer -->\r\n");
      out.write("		<div class=\"modal-footer\">\r\n");
      out.write("			<a href =\"");
      out.print( contextPath );
      out.write("/delete.bo?ccno=");
      out.print(c.getCommNo());
      out.write("\" class =\"btn btn-sm btn-danger\">삭제하기 </a>\r\n");
      out.write("		  <button type=\"button\" class=\"btn btn-secondary btn-sm\" data-dismiss=\"modal\">취소</button>\r\n");
      out.write("		</div>\r\n");
      out.write("  \r\n");
      out.write("	  </div>\r\n");
      out.write("	</div>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("	\r\n");
      out.write("  <br>\r\n");
      out.write("  \r\n");
      out.write("  <script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	function selectReplyList() {\r\n");
      out.write("\r\n");
      out.write("		$.ajax({\r\n");
      out.write("\r\n");
      out.write("			url : \"rlist.bo\",\r\n");
      out.write("			data : {cono : ");
      out.print( c.getCommNo() );
      out.write("},\r\n");
      out.write("			success : function(list) {\r\n");
      out.write("			\r\n");
      out.write("				// 댓글 갯수만큼 반복 => 누적(문자열)\r\n");
      out.write("				var result = \"\"\r\n");
      out.write("				var writer = [];\r\n");
      out.write("				for(var i in list) {\r\n");
      out.write("						writer = list[i].replyWriter;\r\n");
      out.write("					\r\n");
      out.write("					result += \"<tr id = 'datarea'>\"\r\n");
      out.write("							+ \"<input type='hidden' value='\" + list[i].replyNo+ \"' name='replyNo'>\"\r\n");
      out.write("							+ \"<td class='writer'>\" + list[i].replyWriter + \"</td>\"\r\n");
      out.write("							+ \"<td class='conten'>\" + list[i].replyContent + \"</td>\"\r\n");
      out.write("							+ \"<td class='date'>\" + list[i].createDate + \"</td>\"\r\n");
      out.write("							+ \"<td class='delb'>\" + \r\n");
      out.write("							\r\n");
      out.write("								showButton(writer);\r\n");
      out.write("							\r\n");
      out.write("							+ \"</td>\"\r\n");
      out.write("							+ \"</tr>\";\r\n");
      out.write("				}\r\n");
      out.write("				\r\n");
      out.write("				$(\".reply_tbody\").html(result);\r\n");
      out.write("				\r\n");
      out.write("\r\n");
      out.write("			},\r\n");
      out.write("			error : function() {\r\n");
      out.write("				console.log(\"댓글 읽어오기 실패~\");\r\n");
      out.write("			}\r\n");
      out.write("		});\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	// 자기꺼만 댓글 삭제\r\n");
      out.write("	function showButton(writer){\r\n");
      out.write("		// 로그인 유저가 관리자면 전부 댓글삭제 가능\r\n");
      out.write("		");
 if(loginUser != null && loginHosp == null) { 
      out.write("\r\n");
      out.write("		if((\"");
      out.print( loginUser.getMemberId() );
      out.write("\") == \"admin\") {\r\n");
      out.write("			return '<button onclick=\"deleteReply(this);\">댓글 삭제</button>';\r\n");
      out.write("		} else if( (\"");
      out.print( loginUser.getMemberId() );
      out.write("\") == writer ) {\r\n");
      out.write("			return '<button onclick=\"deleteReply(this);\">댓글 삭제</button>';\r\n");
      out.write("		} else {return \"\";}\r\n");
      out.write("		");
 } else if(loginHosp != null && loginUser == null) { 
      out.write("\r\n");
      out.write("		// 로그인 유저가 개인or병원 회원이면 자기 꺼만 댓글 삭제 가능\r\n");
      out.write("		 if ((\"");
      out.print( loginHosp.getHospId() );
      out.write("\") == writer) {\r\n");
      out.write("			return '<button onclick=\"deleteReply(this);\">댓글 삭제</button>';\r\n");
      out.write("		}else {return \"\";}\r\n");
      out.write("		");
 } 
      out.write("\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	// 댓글은 화면이 로딩되었을 때 곧바로 뿌려줘야 함 => window.onload => $(function(){})\r\n");
      out.write("	\r\n");
      out.write("	$(function() {\r\n");
      out.write("		\r\n");
      out.write("		selectReplyList();\r\n");
      out.write("		\r\n");
      out.write("	});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	function insertReply() {\r\n");
      out.write("		\r\n");
      out.write("		$.ajax({\r\n");
      out.write("			\r\n");
      out.write("			url : \"rinsert.bo\",\r\n");
      out.write("			data : {\r\n");
      out.write("				\r\n");
      out.write("				cono : ");
      out.print(c.getCommNo() );
      out.write(",\r\n");
      out.write("				content : $(\"#replyContent\").val(),\r\n");
      out.write("				userId: $(\"input[name='userId']\").val()\r\n");
      out.write("			},\r\n");
      out.write("			type : \"post\",\r\n");
      out.write("			success : function(result) {\r\n");
      out.write("				\r\n");
      out.write("				// result값에 따라서 성공했으면 성공메세지 띄우기\r\n");
      out.write("				\r\n");
      out.write("				if(result > 0) {\r\n");
      out.write("					\r\n");
      out.write("					alert(\"댓글작성에 성공하셨습니다\");\r\n");
      out.write("					\r\n");
      out.write("					selectReplyList();\r\n");
      out.write("					\r\n");
      out.write("					$('#replyContent').val(\"\");\r\n");
      out.write("				}\r\n");
      out.write("				\r\n");
      out.write("			},\r\n");
      out.write("			error : function() {\r\n");
      out.write("				console.log(\"댓글 작성 실패!\")\r\n");
      out.write("			}\r\n");
      out.write("			\r\n");
      out.write("		});\r\n");
      out.write("		\r\n");
      out.write("	}\r\n");
      out.write("		function deleteReply(e) {\r\n");
      out.write("			console.log($('input[name=\"replyNo\"]').val());\r\n");
      out.write("			$.ajax({\r\n");
      out.write("				url : \"rdelete.bo\",\r\n");
      out.write("				data : {\r\n");
      out.write("					rcno : $('input[name=\"replyNo\"]').val(),	\r\n");
      out.write("				},\r\n");
      out.write("				\r\n");
      out.write("				success : function(result) {\r\n");
      out.write("					\r\n");
      out.write("					if(result > 0) {		\r\n");
      out.write("						alert(\"댓글 삭제 성공~\");\r\n");
      out.write("						selectReplyList();\r\n");
      out.write("					}\r\n");
      out.write("				},		\r\n");
      out.write("				error : function() {\r\n");
      out.write("					alert(\"댓글 삭제 실패\");\r\n");
      out.write("				}\r\n");
      out.write("				\r\n");
      out.write("				});\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		// 스위트알러창\r\n");
      out.write("	    function alert(a){\r\n");
      out.write("	    	Swal.fire({\r\n");
      out.write("				  title: 'Petist',\r\n");
      out.write("				  text: a,\r\n");
      out.write("				  imageUrl: '/Petist/resources/common/logo_mint.png',\r\n");
      out.write("				  imageWidth: 130,\r\n");
      out.write("				  imageHeight: 110,\r\n");
      out.write("				  confirmButtonText: '확인',\r\n");
      out.write("				  confirmButtonColor: '#1abc9c'\r\n");
      out.write("				});\r\n");
      out.write("	    }\r\n");
      out.write("\r\n");
      out.write("  </script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
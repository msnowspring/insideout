/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.93
 * Generated at: 2019-10-17 15:45:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.fweb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class card2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/fweb/Top.jsp", Long.valueOf(1571243350121L));
    _jspx_dependants.put("/fweb/Bottom.jsp", Long.valueOf(1571238713987L));
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"Resources/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"imgs/favicon.ico\" >\r\n");
      out.write("<link rel=\"icon\" href=\"favicon.ico\" >\r\n");
      out.write("<title> 꿀비 </title>\r\n");
      out.write("<style>\r\n");
      out.write("   #container{\r\n");
      out.write("      -webkit-font-smoothing: antialiased;\r\n");
      out.write("      font-family: '돋움',Dotum,Helvetica,sans-serif;\r\n");
      out.write("      font-size: 12px;\r\n");
      out.write("      color: #666;\r\n");
      out.write("      width: 100%;\r\n");
      out.write("      position: relative;\r\n");
      out.write("      overflow: hidden;\r\n");
      out.write("      margin: 0;\r\n");
      out.write("      padding-bottom: 0;\r\n");
      out.write("   }\r\n");
      out.write("   .collect_wrap{\r\n");
      out.write("      -webkit-font-smoothing: antialiased;\r\n");
      out.write("      color: #666;\r\n");
      out.write("      font-size: 12px;\r\n");
      out.write("      font-family: NanumBarunGothic,\"나눔바른고딕\",\"Nanum Barun Gothic\",Sans-serif;\r\n");
      out.write("      overflow: hidden;\r\n");
      out.write("      width: 1098px;\r\n");
      out.write("      margin: 0 auto 90px;\r\n");
      out.write("      border-bottom: 1px solid #e5e5e5;\r\n");
      out.write("      border-top: 1px solid #e5e5e5;\r\n");
      out.write("      background: url(https://ssl.pstatic.net/happyimg2/img/mainhome/bg_crowd.gif) repeat-y;\r\n");
      out.write("   }\r\n");
      out.write("   .collect_content{\r\n");
      out.write("      -webkit-font-smoothing: antialiased;\r\n");
      out.write("      color: #666;\r\n");
      out.write("      font-family: NanumBarunGothic,\"나눔바른고딕\",\"Nanum Barun Gothic\",Sans-serif;\r\n");
      out.write("      float: left;\r\n");
      out.write("      width: 816px;\r\n");
      out.write("      padding: 60px 94px 90px;\r\n");
      out.write("      font-size: 16px;\r\n");
      out.write("   }\r\n");
      out.write("   .collect_side{\r\n");
      out.write("      -webkit-font-smoothing: antialiased;\r\n");
      out.write("      color: #666;\r\n");
      out.write("      font-family: NanumBarunGothic,\"나눔바른고딕\",\"Nanum Barun Gothic\",Sans-serif;\r\n");
      out.write("      float: left;\r\n");
      out.write("      width: 282px;\r\n");
      out.write("      font-size: 15px;\r\n");
      out.write("   }\r\n");
      out.write("   .theme{\r\n");
      out.write("      -webkit-font-smoothing: antialiased;\r\n");
      out.write("      font-family: NanumBarunGothic,\"나눔바른고딕\",\"Nanum Barun Gothic\",Sans-serif;\r\n");
      out.write("      font-size: 17px;\r\n");
      out.write("      letter-spacing: -.06em;\r\n");
      out.write("      line-height: 1;\r\n");
      out.write("      color: #E5CF51;\r\n");
      out.write("      font-weight: 700;\r\n");
      out.write("      text-decoration: none;\r\n");
      out.write("   }\r\n");
      out.write("   .tit{\r\n");
      out.write("      -webkit-font-smoothing: antialiased;\r\n");
      out.write("      margin-top: 16px;\r\n");
      out.write("      padding: 0;\r\n");
      out.write("      display: block;\r\n");
      out.write("      clear: both;\r\n");
      out.write("      content: '';\r\n");
      out.write("      margin-bottom: 15px;\r\n");
      out.write("      font-family: NanumBarunGothic,\"나눔바른고딕\",\"Nanum Barun Gothic\",Sans-serif;\r\n");
      out.write("      font-size: 36px;\r\n");
      out.write("      font-weight: 400;\r\n");
      out.write("      color: #222;\r\n");
      out.write("      letter-spacing: .4px;\r\n");
      out.write("      line-height: 40px;\r\n");
      out.write("   }\r\n");
      out.write("   .tab_cont{\r\n");
      out.write("      -webkit-font-smoothing: antialiased;\r\n");
      out.write("      color: #666;\r\n");
      out.write("      font-family: NanumBarunGothic,\"나눔바른고딕\",\"Nanum Barun Gothic\",Sans-serif;\r\n");
      out.write("      font-size: 16px;\r\n");
      out.write("      margin: 57px 0 55px;\r\n");
      out.write("   }\r\n");
      out.write("   .t_group{\r\n");
      out.write("      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;\r\n");
      out.write("      font-size: 14px;\r\n");
      out.write("      color: #2f2f2f;\r\n");
      out.write("      font-weight: 400;\r\n");
      out.write("      word-break: break-word;\r\n");
      out.write("      line-height: 140%;\r\n");
      out.write("      margin: 0;\r\n");
      out.write("      padding: 0;\r\n");
      out.write("      box-sizing: border-box;\r\n");
      out.write("      border-top: 1px solid #e0e0e0;\r\n");
      out.write("      height: 47px;\r\n");
      out.write("   }\r\n");
      out.write("   dl{\r\n");
      out.write("      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;\r\n");
      out.write("      font-size: 14px;\r\n");
      out.write("      color: #2f2f2f;\r\n");
      out.write("      font-weight: 400;\r\n");
      out.write("      word-break: break-word;\r\n");
      out.write("      line-height: 140%;\r\n");
      out.write("      margin: 0 !important;\r\n");
      out.write("      padding: 0;\r\n");
      out.write("      float: left;\r\n");
      out.write("      position: relative;\r\n");
      out.write("      width: 100%;\r\n");
      out.write("      padding-left: 120px;\r\n");
      out.write("      box-sizing: border-box;\r\n");
      out.write("      height: 47px;\r\n");
      out.write("   }\r\n");
      out.write("   dt{\r\n");
      out.write("      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;\r\n");
      out.write("      font-size: 14px;\r\n");
      out.write("      color: #2f2f2f;\r\n");
      out.write("      word-break: break-word;\r\n");
      out.write("      line-height: 140%;\r\n");
      out.write("      margin: 0;\r\n");
      out.write("      position: absolute;\r\n");
      out.write("      top: 0;\r\n");
      out.write("      left: 0;\r\n");
      out.write("      width: 120px;\r\n");
      out.write("      height: 47px;\r\n");
      out.write("      padding: 10px;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("      font-weight: 700;\r\n");
      out.write("      box-sizing: border-box;\r\n");
      out.write("      background: #f8f8f8;\r\n");
      out.write("   }\r\n");
      out.write("   dd{\r\n");
      out.write("      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;\r\n");
      out.write("      font-size: 14px;\r\n");
      out.write("      color: #2f2f2f;\r\n");
      out.write("      font-weight: 400;\r\n");
      out.write("      word-break: break-word;\r\n");
      out.write("      line-height: 140%;\r\n");
      out.write("      margin: 0;\r\n");
      out.write("      width: 100%;\r\n");
      out.write("      height: 47px;\r\n");
      out.write("      padding: 10px;\r\n");
      out.write("      box-sizing: border-box;\r\n");
      out.write("   }\r\n");
      out.write("   .side_tit{\r\n");
      out.write("      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;\r\n");
      out.write("      font-size: 14px;\r\n");
      out.write("      color: #2f2f2f;\r\n");
      out.write("      font-weight: 400;\r\n");
      out.write("      word-break: break-word;\r\n");
      out.write("      line-height: 140%;\r\n");
      out.write("      position: relative;\r\n");
      out.write("      margin: 0 0 20px 0;\r\n");
      out.write("      padding: 25px;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("      background: #E5CF51;\r\n");
      out.write("      font-size: 18px;\r\n");
      out.write("      color: #fff;\r\n");
      out.write("      font-weight: 700;\r\n");
      out.write("   }\r\n");
      out.write("   .try{\r\n");
      out.write("      word-break: break-word;\r\n");
      out.write("      margin: 10px 90px;\r\n");
      out.write("      cursor: pointer;\r\n");
      out.write("      background: none;\r\n");
      out.write("      display: inline-block;\r\n");
      out.write("      min-height: 35px;\r\n");
      out.write("      padding: 5px 20px;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("      background-color: #fff;\r\n");
      out.write("      border: 1px solid #cdcdcd;\r\n");
      out.write("      border-radius: 4px;\r\n");
      out.write("      box-sizing: border-box;\r\n");
      out.write("      vertical-align: middle;\r\n");
      out.write("      line-height: 160%;\r\n");
      out.write("      border-color: #E5CF51;\r\n");
      out.write("      color: #E5CF51!important;\r\n");
      out.write("   }\r\n");
      out.write("   .try:focus {\r\n");
      out.write("      outline-color: #B2977B;\r\n");
      out.write("   }\r\n");
      out.write("   .stitle {\r\n");
      out.write("   \t\tfont-size:23px;\r\n");
      out.write("   \t\tpadding-top:30px;\r\n");
      out.write("   \t\tmargin:0px;\r\n");
      out.write("   \t\tfont-weight:500;\r\n");
      out.write("   \t\tcolor:#444;\r\n");
      out.write("   }\r\n");
      out.write("   .scont {\r\n");
      out.write("   \t\tpadding-top:17px;\r\n");
      out.write("   \t\tfont-size:17px;\r\n");
      out.write("   }\r\n");
      out.write("   .dimg {\r\n");
      out.write("   \t\tpadding-top:20px;\r\n");
      out.write("   \t\twidth: 628px;\r\n");
      out.write("   }\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"Resources/css/bootstrap.min.css\">\r\n");
      out.write("<style>\r\n");
      out.write("\t.header{\r\n");
      out.write("\t\tmargin-top:30px;\r\n");
      out.write("\t\tmargin-bottom:30px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.today{\r\n");
      out.write("\t\tpadding-top:7px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.searchimg {\r\n");
      out.write("\t\twidth:18px;\r\n");
      out.write("\t\theight:18px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.loginimg {\r\n");
      out.write("\t\twidth:30px;\r\n");
      out.write("\t\theight:30px;\r\n");
      out.write("\t\tfloat:right;\r\n");
      out.write("\t\tmargin-top:5px;\r\n");
      out.write("\t\tmargin-right:15px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.menudiv{\r\n");
      out.write("\t\ttext-align:center;\r\n");
      out.write("\t\tpadding-top:25px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.menuitem {\r\n");
      out.write("\t\tpadding: 0px 30px 0px 30px;\r\n");
      out.write("\t\tfont-size:25px;\r\n");
      out.write("\t\tfont-weight:600;\r\n");
      out.write("\t\tcolor:#000;\r\n");
      out.write("\t\tfont-align:center;\r\n");
      out.write("\t}\r\n");
      out.write("\t.menuitem:hover {\r\n");
      out.write("\t\t/* color:#C3A88C; */\r\n");
      out.write("\t\tcolor:#EACC1A;\r\n");
      out.write("\t\ttext-decoration:none;\r\n");
      out.write("\t}\r\n");
      out.write("\t.redmenu {\r\n");
      out.write("\t\tcolor:#AB3839;\r\n");
      out.write("\t}\r\n");
      out.write("\t.redmenu:hover {\r\n");
      out.write("\t\tcolor:#F86C6B;\r\n");
      out.write("\t}\r\n");
      out.write("\t/* .bcolor {\r\n");
      out.write("\t\tbackground:#888888;\r\n");
      out.write("\t} */\r\n");
      out.write("\t.logo {\r\n");
      out.write("\t\twidth:20px;\r\n");
      out.write("\t\theight:20px;\r\n");
      out.write("\t\tmargin-left:15px;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<script src=\"Resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<header class=\"header\" class=\"header\">\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"col-sm-2\">\r\n");
      out.write("\t\t\t<img class =\"logo\" src=\"imgs/logo.jpg\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-sm-5\"></div>\r\n");
      out.write("\t\t<div class=\"col-sm-2 today\">\r\n");
      out.write("\t\t\t<span> Today with </span>\r\n");
      out.write("\t\t\t<span> 0 </span>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-sm-2\">\r\n");
      out.write("\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t<input type=\"text\" class=\"form-control\" placeholder=\"Search\" aria-label=\"Search\" aria-describedby=\"button-addon2\">\r\n");
      out.write("\t\t\t\t<div class=\"input-group-append\">\r\n");
      out.write("\t\t\t\t\t<button class=\"btn btn-secondary\" type=\"button\"><img class =\"searchimg\" src=\"imgs/search.png\"></button>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-sm-1\">\r\n");
      out.write("\t\t\t<img class =\"loginimg\" src=\"imgs/loginimg.png\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"col\">\r\n");
      out.write("\t\t\t<div class=\"menudiv\">\r\n");
      out.write("\t\t\t\t<a href=\"donation.jsp\" class=\"menuitem give\" aria-current=\"false\"> 기부 </a>\r\n");
      out.write("\t\t\t\t<a href=\"volunteer.jsp\" class=\"menuitem\" aria-current=\"false\"> 봉사 </a>\r\n");
      out.write("\t\t\t\t<a href=\"campaign.jsp\" class=\"menuitem\" aria-current=\"false\"> 캠페인 </a>\r\n");
      out.write("\t\t\t\t<a href=\"drank.jsp\" class=\"menuitem\" aria-current=\"false\"> 기부순위 </a>\r\n");
      out.write("\t\t\t\t<a href=\"gogodonation.jsp\" class=\"menuitem redmenu\" aria-current=\"false\"> 기부해요 </a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</header>\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"container\">\r\n");
      out.write("   <div class=\"collect_wrap\">\r\n");
      out.write("      <div class=\"collect_content\">\r\n");
      out.write("         <a href=\"#\" class=\"theme\">기부  &gt; 분류</a>\r\n");
      out.write("         <h3 class=\"tit\"> 어르신들의 겨울을 따뜻하게 </h3>\r\n");
      out.write("         <div class=\"tab_cont\">\r\n");
      out.write("            <div class=\"t_group\">\r\n");
      out.write("               <dl style=\"margin:0;\">\r\n");
      out.write("                  <dt>기부 기간</dt> <dd>2019-10-10~ 2019-12-31</dd>\r\n");
      out.write("               </dl>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"t_group\">\r\n");
      out.write("               <dl>\r\n");
      out.write("                  <dt>기부 단체</dt> <dd>나눔코리아</dd>\r\n");
      out.write("               </dl>\r\n");
      out.write("            </div>\r\n");
      out.write("            <img src=\"imgs/cimg2.jpg\" class=\"dimg\">\r\n");
      out.write("            <p class=\"stitle\"> 연탄제 함부로 차지마라! 너는 누군가에게 한번이라도 뜨거운 사람이었느냐 </p>\r\n");
      out.write("            <p class=\"scont\">\r\n");
      out.write("\t\t\t\t한 해 겨울을 지내려면 연탄이 최소 900-1200장이 있어야 하는데\t<br>\r\n");
      out.write("\t\t\t\t올해도 기부의 손길이 2017년에 비해 40퍼센트 넘게 줄었으며\t<br>\r\n");
      out.write("\t\t\t\t자원봉사자의 발길도 뜸 해 졌습니다..\t<br>\r\n");
      out.write("\t\t\t\t해마다 기름값과 연탄가격이 고속 상승하여\t<br>\r\n");
      out.write("\t\t\t\t서민들의 삶은 갈수록 팍팍해져만 가고 있습니다.\t<br>\r\n");
      out.write("\t\t\t\t없는 사람에게는 커다란 부담이 됩니다.\t<br>\r\n");
      out.write("\t\t\t\t연탄한장을 아끼려고 추위에 떨면서 몸부림치는 사람도 있습니다.\t<br>\r\n");
      out.write("\t\t\t\t이들은 추운겨울나기가 더욱 추워지기만 합니다.\t<br>\r\n");
      out.write("            </p>\r\n");
      out.write("            \r\n");
      out.write("            <p class=\"stitle\"> 여러분의 작은 움직임에 나눔코리아는 더욱 노력하겠습니다 </p>\r\n");
      out.write("            <p class=\"scont\">\r\n");
      out.write("\t\t\t\t이들에게 따뜻한 겨울이 되도록 사랑이 담긴 따뜻한 연탄을 보내주어야 할 때입니다.\t<br>\r\n");
      out.write("\t\t\t\t'사랑의 연탄나눔'은 많은분들이 삼삼오오 아름다운 뜻을 모아\t<br>\r\n");
      out.write("\t\t\t\t나눔코리아가사랑나누기,행복더하기를 실천하는 뜨겁고 따뜻한 활동입니다\t<br>\r\n");
      out.write("\t\t\t\t나눔코리아와 사랑의 연탄릴레이를 통해 소외된 이웃들에게\t<br>\r\n");
      out.write("\t\t\t\t온기와 사랑으로 마음의 온도를 높여가는건 어떨까요?\t<br>\r\n");
      out.write("\t\t\t\t이 추운겨울 이웃간에 인정과 사랑이 넘쳐 연탄의 눈물이 사랑의 뜨거운 눈물이 되길 바래봅니다.\t<br>\r\n");
      out.write("            </p>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            <div class=\"t_group\">\r\n");
      out.write("               <dl style=\"margin:0;\">\r\n");
      out.write("                  <dt style=\"background:#fff;border-right:1px solid #e0e0e0;\">기부 기간</dt> <dd>2019-10-10~ 2019-12-31</dd>\r\n");
      out.write("               </dl>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"t_group\">\r\n");
      out.write("               <dl style=\"margin:0;\">\r\n");
      out.write("                  <dt style=\"background:#fff;border-right:1px solid #e0e0e0;\">기부 대상</dt> <dd>쪽방촌 주민</dd>\r\n");
      out.write("               </dl>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"t_group\">\r\n");
      out.write("               <dl style=\"margin:0;\">\r\n");
      out.write("                  <dt style=\"background:#fff;border-right:1px solid #e0e0e0;\">대상 수</dt> <dd>20명</dd>\r\n");
      out.write("               </dl>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"t_group\">\r\n");
      out.write("               <dl>\r\n");
      out.write("                  <dt style=\"background:#fff;border-right:1px solid #e0e0e0;\">기대 효과</dt> <dd>- 취약계층을 위한 연탄 공급</dd>\r\n");
      out.write("               </dl>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"collect_side\">\r\n");
      out.write("         <div class=\"side_tit\">기부 참여</div>\r\n");
      out.write("         <div class=\"t_group\">\r\n");
      out.write("            <dl style=\"margin:0;\">\r\n");
      out.write("               <dt>구분</dt> \r\n");
      out.write("               <dd>\r\n");
      out.write("                  <input type=\"radio\" name=\"chk_btn\" value=\"individual\" checked=\"checked\">개인\r\n");
      out.write("                  <input type=\"radio\" name=\"chk_btn\" value=\"group\">단체\r\n");
      out.write("               </dd>\r\n");
      out.write("            </dl>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"t_group\">\r\n");
      out.write("            <dl style=\"margin:0;\">\r\n");
      out.write("               <dt>이름</dt> \r\n");
      out.write("               <dd> <input type=\"text\" name=\"name\" size=\"15\"> </dd>\r\n");
      out.write("            </dl>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"t_group\">\r\n");
      out.write("            <dl style=\"margin:0;\">\r\n");
      out.write("               <dt>연락처</dt> \r\n");
      out.write("               <dd>\r\n");
      out.write("                  <input type=\"text\" name=\"name\" size=\"15\">\r\n");
      out.write("               </dd>\r\n");
      out.write("            </dl>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"t_group\" >\r\n");
      out.write("            <dl style=\"margin:0;\">\r\n");
      out.write("               <dt>이메일</dt> \r\n");
      out.write("               <dd> <input type=\"text\" name=\"name\" size=\"15\"> </dd>\r\n");
      out.write("            </dl>\r\n");
      out.write("         </div>\r\n");
      out.write("         <button type=\"button\" onclick=\"#\" class=\"try\">신청하기</button>\r\n");
      out.write("      </div>\r\n");
      out.write("   </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"Resources/css/bootstrap.min.css\">\r\n");
      out.write("<style>\r\n");
      out.write("\t.fdiv{\r\n");
      out.write("\t\t/* background-color:#D1C6BA; */\r\n");
      out.write("\t\tbackground-color:#DDD18D;\r\n");
      out.write("\t\tmargin-top:20px;\r\n");
      out.write("\t\tmargin-bottom:30px;\r\n");
      out.write("\t\tpadding: 20px 30px 20px 30px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.companyimg{\r\n");
      out.write("\t\twidth:15px;\r\n");
      out.write("\t\theight:15px;\r\n");
      out.write("\t\tmargin-top:5px;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<script src=\"Resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<footer class=\"fdiv\">\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<span> 서울특별시 성동구 살곶이길 200 </span>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<span> 대표전화 : 02-2290-2200 </span>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<img class=\"companyimg\" src=\"imgs/company.png\">\r\n");
      out.write("\t\t<span> Copyright © InsideOut. All Rights Ressrved. </span>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
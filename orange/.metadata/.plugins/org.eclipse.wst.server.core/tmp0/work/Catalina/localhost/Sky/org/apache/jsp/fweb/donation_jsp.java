/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.93
 * Generated at: 2019-10-17 15:40:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.fweb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.jsoup.select.Elements;
import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public final class donation_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>꿀비</title>\t\r\n");
      out.write("<link rel=\"stylesheet\" href=\"Resources/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"imgs/favicon.ico\" >\r\n");
      out.write("<link rel=\"icon\" href=\"favicon.ico\" >\r\n");
      out.write("<style>\r\n");
      out.write("\t.give {\r\n");
      out.write("\t\tcolor:#C3A88C;\r\n");
      out.write("\t}\r\n");
      out.write("\t.card_wrap {\r\n");
      out.write("\t    width: 1164px;\r\n");
      out.write("\t    margin: 12px 0 -24px -24px;\r\n");
      out.write("\t    clear: both;\r\n");
      out.write("\t}\r\n");
      out.write("\t.card {\r\n");
      out.write("\t    font-size: 14px;\r\n");
      out.write("\t    line-height: 19px;\r\n");
      out.write("\t    -webkit-font-smoothing: antialiased;\r\n");
      out.write("\t    box-sizing: border-box;\r\n");
      out.write("\t    text-decoration: none;\r\n");
      out.write("\t    color: inherit;\r\n");
      out.write("\t    float: left;\r\n");
      out.write("\t    position: relative;\r\n");
      out.write("\t    width: 212px;\r\n");
      out.write("\t    height: 300px;\r\n");
      out.write("\t    margin: 0 0 20px 20px;\r\n");
      out.write("\t    padding: 0;\r\n");
      out.write("\t    background-color: #fff;\r\n");
      out.write("\t    font-family: NanumSquareWebFont,dotum,Sans-serif;\r\n");
      out.write("\t    \r\n");
      out.write("\t}\r\n");
      out.write("\t.card_content {\r\n");
      out.write("\t    padding: 21px 10px 0px 10px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.card_organization {\r\n");
      out.write("\t\tpadding-top:7px;\r\n");
      out.write("\t\tfont-size: 12px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.card_img {\r\n");
      out.write("\t    vertical-align: top;\r\n");
      out.write("\t     width:212px;\r\n");
      out.write("\t     height:150px;\r\n");
      out.write("\t     margin: 0;\r\n");
      out.write("\t     padding: 0;\r\n");
      out.write("\t}\r\n");
      out.write("\t.card:hover{\r\n");
      out.write("\t\tbox-sizing: border-box;\r\n");
      out.write("\t\tborder:solid 1px;\r\n");
      out.write("\t\ttext-decoration: none;\r\n");
      out.write("\t\tcolor: inherit;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<script src=\"Resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"Resources/jquery/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\t");

	//크롤링 할 페이지 url 지정
			String url = "http://www.goodneighbors.kr/support/index.gn";
			String selector = "div.overseas_group";
	        String selector2 = "div.domestic_area";
	        Document doc = null;
	        
	        try {
	            doc = Jsoup.connect(url).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
	        } catch (IOException e) {
	            System.out.println(e.getMessage());
	        }
	        
	        
	        
	        ////국내후원
	        Elements domestic = doc.select(selector2);
	        Elements domestic2 = doc.select("div.domestic_area>div");
	        
	        //국내후원 title
	        String dtitle = domestic.select("div.domestic_con>p.font1").html();
	        dtitle = dtitle.replace('"',' ');
	        dtitle = dtitle.replace('.',' ');
	        //System.out.println(dtitle);
	        
	        //국내후원 내용 
	        String dcontent = domestic.select("div.domestic_con>p.font2").html();
	        //System.out.println(dcontent);
	        
	        //국내후원 이미지
	        domestic.select("div.domestic_con").remove();
	        String dimg = domestic.html();
	        //System.out.println(dimgs);
	        
	        //국내후원 버튼
	        domestic2.select("p.font1").remove();
	        domestic2.select("p.font2").remove();
	        String dbutton = domestic2.html();
	        //System.out.println(dbutton); 
	        
	        
	        
	        
	        
	        
	        
	        ////해외후원
	        Elements oversea = doc.select(selector); // 2. doc에서 selector의 내용을 가져와 Elemntes 클래스에 담는다.
	        Elements oversea2 = doc.select("div.overseas_group>ul");
	        Elements oversea3 = doc.select("div.overseas_group>ul>li");
	        
	        //해외후원 각 항목별 title
	        String otitle = oversea.select("ul>li>p.overseas_font1").html();
	        String[] otitles = otitle.split("\n");
	        //System.out.println(otitles[1]);
	        //System.out.println(otitle);
	        
	        //해외후원 각 항목별 내용
	        String ocontent = oversea.select("ul>li>p.overseas_font2").html();
	        String[] ocontents = ocontent.split("\n");
	        //System.out.println(ocontent);
	        
	        
	        //해외후원 각 항목별 이미지
	        String oimgs = "";
	        
	        
	        //해외후원 각 항목별 버튼
	        oversea3.select("p.overseas_font1").remove();
	        oversea3.select("p.overseas_font2").remove();
	        String obutton = oversea3.html();
	        String[] obuttons = obutton.split("\n");
	        //System.out.println(obutton); 
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- Top 불러옴 -->\r\n");
      out.write("\t");
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
      out.write("\t<div class = \"center\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col\">\r\n");
      out.write("\t\t\t\t<div id=\"rdonaboxes\" class=\"card_wrap\">\t\r\n");
      out.write("\t\t\t\t\t<!-- 국내 -->\r\n");
      out.write("\t\t\t\t\t<a class=\"card\" href=\"https://www.goodneighbors.kr/support_pay/regular.gn\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"http://www.goodneighbors.kr/images/support/domestic_img.jpg\" class=\"card_img\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card_content\">\r\n");
      out.write("\t\t\t\t\t\t\t<strong class=\"card_title\"> ");
      out.print( dtitle );
      out.write(" </strong>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card_organization\"> ");
      out.print( dcontent );
      out.write(" </div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<!--  <div class=\"card\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"http://www.goodneighbors.kr/images/support/domestic_img.jpg\">\r\n");
      out.write("\t\t\t\t    \t\t<h5 class=\"card-title\">\r\n");
      out.write("\t\t\t\t    \t\t\t");
      out.print( dtitle );
      out.write("\r\n");
      out.write("\t\t\t\t    \t\t</h5>\r\n");
      out.write("\t\t\t\t\t   \t\t<p class=\"card-text\">\r\n");
      out.write("\t\t\t\t\t   \t\t\t");
      out.print( dcontent );
      out.write("\r\n");
      out.write("\t\t\t\t\t   \t\t</p>\r\n");
      out.write("\t\t\t\t\t   \t\t\r\n");
      out.write("\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t</div>-->\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<!-- 해외 -->\r\n");
      out.write("\t\t\t\t\t");

						for(int i=0; i<otitles.length; i++){
					
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<a href=\"https://www.goodneighbors.kr/support_pay/regular.gn\" class=\"card\">\r\n");
      out.write("\t\t\t\t\t\t\t");

								oimgs = "http://www.goodneighbors.kr/images/support/overseas_img" + (i+1) +".jpg";
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<img src=");
      out.print( oimgs );
      out.write(" class=\"card_img\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card_content\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<strong class=\"card_title\"> ");
      out.print(otitles[i] );
      out.write(" </strong>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card_organization\"> ");
      out.print( ocontents[i] );
      out.write(" </div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<!-- 이건 아님****************\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("\t\t\t\t\t\t\t");
 oimgs = ((String)"http://www.goodneighbors.kr/images/support/overseas_img"+ i + ".jpg"); 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<img src= oimgs>\r\n");
      out.write("\t\t\t\t\t\t   \t\t<h5 class=\"card-title\">\r\n");
      out.write("\t\t\t\t\t\t   \t\t\t");
      out.print( otitles );
      out.write("\r\n");
      out.write("\t\t\t\t\t\t    \t</h5>\r\n");
      out.write("\t\t\t\t\t\t    \t<p class=\"card-text\">\r\n");
      out.write("\t\t\t\t\t    \t\t\t");
      out.print( ocontent );
      out.write("\r\n");
      out.write("\t\t\t\t\t    \t\t</p>\r\n");
      out.write("\t\t\t\t\t    \t\t\r\n");
      out.write("\t\t\t\t\t    \t</div>\r\n");
      out.write("\t\t\t\t\t\t</div> -->\r\n");
      out.write("\t\t\t\t\t");

						}
					
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<!-- 사이트 카드들 -->\r\n");
      out.write("\t\t\t\t\t<!-- card1 -->\r\n");
      out.write("\t\t\t\t\t<a href=\"card1.jsp\" class=\"card\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"imgs/cimg1.png\" class=\"card_img\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card_content\">\r\n");
      out.write("\t\t\t\t\t\t\t<strong class=\"card_title\"> 생리대가 필요한 아이들 </strong>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card_organization\"> 생리대는 선택이 아닌 필수품입니다 </div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<!-- card2 -->\r\n");
      out.write("\t\t\t\t\t<a href=\"card2.jsp\" class=\"card\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"imgs/cimg2.jpg\" class=\"card_img\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card_content\">\r\n");
      out.write("\t\t\t\t\t\t\t<strong class=\"card_title\"> 어르신들의 겨울을 따뜻하게 </strong>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card_organization\"> 몸도 마음도 따뜻해지는 연탄 나눔 </div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<!-- card3 -->\r\n");
      out.write("\t\t\t\t\t<a href=\"card3.jsp\" class=\"card\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"imgs/cimg3.jpg\" class=\"card_img\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card_content\">\r\n");
      out.write("\t\t\t\t\t\t\t<strong class=\"card_title\"> 공부가 하고싶어요 </strong>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card_organization\"> 아이들에게 공부함의 행복을 주세요 </div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- Bottom 불러옴 -->\r\n");
      out.write("\t");
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
      out.write("</div>\r\n");
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
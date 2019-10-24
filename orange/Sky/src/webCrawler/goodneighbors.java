package webCrawler;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class goodneighbors {
	public static void main(String[] args) {
		
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
        System.out.println(dtitle);
        
        
        //국내후원 내용 
        String dcontent = domestic.select("div.domestic_con>p.font2").html();
        System.out.println(dcontent);
        
        //국내후원 이미지
        domestic.select("div.domestic_con").remove();
        String dimgs = domestic.html();
        System.out.println(dimgs);
        
        //국내후원 버튼
        domestic2.select("p.font1").remove();
        domestic2.select("p.font2").remove();
        String dbutton = domestic2.html();
        System.out.println(dbutton); 
        
        
        
        
        
        
        
        ////해외후원
        Elements oversea = doc.select(selector); // 2. doc에서 selector의 내용을 가져와 Elemntes 클래스에 담는다.
        Elements oversea2 = doc.select("div.overseas_group>ul");
        Elements oversea3 = doc.select("div.overseas_group>ul>li");
        
        //해외후원 각 항목별 title
        String otitle = oversea.select("ul>li>p.overseas_font1").html();
        otitle.split(otitle);
        System.out.println(otitle);
        
        //해외후원 각 항목별 내용
        String ocontent = oversea.select("ul>li>p.overseas_font2").html();
        ocontent.split(ocontent);
        System.out.println(ocontent);
        
        
        //해외후원 각 항목별 이미지
        oversea2.select("li.overseas_body").remove();
        String oimgs = oversea2.html();
        oimgs.split(oimgs);
        System.out.println(oimgs);
       
       
        //해외후원 각 항목별 버튼
        oversea3.select("p.overseas_font1").remove();
        oversea3.select("p.overseas_font2").remove();
        String obutton = oversea3.html();
        obutton.split(obutton);
        System.out.println(obutton);    
        
        
        System.out.println("=====================================================================================");
        String[] otitles = otitle.split("\n");
        	System.out.println(otitles[1]+"\n");
        
        
        System.out.println("=====================================================================================");
        String[] ocontents = ocontent.split("\n");
        System.out.println(ocontents[0]);
        
        

        
	}
	
	
}
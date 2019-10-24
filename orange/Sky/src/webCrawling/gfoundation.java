package webCrawling;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class gfoundation {
	public static void main(String[] args) {
		List<String> titles = new ArrayList<String>();
		for(int n=1; n<6; n++) {
			String gurl = "https://www.gfound.org/bbs/board.php?bo_table=support_1&page="+n;
			String selector = "div.bo_list";
		    Document doc = null;
		    
		    try {
		        doc = Jsoup.connect(gurl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
		    } catch (IOException e) {
		        System.out.println(e.getMessage());
		    }
		    
		    //메인 요소 선택
		    Elements gfound = doc.select("ul>li");
		    
		    //gfound title
		    String gtitle = gfound.select("p.s_list_stit").html();
		    System.out.println(gtitle);
		    
		    String[] gtitles = gfound.select("p.s_list_stit").html().split("\n");
		    for(int t=0; t<gtitles.length; t++) {
		    	titles.add(gtitles[t]);
		    }
		    
		    //gfound url
			String[] urls = gfound.select("span.s_list_btn").html().split("\n");
			for(int g=0; g<urls.length; g++) {
				urls[g] = urls[g].substring(9, 92);
				System.out.println(urls[g]);
			}
			
			//gfound img
			String[] imgs = gfound.select("div.s_list_phot>a").html().split("\n");
			for(int i=0; i<imgs.length; i++) {
				imgs[i] = imgs[i].substring(10, 135);
				System.out.println(imgs[i]);
			}
		    
		}
		System.out.println(titles);

	}
}

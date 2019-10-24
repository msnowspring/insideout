package webCrawling;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class weca {
	public static void main(String[] args) {
			String caurl = "http://www.weca.or.kr/donation/campaign.asp";
			String selector = "div.services_wrapper>div.campaign_box";
		    Document doc = null;
		    
		    try {
		        doc = Jsoup.connect(caurl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
		    } catch (IOException e) {
		        System.out.println(e.getMessage());
		    }
		    
		    //메인 요소 선택
		    Elements weca = doc.select(selector);
		    
		    //weca title
		    String[] catitles = weca.select("a>div.img_container>div.campaign_tex>dl>dt.tit").html().split("\n");
		    for(int t=0; t<catitles.length; t++) {
		    	System.out.println(catitles[t]);
		    }
		    
		    //weca img
		    weca.select("a>div.img_container>div.campaign_img").remove();
		    weca.select("a>div.img_container>div.campaign_tex").remove();
			String[] caimgs = weca.select("a>div.img_container").html().split("\n");
			for(int i=0; i<caimgs.length; i++) {
				caimgs[i] = "http://www.weca.or.kr" + caimgs[i].substring(10, 35);
				int idx = caimgs[i].indexOf('"');
				caimgs[i] = caimgs[i].substring(0,idx);
				System.out.println(caimgs[i]);
			}
		    
		    //weca url
			weca.select("a>div.img_container").remove();
			String[] caurls = weca.html().split("\n");
			for(int u=0; u<caurls.length; u++) {
				if(u==3) {
					caurls[u] = caurls[u].substring(9, 27);
					System.out.println(caurls[u]);
				}else {
					caurls[u] = caurls[u].substring(9, 53);
					System.out.println(caurls[u]);
				}
			}
			

	}

}

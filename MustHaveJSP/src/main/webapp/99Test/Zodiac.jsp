<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! public int age(int currentYear, int bornYear){
		return currentYear - bornYear + 1;
}
//	public String zodiac (int bornYear){
//		switch (bornYear % 12) {
//        case 0: return "원숭이";
//        case 1: return "닭";
//        case 2: return "개";
//        case 3: return "돼지";
//        case 4: return "쥐";
//        case 5: return "소";
//        case 6: return "호랑이";
//        case 7: return "토끼";
//        case 8: return "용";
//        case 9: return "뱀";
//        case 10: return "말";
//        case 11: return "양";
//        default: return "알 수 없음";
//    }
//}
	
	public String zodiac [] = {"원숭이","닭","개","돼지","쥐","소","호랑이","토끼","용","뱀","말","양"};
		
	public String getZodiac(int bornYear) {
		int i = bornYear % 12;
		return zodiac[i];		
	}

%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

int currentYear = LocalDate.now().getYear();
//int year = 2024;
int bornYear = Integer.parseInt(request.getParameter("bornYear"));
//	if (bornYear != null)
//		out.println("나이를 입력하세요");

int ageResult = age(currentYear, bornYear);
String zodiacResult = getZodiac(bornYear);
%>

<%= bornYear %>년에 태어난 당신은 <br />
<%= currentYear %>년 올해 한국 나이로 <%= ageResult %>살이고 <br />
<%= zodiacResult %>띠 입니다.

</body>
</html>
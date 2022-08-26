package dao;

import dto.Book;
import java.util.ArrayList;

public class BookRepository {

	ArrayList<Book> listOfBook = new ArrayList<>();
	private static BookRepository instance = new BookRepository();

	public BookRepository(){

		Book helloCoding= new Book("Hello Coding", "HTML+CSS3", 15000);
		helloCoding.setAuthor("황재호");
		helloCoding.setDescription("워드나 PPT 문서를 만들 수있나요? 그러면 문제없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으...");
		helloCoding.setPublisher("한빛미디어");
		helloCoding.setCategory("Hello Coding");
		helloCoding.setUnitsInStock(1);
		helloCoding.setTotalPages(100);
		helloCoding.setReleaseDate("최근");
		helloCoding.setCondition("신규");


		Book itMobile1 = new Book("IT모바일", "쉽게 배우는 자바 프로그래밍", 27000);
		itMobile1.setAuthor("우종중");
		itMobile1.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현...");
		itMobile1.setPublisher("한빛미디어");
		itMobile1.setCategory("IT 모바일");
		itMobile1.setUnitsInStock(1);
		itMobile1.setTotalPages(100);
		itMobile1.setReleaseDate("최근");
		itMobile1.setCondition("신규");

		Book itMobile2 = new Book("IT 모바일", "스프링4 입문", 27000);
		itMobile2.setAuthor("하세가와 유이치, 오오노 와타루, 토키 코헤이(권은철, 전민수)");
		itMobile2.setDescription("스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다...");
		itMobile2.setPublisher("한빛미디어");
		itMobile2.setCategory("IT 모바일");
		itMobile2.setUnitsInStock(1);
		itMobile2.setTotalPages(100);
		itMobile2.setReleaseDate("최근");
		itMobile2.setCondition("신규");

		listOfBook.add(helloCoding);
		listOfBook.add(itMobile1);
		listOfBook.add(itMobile2);

	}

	public ArrayList<Book> getAllBooks(){

		return listOfBook;
	}

	public Book getBookByID(String id){
		Book book = null;

		for(int i=0; i< listOfBook.size(); i++){
			if(listOfBook.get(i).getBookdId().equals(id)){
				book = listOfBook.get(i);
			}
		}
		return book;
	}

	public static BookRepository getInstance(){
		return instance;
	}
	public void addBook(Book book){
		listOfBook.add(book);
	}

}
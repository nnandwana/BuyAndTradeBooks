package books.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



import books.bean.Books;
import books.dao.copy.BookDao;

public class BooksHomeModel {
	
	BookDao bookDB=new BookDao();
	public ArrayList<Books> getBooks() {
		ArrayList<Books> books=new ArrayList<Books>();
		
		try{
		Connection bookDbConn=bookDB.getDbConnection();
		Statement bookSt=bookDbConn.createStatement();
		String allBooks="select book_name,book_price,book_image,author from books";
		ResultSet bookSet=bookSt.executeQuery(allBooks);
		while(bookSet.next()) {
			Books booksBean = new Books();
			//booksBean.setBookId(bookSet.getInt(1));
			booksBean.setBookName(bookSet.getString(1));
			booksBean.setBookPrice(bookSet.getLong(2));
			booksBean.setImg_path(bookSet.getString(3));
			booksBean.setAuthor(bookSet.getString(4));
			books.add(booksBean);
			booksBean.num_objects();
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		bookDB.dbClose();
		return books;
		
	}

}

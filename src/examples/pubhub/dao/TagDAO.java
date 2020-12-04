package examples.pubhub.dao;

import java.util.List;

import examples.pubhub.model.Book;

public interface TagDAO {
	public void addTagToBook(Book book, String tag);
	public void removeTagFromBook(Book book, String tag);
	public List<String> getTagsFromBook(Book book);
	public List<Book> getBooksWithTag(String tag);
}

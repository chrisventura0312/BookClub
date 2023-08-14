package com.codingdojo.bookclub.repositories;


//spring imports
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

//java util imports
import java.util.List;

//local imports
import com.codingdojo.bookclub.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {

    List<Book> findAll();
}



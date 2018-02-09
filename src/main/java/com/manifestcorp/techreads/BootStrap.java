package com.manifestcorp.techreads;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import com.manifestcorp.techreads.repository.BookRepository;
import com.manifestcorp.techreads.model.Book;

@Component
public class BootStrap implements ApplicationListener<ContextRefreshedEvent> {

	@Autowired
	protected BookRepository bookRepository;

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		Date dateAdded = new Date();
		
		if (bookRepository.count() < 3) {
			bookRepository.save(new Book("Beginning Groovy and Grails", "Chris Judd", "1", "Unread",
					"https://images-na.ssl-images-amazon.com/images/I/51B4gUxY6TL._SX376_BO1,204,203,200_.jpg",
					new SimpleDateFormat("MM/DD/YYYY").format(dateAdded)));
			bookRepository.save(new Book("Pro Eclipse JST", "Chris Judd", "1", "Unread",
					"https://images-na.ssl-images-amazon.com/images/I/51-eC24xkwL._SX376_BO1,204,203,200_.jpg",
					new SimpleDateFormat("MM/DD/YYYY").format(dateAdded)));
			bookRepository.save(new Book("Enterprise Java Development on a Budget", "Chris Benoit", "1", "Unread",
					"https://images-na.ssl-images-amazon.com/images/I/51zhaUJHriL._SX404_BO1,204,203,200_.jpg",
					new SimpleDateFormat("MM/DD/YYYY").format(dateAdded)));

		}
	}

}
package csjobs.model.dao;

import java.util.List;

import csjobs.model.User;

public interface UserDao {

    User getUser( Long id );

    User getUser( String email );
    
    List<User> getUser();
    List<User> getUser1();
    User saveUser( User user );

}

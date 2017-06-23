package csjobs.model.dao;

import java.util.List;

import csjobs.model.Application;
import csjobs.model.Fileu;
import csjobs.model.Job;
import csjobs.model.User;
public interface ApplicationDao {

    Application getApplication( Long id );

    Application getApplication( Job job, User applicant );
    
    List<Application> getAppl();
    
    public Fileu uploadCv(Fileu appl);
    public Fileu uploadRS(Fileu appl);
    public Fileu uploadTS(Fileu appl);
    
    List<Application> getUsersList( Long id );
    
    public Application getApplication( Long id , Long jid );
    
    Application saveApplication( Application application );
    

}

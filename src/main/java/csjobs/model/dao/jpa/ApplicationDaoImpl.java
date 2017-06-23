package csjobs.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import csjobs.model.Application;
import csjobs.model.Fileu;
import csjobs.model.Job;
import csjobs.model.User;
import csjobs.model.dao.ApplicationDao;

@Repository
public class ApplicationDaoImpl implements ApplicationDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
	@PostAuthorize("hasRole('ROLE_ADMIN') or returnObject.applicant.email == principal.username or hasRole('ROLE_REVIEWER')")
    public Application getApplication( Long id )
    {
        return entityManager.find( Application.class, id );
    }

    @Override
    public Application getApplication( Job job, User applicant )
    {
        String query = "from Application where job = :job and applicant = :applicant";

        List<Application> results = entityManager
            .createQuery( query, Application.class )
            .setParameter( "job", job )
            .setParameter( "applicant", applicant )
            .getResultList();
        return results.size() == 0 ? null : results.get( 0 );
    }

    @Override
	
    @Transactional
    public Application saveApplication( Application application )
    {
        return entityManager.merge( application );
    }
    
   

	@Override
	@Transactional
    public   Fileu uploadCv(Fileu appl)
    {
        return entityManager.merge( appl );
    }

	@Override
	@Transactional
    public   Fileu uploadRS(Fileu appl)
    {
        return entityManager.merge( appl );
    }
	
	@Override
	@Transactional
    public   Fileu uploadTS(Fileu appl)
    {
        return entityManager.merge( appl );
    }
	
	@Override
	public List<Application> getAppl() {
		
		return entityManager
	            .createQuery( "from Application order by id asc", Application.class )
	            .getResultList();
	}
	
	@Override
    public List<Application> getUsersList( Long id )
    {
        return entityManager
            .createQuery( "from Application where job.id = '"+id+"' order by id asc", Application.class )
            .getResultList();
    }
	
	@Override
	@PostAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_REVIEWER')")
    public Application getApplication( Long id , Long jid )
    {
        String query = "from Application where job.id = :jid and applicant.id = :id";

        List<Application> results = entityManager
            .createQuery( query, Application.class )
            .setParameter( "id", id )
            .setParameter( "jid", jid )
            .getResultList();
        return results.size() == 0 ? null : results.get( 0 );
    }
	


}

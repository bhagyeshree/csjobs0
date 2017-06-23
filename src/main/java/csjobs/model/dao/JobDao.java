package csjobs.model.dao;

import java.util.List;

import csjobs.model.Job;
import csjobs.model.Review;

public interface JobDao {

    Job getJob( Long id );

    List<Job> getJobs();
    List<Review> getReview(Long id);
    List<Job> getOpenJobs();

    Job saveJob( Job job );

}

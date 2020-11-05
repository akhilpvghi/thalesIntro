package com.myapplication.demo.dao;

import com.myapplication.demo.model.Expert;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExpertRepo extends CrudRepository<Expert, Long>
{

}

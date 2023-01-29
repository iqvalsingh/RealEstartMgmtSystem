/**
 * 
 */
package com.rems.repo.impl;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.util.CollectionUtils;

import com.rems.repo.CommonRepo;

/**
 * @author Satbir Kaur
 *
 */
@Repository
public class CommonRepoImpl implements CommonRepo
{
	@PersistenceContext
	EntityManager entityManager;

	@Override
	public Object create(Object object)
	{
		entityManager.persist(object);
		return object;
	}

	@Override
	public Object update(Object object)
	{
		return entityManager.merge(object);
	}

	@Override
	public <T> T getById(Class<T> clazz, Serializable id)
	{
		return entityManager.find(clazz, id);
	}

	@Override
	public <T> List<T> getAll(Class<T> clazz)
	{
		return (List<T>) entityManager.createQuery("from " + clazz.getName()).getResultList();
	}

	@Override
	public void delete(Object object)
	{
		entityManager.remove(object);
	}

	@Override
	public <T> void deleteById(Class<T> clazz, Serializable id)
	{
		T entity = entityManager.find(clazz, id);
		delete(entity);
	}

	@Override
	public void detach(Object object)
	{
		entityManager.detach(object);
	}

	@Override
	public void flush()
	{
		entityManager.flush();
		entityManager.clear();
	}

	@Override
	public Map<String, Integer> getCountOfAllTables()
	{
		Map<String, Integer>	tableNameRowCount	= null;
		List<Object[]>			result				= (List<Object[]>) entityManager
				.createNativeQuery(
						"SELECT TABLE_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'remsdb'")
				.getResultList();
		if (!CollectionUtils.isEmpty(result))
		{
			tableNameRowCount = new HashMap<>();
			for (Object[] row : result)
			{
				tableNameRowCount.put((String) row[0], Integer.parseInt(row[1].toString()));
			}
		}
		return tableNameRowCount;
	}

}

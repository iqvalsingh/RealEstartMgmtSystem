package com.rems.repo;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface CommonRepo
{
	Object create(Object object);

	Object update(Object object);

	<T> T getById(Class<T> clazz, Serializable id);

	<T> List<T> getAll(Class<T> clazz);

	void delete(Object object);

	<T> void deleteById(Class<T> clazz, Serializable id);

	void detach(Object object);

	void flush();

	Map<String, Integer> getCountOfAllTables();
}

/**
 * 
 */
package com.rems.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rems.bo.State;
import com.rems.repo.CommonRepo;
import com.rems.services.StateService;

/**
 * @author Satbir Kaur
 *
 */
@Service
@Transactional
public class StateServiceImpl implements StateService
{
	@Autowired
	@Qualifier("commonRepoImpl")
	CommonRepo commonRepo;

	@Override
	public List<State> getAllState()
	{
		return commonRepo.getAll(State.class);
	}

	@Override
	public State getStateById(int stateId)
	{
		return commonRepo.getById(State.class, stateId);
	}

	@Override
	public void updateState(State state)
	{
		commonRepo.update(state);
	}

	@Override
	public void saveState(State state)
	{
		commonRepo.create(state);
	}

	@Override
	public void flush()
	{
		commonRepo.flush();
	}

}

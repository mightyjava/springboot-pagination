package com.mightyjava.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.mightyjava.model.Address;

public interface AddressRepository extends PagingAndSortingRepository<Address, Long> {
	@Query("FROM Address")
	List<Address> addressList();
}

package com.mightyjava.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.mightyjava.model.Address;

public interface AddressService {
	List<Address> addressList();
	
	Page<Address> findAll(Pageable pageable);
	
	Address findOne(Long id);
	
	String addAddress(Address address);
	
	String deleteAddress(Long id);
	
	void refreshCache();
}

package service.impl;

import bean.Customer;
import dao.ICustomerDao;
import dao.imp.CustomerDaoImpl;
import service.ICustomerService;

public class CustomerServiceImpl implements ICustomerService {

	ICustomerDao customerDao;
	public CustomerServiceImpl(){
		customerDao=new CustomerDaoImpl();
	}
	@Override
	public void save(Customer customer) {
		customerDao.save(customer);
	}
	@Override
	public int isExist(String account) {
		return customerDao.isExist(account);
	}
	@Override
	public Customer getById(String customerId) {
		return customerDao.getById(customerId);
	}
	@Override
	public String verify(String customerName, String password) {
		return customerDao.verify(customerName, password);
	}
}
package com.hybrid.aspect;

import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Aspect
public class TransactionAspect {
	
	static Log log = LogFactory.getLog(TransactionAspect.class);
	
	DataSource dataSource;
	
	public void setDataSource(DataSource ds) {
		this.dataSource = ds;
	}
	
	@Around("execution(public * com.hybrid.service.*Service.*(..))")		/*before, after, afterreturnning, afterThrowing 4가지 전부 가동.*/
	public Object around(ProceedingJoinPoint pjp) throws Throwable {
		
		DataSourceTransactionManager tm = new DataSourceTransactionManager(dataSource);
		TransactionDefinition td = new DefaultTransactionDefinition();
		TransactionStatus ts = tm.getTransaction(td);
		log.info("### transaction start");
		Object rtn=null;
		try {
			rtn = pjp.proceed();
			tm.commit(ts);							//commit
			log.info("### commit");
		} catch (Throwable t) {
			tm.rollback(ts);					
			//rollback.각각의 실행 객체에 대해서 rollback. delete, isert 작업 등 한가지 flow로 실행 되어야 하면, 1객체 내에 2개 method로 넣어야 error가 없어 진다.
			log.info("### rollback");
			throw t;
		} finally {
			
		}
		
		return rtn;
	}

}

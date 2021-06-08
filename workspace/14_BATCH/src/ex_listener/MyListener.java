package ex_listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;

/**
 * Application Lifecycle Listener implementation class MyListener
 *
 */
//@WebListener//리스너
public class MyListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
	SchedulerFactory factory = null;
	Scheduler scheduler = null;
    public MyListener() {
        // TODO Auto-generated constructor stub
    	try {
    		factory = new StdSchedulerFactory();
    		scheduler = factory.getScheduler();
    	}catch(SchedulerException e) {
    		e.printStackTrace();
    	}
    	
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	System.out.println("리스너 종료");
    	try {
    	scheduler.shutdown();
    	}catch(SchedulerException e) {
    		e.printStackTrace();
    	}
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	System.out.println("=====webService Start!=====");
    	try {
    		JobDetail job = JobBuilder.newJob(MyJob.class).withIdentity("myJob","group2").build();
    		
    		CronTrigger trigger = TriggerBuilder
    				.newTrigger().withIdentity("myTrigger","group2")
    				.withSchedule(CronScheduleBuilder.cronSchedule("0 0/1 * 1/1 * ? *")).build();
    				
  
    	
    	scheduler.start();
    	scheduler.scheduleJob(job,trigger);
    	
    	}catch(SchedulerException e) {
    		e.printStackTrace();
    	}
    }
	
}

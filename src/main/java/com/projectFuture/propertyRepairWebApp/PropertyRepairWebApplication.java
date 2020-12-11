package com.projectFuture.propertyRepairWebApp;

//import com.projectFuture.propertyRepairWebApp.service.RepairService;
//import com.projectFuture.propertyRepairWebApp.service.UserService;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PropertyRepairWebApplication {
//	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());
//
//	@Autowired
//	private UserService userService;
//	@Autowired
//	private RepairService repairService;

	public static void main(String[] args) {

		SpringApplication.run(PropertyRepairWebApplication.class, args);
	}

//	@Override
//	public void run(String... args) throws Exception {
//		LOGGER.info("=============================");
//		LOGGER.info("====Finding User by Id====");
//		userService.findUser(1L).ifPresent(user -> LOGGER.info(user.toString()));
//		LOGGER.info("=============================");
//
//
//
//		LOGGER.info("=============================");
//		LOGGER.info("====Getting all users====");
//		userService.getAllUsers().forEach(user -> LOGGER.info(user.toString()));
//		LOGGER.info("=============================");
//
//
//		LOGGER.info("=============================");
//		LOGGER.info("====Finding User by email====");
//		userService.findUserByEmail("manos@manolakis.com").ifPresent(user -> LOGGER.info(user.toString()));
//		LOGGER.info("=============================");
//
//
//		LOGGER.info("=============================");
//		LOGGER.info("====Finding Repair by Id====");
//		repairService.findRepair(3L).ifPresent(repair -> LOGGER.info(repair.toString()));
//		LOGGER.info("=============================");
//
//
//
//		LOGGER.info("=============================");
//		LOGGER.info("====Getting all repairs====");
//		repairService.getAllRepairs().forEach(repair -> LOGGER.info(repair.toString()));
//		LOGGER.info("=============================");
//
//
//		LOGGER.info("=============================");
//		LOGGER.info("====Finding Repair by user id====");
//		repairService.getRepairsByUserId(2L).forEach(repair -> LOGGER.info(repair.toString()));
//		LOGGER.info("=============================");

//	}



}

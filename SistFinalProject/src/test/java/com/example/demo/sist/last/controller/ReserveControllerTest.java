package com.example.demo.sist.last.controller;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.sist.last.dto.ReserveDto;

@SpringBootTest
@Transactional
public class ReserveControllerTest {

	@Autowired
	ReserveController reserveController;

	@MockBean
	private MockHttpSession session;

	@BeforeEach
	void init(){
		this.session = new MockHttpSession();
		session.setAttribute("info_id", "ssung2sin");
	}

	@Test
	@DisplayName("중복 예약 날짜 테스트")
	void testSynchronizedReserves() throws InterruptedException {
		int numThreads = 100;

		ExecutorService executorService = Executors.newFixedThreadPool(6);

		//카운트다운래치는 다른 스래드에서 수행중인 작업을 완료될때까지 대기하도록 도와주는 클래스
		CountDownLatch latch = new CountDownLatch(numThreads);

		String reservationNumber = "25c3-4f3b-at31";
		String reserve_name = "성신";
		String reserve_hp = "010";
		int amount = 670000;
		int room_num = 149;
		int accom_num = 47;
		String room_checkin = "2024-04-27 17:00";
		String room_checkout = "2024-04-28 11:00";
		String coupon_name = "적용안함";
		String accom_name = "서울신라호텔";
		String room_name = "그랜드 코너 디럭스";

		ReserveDto reserveDto = new ReserveDto();

		AtomicInteger count = new AtomicInteger();
		for (int i = 0; i < numThreads; i++) {
			int finalI = i;
			executorService.submit(() -> {
				try {
					String text = reserveController.payment(reservationNumber, reserve_name, reserve_hp, amount, room_num,
						accom_num, room_checkin, room_checkout, coupon_name, accom_name, room_name, reserveDto, session);
					// 동일한 체크인 및 체크아웃 날짜를 갖는 기존 예약이 있는지 확인
					if(text.equals("Success")){
						count.getAndIncrement();
					}
				} catch (Exception ex) {
					ex.printStackTrace();
				} finally {
					latch.countDown();
				}
			});

		}
		// 모든 스레드가 완료될 때까지 대기
		latch.await();
		executorService.shutdown();

		System.out.println("실제 예약 수: " + count.get());
		System.out.println("기대한 예약 수: " + 1);

		// 생성된 예약의 수를 확인
		Assertions.assertEquals(count.get(),1);
	}
}

package com.sumy.gamestore.controller.api;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.sumy.gamestore.dto.ResponseDto;
import com.sumy.gamestore.model.NewsList;
import com.sumy.gamestore.service.NewsListService;

@RestController
public class NewsListApiController {
	
	
	@Autowired
	private NewsListService newsListService;
	
	@PostMapping("/admin/news/add")
	public ResponseDto<Integer> updateNews(
			@RequestPart(value = "newsList")NewsList newsList
			,@RequestPart(value = "file") MultipartFile file) {
		System.out.println(newsList);
		System.out.println(file.getOriginalFilename());
		
		// 파일 있는지 확인
		if (file == null || file.isEmpty()) {
			System.out.println("파일이 없음");
		}

		// 현재 날짜 조회 - ex) 2021-07-07
		String currentDate = LocalDate.now().toString();
		// 파일 저장 경로 (현재 날짜를 포함) - ex) C:/upload/2021-07-07/
		String uploadFilePath = "C:\\upload\\" + currentDate + "/";

		// 파일 확장자 ex) jpg, png ..
		String prefix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1,
				file.getOriginalFilename().length());

		// 랜덤아이디로 파일명 생성
		String filename = UUID.randomUUID().toString() + "." + prefix;

		// 폴더가 없다면 생성
		File folder = new File(uploadFilePath);
		if (!folder.isDirectory()) {
			folder.mkdirs();
		}

		// 실제 저장되는 위치
		String pathname = uploadFilePath + filename;
		// 가상 가상 파일 위치 - ex) /upload/2021-07-07/파일명.jpg
		String resourcePathname = "/upload/" + currentDate + "/" + filename;
		File dest = new File(pathname);
		try {
			file.transferTo(dest);

		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		NewsList addNews = NewsList.builder()
								   .newsId(0)
								   .newsTitle(newsList.getNewsTitle())
								   .newsSubTitle(newsList.getNewsSubTitle())
								   .newsThumbImage(resourcePathname)
								   .newsText(newsList.getNewsText())
								   .newsWriteDate(LocalDateTime.now())
								   .newsUpdateDate(null)
								   .build();
								   
								   
								   
		newsListService.뉴스추가(addNews);
		
		System.out.println("출력확인!!");
		System.out.println(HttpStatus.OK.value());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	
	
	@PutMapping("/admin/news/update")
	public ResponseDto<Integer> addNews(@RequestBody NewsList newsList) {
		System.out.println(newsList);
		System.out.println("출력확인!!");
		System.out.println(HttpStatus.OK.value());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
//	
//	@GetMapping("/update")
//	public String showUserUpdateForm(Model model, int id) {
//		
//		User user = userService.getUserById(id);
//		
//		model.addAttribute("user", user);
//		
//		return "updateForm";
//	}
	
	
	
	@DeleteMapping("/admin/news/delete")
	public ResponseDto<Integer> deleteNews(@RequestBody NewsList newsList) {
		System.out.println(newsList);
		System.out.println("출력확인!!");
		System.out.println(HttpStatus.OK.value());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}

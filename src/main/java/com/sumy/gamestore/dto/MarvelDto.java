package com.sumy.gamestore.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class MarvelDto {
//	create table marvel_movie(
//			marvel_id int primary key auto_increment,
//			title varchar(50) not null,
//			title_eng varchar(50) not null,
//			release_date date not null,
//			world_box_office bigint not null,
//			write_date timestamp not null default current_timestamp,
//			update_date timestamp
//			);
	
	
	
	private int marvelId;
	private String title;
	private String titleEng;
	private LocalDate releaseDate;
	private long worldBoxOffice;
	private LocalDateTime writeDate;
	private LocalDateTime updateDate;
	
	public MarvelDto(int marvelId, String title, String titleEng, LocalDate releaseDate, long worldBoxOffice,
			LocalDateTime writeDate, LocalDateTime updateDate) {
		super();
		this.marvelId = marvelId;
		this.title = title;
		this.titleEng = titleEng;
		this.releaseDate = releaseDate;
		this.worldBoxOffice = worldBoxOffice;
		this.writeDate = writeDate;
		this.updateDate = updateDate;
	}

	public MarvelDto() {
		super();
	}

	public int getMarvelId() {
		return marvelId;
	}

	public void setMarvelId(int marvelId) {
		this.marvelId = marvelId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitleEng() {
		return titleEng;
	}

	public void setTitleEng(String titleEng) {
		this.titleEng = titleEng;
	}

	public LocalDate getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(LocalDate releaseDate) {
		this.releaseDate = releaseDate;
	}

	public long getWorldBoxOffice() {
		return worldBoxOffice;
	}

	public void setWorldBoxOffice(long worldBoxOffice) {
		this.worldBoxOffice = worldBoxOffice;
	}

	public LocalDateTime getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(LocalDateTime writeDate) {
		this.writeDate = writeDate;
	}

	public LocalDateTime getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(LocalDateTime updateDate) {
		this.updateDate = updateDate;
	}
	
	
}

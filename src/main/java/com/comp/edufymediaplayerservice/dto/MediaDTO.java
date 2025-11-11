package com.comp.edufymediaplayerservice.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

public class MediaDTO {

    private Long id;
    private String title;
    private String type; //TODO "MUSIC", "POD", "VIDEO"
    private LocalDate releaseDate;
    private String streamUrl;
    private Integer albumOrder;
    private LocalDateTime createdAt;
    private String albumTitle;
    private List<String> artistNames;
    private List<String> genreNames;
    private Long playCount;

    public MediaDTO() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public LocalDate getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(LocalDate releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getStreamUrl() {
        return streamUrl;
    }

    public void setStreamUrl(String streamUrl) {
        this.streamUrl = streamUrl;
    }

    public Integer getAlbumOrder() {
        return albumOrder;
    }

    public void setAlbumOrder(Integer albumOrder) {
        this.albumOrder = albumOrder;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public String getAlbumTitle() {
        return albumTitle;
    }

    public void setAlbumTitle(String albumTitle) {
        this.albumTitle = albumTitle;
    }

    public List<String> getArtistNames() {
        return artistNames;
    }

    public void setArtistNames(List<String> artistNames) {
        this.artistNames = artistNames;
    }

    public List<String> getGenreNames() {
        return genreNames;
    }

    public void setGenreNames(List<String> genreNames) {
        this.genreNames = genreNames;
    }

    public Long getPlayCount() {
        return playCount;
    }
    public void setPlayCount(Long playCount) {
        this.playCount = playCount;
    }
}

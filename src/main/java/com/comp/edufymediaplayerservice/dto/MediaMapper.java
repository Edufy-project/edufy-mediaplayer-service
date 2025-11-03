package com.comp.edufymediaplayerservice.dto;

import com.comp.edufymediaplayerservice.entity.Genre;
import com.comp.edufymediaplayerservice.entity.Artist;
import com.comp.edufymediaplayerservice.entity.Music;
import com.comp.edufymediaplayerservice.entity.Video;
import com.comp.edufymediaplayerservice.entity.Pod;

import java.util.List;
import java.util.stream.Collectors;

public class MediaMapper {

    // Music -> MediaDTO
    public static MediaDTO toMediaDTO(Music music) {
        MediaDTO dto = new MediaDTO();
        dto.setTitle(music.getTitle());
        dto.setReleaseDate(music.getReleaseDate());
        dto.setStreamUrl(music.getStreamUrl());
        dto.setAlbumTitle(music.getAlbum() != null ? music.getAlbum().getTitle() : null);
        dto.setAlbumOrder(music.getAlbumOrder());
        dto.setArtistNames(music.getArtists().stream()
                .map(Artist::getName)
                .collect(Collectors.toList()));
        dto.setGenreNames(music.getGenres().stream()
                .map(Genre::getName)
                .collect(Collectors.toList()));
        return dto;
    }

    // Pod -> MediaDTO
    public static MediaDTO toMediaDTO(Pod pod) {
        MediaDTO dto = new MediaDTO();
        dto.setTitle(pod.getTitle());
        dto.setReleaseDate(pod.getReleaseDate());
        dto.setStreamUrl(pod.getStreamUrl());
        dto.setAlbumTitle(pod.getAlbum() != null ? pod.getAlbum().getTitle() : null);
        dto.setAlbumOrder(pod.getAlbumOrder());
        dto.setArtistNames(pod.getArtists().stream()
                .map(Artist::getName)
                .collect(Collectors.toList()));
        dto.setGenreNames(pod.getGenres().stream()
                .map(Genre::getName)
                .collect(Collectors.toList()));
        return dto;
    }

    // Video -> MediaDTO
    public static MediaDTO toMediaDTO(Video video) {
        MediaDTO dto = new MediaDTO();
        dto.setTitle(video.getTitle());
        dto.setReleaseDate(video.getReleaseDate());
        dto.setStreamUrl(video.getStreamUrl());
        dto.setAlbumTitle(video.getAlbum() != null ? video.getAlbum().getTitle() : null);
        dto.setAlbumOrder(video.getAlbumOrder());
        dto.setArtistNames(video.getArtists().stream()
                .map(Artist::getName)
                .collect(Collectors.toList()));
        dto.setGenreNames(video.getGenres().stream()
                .map(Genre::getName)
                .collect(Collectors.toList()));
        return dto;
    }

    // List<Pod> -> List<MediaDTO>
    public static List<MediaDTO> toMediaDTOListFromPod(List<Pod> podList) {
        return podList.stream()
                .map(MediaMapper::toMediaDTO)
                .collect(Collectors.toList());
    }

    // List<Video> -> List<MediaDTO>
    public static List<MediaDTO> toMediaDTOListFromVideo(List<Video> videoList) {
        return videoList.stream()
                .map(MediaMapper::toMediaDTO)
                .collect(Collectors.toList());
    }
}

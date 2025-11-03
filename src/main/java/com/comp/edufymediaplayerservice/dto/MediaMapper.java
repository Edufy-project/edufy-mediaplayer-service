package com.comp.edufymediaplayerservice.dto;

import com.comp.edufymediaplayerservice.entity.Genre;
import com.comp.edufymediaplayerservice.entity.Artist;
import com.comp.edufymediaplayerservice.entity.Music;
import com.comp.edufymediaplayerservice.entity.Video;
import com.comp.edufymediaplayerservice.entity.Pod;

import java.util.List;
import java.util.stream.Collectors;

public class MediaMapper {

    // Helper-metod för gemensamma fält
    private static MediaDTO mapCommonFields(String title, java.time.LocalDate releaseDate, String streamUrl,
                                            Integer albumOrder, String albumTitle,
                                            List<Artist> artists, List<Genre> genres) {
        MediaDTO dto = new MediaDTO();
        dto.setTitle(title);
        dto.setReleaseDate(releaseDate);
        dto.setStreamUrl(streamUrl);
        dto.setAlbumOrder(albumOrder);
        dto.setAlbumTitle(albumTitle);
        dto.setArtistNames(artists.stream()
                .map(Artist::getName)
                .collect(Collectors.toList()));
        dto.setGenreNames(genres.stream()
                .map(Genre::getName)
                .collect(Collectors.toList()));
        return dto;
    }

    // Music -> MediaDTO
    public static MediaDTO toMediaDTO(Music music) {
        return mapCommonFields(
                music.getTitle(),
                music.getReleaseDate(),
                music.getStreamUrl(),
                music.getAlbumOrder(),
                music.getAlbum() != null ? music.getAlbum().getTitle() : null,
                music.getArtists(),
                music.getGenres()
        );
    }

    // Pod -> MediaDTO
    public static MediaDTO toMediaDTO(Pod pod) {
        return mapCommonFields(
                pod.getTitle(),
                pod.getReleaseDate(),
                pod.getStreamUrl(),
                pod.getAlbumOrder(),
                pod.getAlbum() != null ? pod.getAlbum().getTitle() : null,
                pod.getArtists(),
                pod.getGenres()
        );
    }

    // Video -> MediaDTO
    public static MediaDTO toMediaDTO(Video video) {
        return mapCommonFields(
                video.getTitle(),
                video.getReleaseDate(),
                video.getStreamUrl(),
                video.getAlbumOrder(),
                video.getAlbum() != null ? video.getAlbum().getTitle() : null,
                video.getArtists(),
                video.getGenres()
        );
    }

    // List<Music> -> List<MediaDTO>
    public static List<MediaDTO> toMediaDTOListFromMusic(List<Music> musicList) {
        return musicList.stream()
                .map(MediaMapper::toMediaDTO)
                .collect(Collectors.toList());
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

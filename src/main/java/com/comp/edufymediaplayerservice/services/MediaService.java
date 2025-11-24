package com.comp.edufymediaplayerservice.services;

import com.comp.edufymediaplayerservice.dto.MediaDTO;
import com.comp.edufymediaplayerservice.entities.*;
import com.comp.edufymediaplayerservice.repositories.*;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service
public class MediaService {
    private final AlbumRepository albumRepository;
    private final ArtistRepository artistRepository;
    private final MusicRepository musicRepository;
    private final PodRepository podRepository;
    private final VideoRepository videoRepository;

    public MediaService(
            AlbumRepository albumRepository,
            ArtistRepository artistRepository,
            MusicRepository musicRepository,
            PodRepository podRepository,
            VideoRepository videoRepository)
    {
        this.albumRepository = albumRepository;
        this.artistRepository = artistRepository;
        this.musicRepository = musicRepository;
        this.podRepository = podRepository;
        this.videoRepository = videoRepository;
    }

    public List<MediaDTO> getAllMediaByType(String mediaType) {
        if (mediaType.equalsIgnoreCase("music")) {
            return musicRepository.findAll().stream()
                    .map(music -> new MediaDTO(
                            music.getId(),
                            music.getTitle(),
                            music.getGenre().getName()
                    )).toList();
        } else if (mediaType.equalsIgnoreCase("pod")) {
            return podRepository.findAll().stream()
                    .map(pod -> new MediaDTO(
                            pod.getId(),
                            pod.getTitle(),
                            pod.getGenre().getName()
                    )).toList();
        } else if (mediaType.equalsIgnoreCase("video")) {
            return videoRepository.findAll().stream()
                    .map(video -> new MediaDTO(
                            video.getId(),
                            video.getTitle(),
                            video.getGenre().getName()
                    )).toList();
        } else {
            throw new RuntimeException("Invalid type. Valid types are: music, pod, video");
        }
    }

    public String getMediaGenreById(String mediaType, Long mediaId) {

        if (mediaType.equalsIgnoreCase("music")) {
            Optional<Music> optional = musicRepository.findById(mediaId);
            if (optional.isPresent()) {
                return optional.get().getGenre().getName();
            } else {
                throw new RuntimeException("Music with id " + mediaId + " does not exist.");
            }
        } else if (mediaType.equalsIgnoreCase("pod")) {
            Optional<Pod> optional = podRepository.findById(mediaId);
            if (optional.isPresent()) {
                return optional.get().getGenre().getName();
            } else {
                throw new RuntimeException("Pod with id " + mediaId + " does not exist.");
            }
        } else if (mediaType.equalsIgnoreCase("video")) {
            Optional<Video> optional = videoRepository.findById(mediaId);
            if (optional.isPresent()) {
                return optional.get().getGenre().getName();
            } else {
                throw new RuntimeException("Video with id " + mediaId + " does not exist.");
            }
        } else {
            throw new RuntimeException("Invalid type. Valid types are: music, pod, video");
        }

    }

    public List<MediaDTO> getAllMediaByGenre(String mediaType, String genre) {
        if (mediaType.equalsIgnoreCase("music")) {
            return musicRepository.findAllByGenreNameIgnoreCase(genre).stream()
                    .map(music -> new MediaDTO(
                            music.getId(),
                            music.getTitle(),
                            music.getGenre().getName()
                    ))
                    .toList();
        } else if (mediaType.equalsIgnoreCase("pod")) {
            return podRepository.findAllByGenreNameIgnoreCase(genre).stream()
                    .map(pod -> new MediaDTO(
                            pod.getId(),
                            pod.getTitle(),
                            pod.getGenre().getName()
                    ))
                    .toList();
        } else if (mediaType.equalsIgnoreCase("video")) {
            return videoRepository.findAllByGenreNameIgnoreCase(genre).stream()
                    .map(video -> new MediaDTO(
                            video.getId(),
                            video.getTitle(),
                            video.getGenre().getName()
                    ))
                    .toList();
        } else {
            throw new RuntimeException("Invalid type. Valid types are: music, pod, video");
        }

    }

    public Object getMediaByName(String mediaName) {

        if (mediaName.contains(" ")) {
            throw new RuntimeException("Url can't contain spaces.");
        }

        if (mediaName.contains("_")) {
            mediaName = mediaName.toLowerCase().replace("_", " ");
        }

        List<Music> musicToReturn = musicRepository.findByTitleContainingIgnoreCase(mediaName);
        List<Pod> podToReturn = podRepository.findByTitleContainingIgnoreCase(mediaName);
        List<Video> videoToReturn = videoRepository.findByTitleContainingIgnoreCase(mediaName);

        if (!musicToReturn.isEmpty()) {
            return musicToReturn;
        } else if (!podToReturn.isEmpty()) {
            return podToReturn;
        } else if (!videoToReturn.isEmpty()) {
            return videoToReturn;
        }

        throw new RuntimeException("Media with the name '" + mediaName + "' does not exist.");
    }

    public Object getAlbumByName(String albumName) {

        if (albumName.contains(" ")) {
            throw new RuntimeException("Url can't contain spaces.");
        }

        if (albumName.contains("_")) {
            albumName = albumName.toLowerCase().replace("_", " ");
        }

        Optional<Album> optionalAlbum = albumRepository.findByTitleIgnoreCase(albumName);
        Album albumToReturn;

        if (optionalAlbum.isPresent()) {
            albumToReturn = optionalAlbum.get();
            return albumToReturn;
        }

        throw new RuntimeException("An album with the name '" + albumName + "' was not found.");
    }

    public Object getArtistByName(String artistName) {

        if (artistName.contains(" ")) {
            throw new RuntimeException("Url can't contain spaces.");
        }

        if (artistName.contains("_")) {
            artistName = artistName.toLowerCase().replace("_", " ");
        }

        Optional<Artist> optionalArtist = artistRepository.findByNameIgnoreCase(artistName);
        Artist artistToReturn;

        if (optionalArtist.isPresent()) {
            artistToReturn = optionalArtist.get();
            return artistToReturn;
        }

        throw new RuntimeException("No artist with the name '" + artistName + "' was found.");
    }

    public List<String> getValidMediaTypes() {
        List<String> mediaTypes = Arrays.asList(
                "music",
                "video",
                "pod"
        );
        return mediaTypes;
    }

}

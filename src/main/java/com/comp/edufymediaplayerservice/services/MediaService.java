package com.comp.edufymediaplayerservice.services;

import com.comp.edufymediaplayerservice.entities.PlaceholderEntity;
import com.comp.edufymediaplayerservice.repositories.PlaceholderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MediaService {

    private final PlaceholderRepository PLACEHOLDER_REPOSITORY;

    @Autowired
    public MediaService(PlaceholderRepository placeholderRepository) {
        this.PLACEHOLDER_REPOSITORY = placeholderRepository;
    }

    public String getMedia(Long mediaId) {
        Optional<PlaceholderEntity> unknownMedia = PLACEHOLDER_REPOSITORY.findById(mediaId);

        if (unknownMedia.isPresent()) {
            PlaceholderEntity media = unknownMedia.get();
            String album = media.getAlbum().toLowerCase().replace(" ", "_");
            String artist = media.getArtist().toLowerCase().replace(" ", "_");
            String mediaName = media.getMediaName().toLowerCase().replace(" ", "_");

            if (!album.isEmpty() && !artist.isEmpty() && !mediaName.isEmpty()) {
                return "/" + artist + "/" + album + "/" + mediaName;
            }
        }
        return null;
    }

}

package com.comp.edufymediaplayerservice.services;

import com.comp.edufymediaplayerservice.entities.PlaceholderEntity;
import com.comp.edufymediaplayerservice.entities.PlaceholderEntity2;
import com.comp.edufymediaplayerservice.entities.PlaceholderEntityInterface;
import com.comp.edufymediaplayerservice.repositories.PlaceholderRepository;
import com.comp.edufymediaplayerservice.repositories.PlaceholderRepository2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MediaService {

    private final PlaceholderRepository PLACEHOLDER_REPOSITORY;
    private final PlaceholderRepository2 PLACEHOLDER_REPOSITORY2;

    @Autowired
    public MediaService(PlaceholderRepository placeholderRepository, PlaceholderRepository2 placeholderRepository2) {
        this.PLACEHOLDER_REPOSITORY = placeholderRepository;
        this.PLACEHOLDER_REPOSITORY2 = placeholderRepository2;
    }

    public String getMediaEndpoint(PlaceholderEntityInterface media) {
        String artist = media.getArtist().toLowerCase().replace(" ", "_");
        String album = media.getAlbum().toLowerCase().replace(" ", "_");
        String name = media.getMediaName().toLowerCase().replace(" ", "_");

        return "/" + artist + "/" + album + "/" + name;
    }

    public PlaceholderEntityInterface getMediaById(String mediaType, Long mediaId) {
        if (mediaType.equalsIgnoreCase("type1")) {
            Optional<PlaceholderEntity> optional = PLACEHOLDER_REPOSITORY.findById(mediaId);
            if (optional.isPresent()) {
                return optional.get();
            } else {
                throw new RuntimeException("Media with id " + mediaId + " does not exist.");
            }
        } else if (mediaType.equalsIgnoreCase("type2")) {
            Optional<PlaceholderEntity2> optional = PLACEHOLDER_REPOSITORY2.findById(mediaId);
            if (optional.isPresent()) {
                return optional.get();
            } else {
                throw new RuntimeException("Media with  id " + mediaId + " does not exist.");
            }
        } else {
            throw new RuntimeException("Invalid type. Valid types are: type1, type2");
        }
    }

}

package com.comp.edufymediaplayerservice.controllers;

import com.comp.edufymediaplayerservice.entities.PlaceholderEntityInterface;
import com.comp.edufymediaplayerservice.services.MediaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PlaceholderMediaController {

    public final MediaService MEDIA_SERVICE;

    @Autowired
    public PlaceholderMediaController(MediaService MEDIA_SERVICE) {
        this.MEDIA_SERVICE = MEDIA_SERVICE;
    }

    @GetMapping("/getmedia/{mediaType}/{mediaId}")
    public String getMediaEndpoint(@PathVariable String mediaType, @PathVariable Long mediaId) {
        PlaceholderEntityInterface media = MEDIA_SERVICE.getMediaById(mediaType, mediaId);
        return MEDIA_SERVICE.getMediaEndpoint(media);
    }

}

package com.comp.edufymediaplayerservice.controllers;

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

    @GetMapping("/getmedia/{mediaId}")
    public String getMediaEndpoint(@PathVariable Long mediaId) {
        return MEDIA_SERVICE.getMedia(mediaId);
    }

}

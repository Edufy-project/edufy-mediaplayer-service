package com.comp.edufymediaplayerservice.controllers;

import com.comp.edufymediaplayerservice.services.MediaService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("edufy/api/mediaplayer/")
public class MediaController {

    private final MediaService mediaService;

    public MediaController(MediaService mediaplayerService){
        this.mediaService = mediaplayerService;
    }

    @GetMapping("media/{mediaName}")
    public Object getMediaByName(@PathVariable String mediaName){
        return mediaService.getMediaByName(mediaName);
    }

    @GetMapping("album/{albumName}")
    public Object getAlbumByName(@PathVariable String albumName){
        return mediaService.getAlbumByName(albumName);
    }

    @GetMapping("artist/{artistName}")
    public Object getArtistByName(@PathVariable String artistName){
        return mediaService.getArtistByName(artistName);
    }

}

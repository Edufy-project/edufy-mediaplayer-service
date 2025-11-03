package com.comp.edufymediaplayerservice.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("edufy/api/mediaplayer/")
public class MediaplayerController {

    private final MediaplayerService mediaplayerService;

    public MediaplayerController(MediaplayerService mediaplayerService){
        this.mediaplayerService = mediaplayerService;
    }

    @GetMapping("media/{mediaName}")
    public Object getMediaByName(@PathVariable String mediaName){
        return mediaplayerService.getMediaByName(mediaName);
    }

    @GetMapping("album/{albumName}")
    public Object getAlbumByName(@PathVariable String albumName){
        return mediaplayerService.getAlbumByName(albumName);
    }

    @GetMapping("artist/{artistName}")
    public Object getArtistByName(@PathVariable String artistName){
        return mediaplayerService.getArtistByName(artistName);

    }

}
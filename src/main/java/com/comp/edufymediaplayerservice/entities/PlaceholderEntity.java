package com.comp.edufymediaplayerservice.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "placeholder")
public class PlaceholderEntity implements PlaceholderEntityInterface {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String mediaName;
    private String artist;
    private String album;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    @Override
    public String getAlbum() {
        return album;
    }

    @Override
    public String getArtist() {
        return artist;
    }

    @Override
    public String getMediaName() {
        return mediaName;
    }
}

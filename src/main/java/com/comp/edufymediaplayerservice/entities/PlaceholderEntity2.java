package com.comp.edufymediaplayerservice.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "placeholder2")
public class PlaceholderEntity2 implements PlaceholderEntityInterface {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String creator;
    private String series;
    private String mediaName;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    @Override
    public String getArtist() {
        return creator;
    }

    @Override
    public String getAlbum() {
        return series;
    }

    @Override
    public String getMediaName() {
        return mediaName;
    }

}
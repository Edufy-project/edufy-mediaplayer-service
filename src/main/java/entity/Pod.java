package entity;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "pods")
public class Pod {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String title;

    @Column(name = "release_date")
    private LocalDate releaseDate;

    @Column(name = "stream_url", nullable = false)
    private String streamUrl;

    @ManyToOne
    @JoinColumn(name = "album_id")
    private Album album;

    @Column(name = "album_order")
    private Integer albumOrder;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    @ManyToMany
    @JoinTable(
            name = "pod_artists",
            joinColumns = @JoinColumn(name = "pod_id"),
            inverseJoinColumns = @JoinColumn(name = "artist_id")
    )
    private List<Artist> artists = new ArrayList<>();

    @ManyToMany
    @JoinTable(
            name = "pod_genres",
            joinColumns = @JoinColumn(name = "pod_id"),
            inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private List<Genre> genres = new ArrayList<>();

    public Pod() {
        this.createdAt = LocalDateTime.now();
    }

    public Pod(String title, String streamUrl) {
        this.title = title;
        this.streamUrl = streamUrl;
        this.createdAt = LocalDateTime.now();
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public LocalDate getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(LocalDate releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getStreamUrl() {
        return streamUrl;
    }

    public void setStreamUrl(String streamUrl) {
        this.streamUrl = streamUrl;
    }

    public Album getAlbum() {
        return album;
    }

    public void setAlbum(Album album) {
        this.album = album;
    }

    public Integer getAlbumOrder() {
        return albumOrder;
    }

    public void setAlbumOrder(Integer albumOrder) {
        this.albumOrder = albumOrder;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public List<Artist> getArtists() {
        return artists;
    }

    public void setArtists(List<Artist> artists) {
        this.artists = artists;
    }

    public List<Genre> getGenres() {
        return genres;
    }

    public void setGenres(List<Genre> genres) {
        this.genres = genres;
    }

    // Helper methods
    public void addArtist(Artist artist) {
        this.artists.add(artist);
        artist.getPodList().add(this);
    }

    public void removeArtist(Artist artist) {
        this.artists.remove(artist);
        artist.getPodList().remove(this);
    }

    public void addGenre(Genre genre) {
        this.genres.add(genre);
        genre.getPodList().add(this);
    }

    public void removeGenre(Genre genre) {
        this.genres.remove(genre);
        genre.getPodList().remove(this);
    }
}
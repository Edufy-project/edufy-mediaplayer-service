package com.comp.edufymediaplayerservice.repository;

import com.comp.edufymediaplayerservice.entity.Album;
import com.comp.edufymediaplayerservice.entity.Music;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface MusicRepository extends JpaRepository<Music, Long> {


    @Query("SELECT m FROM Music m JOIN m.artists a WHERE a.id = :artistId")
    List<Music> findByArtistId(@Param("artistId") Long artistId);


    @Query("SELECT m FROM Music m JOIN m.genres g WHERE g.id = :genreId")
    List<Music> findByGenreId(@Param("genreId") Long genreId);


    List<Music> findByAlbumOrderByAlbumOrderAsc(Album album);


    @Query("SELECT m FROM Music m WHERE m.album.id = :albumId ORDER BY m.albumOrder ASC")
    List<Music> findByAlbumId(@Param("albumId") Long albumId);


    List<Music> findByTitleContainingIgnoreCase(String title);


    List<Music> findByReleaseDateBetween(LocalDate startDate, LocalDate endDate);


    List<Music> findByReleaseDateAfter(LocalDate date);


    List<Music> findAllByOrderByReleaseDateDesc();


    @Query("SELECT DISTINCT m FROM Music m JOIN m.genres g WHERE g.id IN :genreIds")
    List<Music> findByGenreIds(@Param("genreIds") List<Long> genreIds);


    @Query("SELECT DISTINCT m FROM Music m JOIN m.artists a JOIN m.genres g WHERE a.id = :artistId AND g.id = :genreId")
    List<Music> findByArtistIdAndGenreId(@Param("artistId") Long artistId, @Param("genreId") Long genreId);
}
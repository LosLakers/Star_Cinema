
package blogics;

/**
 *
 * @author Guido Pio
 */
public class FilmTheaterDateModel {

    private FilmModel film;

    private TheaterModel theater;

    private DateTimeModel date;

    // <editor-fold defaultstate="collapsed" desc=" GETTER-SETTER ">
    /**
     * Get the value of film
     *
     * @return the value of film
     */
    public FilmModel getFilm() {
        return film;
    }

    /**
     * Set the value of film
     *
     * @param film new value of film
     */
    public void setFilm(FilmModel film) {
        this.film = film;
    }

    /**
     * Get the value of theater
     *
     * @return the value of theater
     */
    public TheaterModel getTheater() {
        return theater;
    }

    /**
     * Set the value of theater
     *
     * @param theater new value of theater
     */
    public void setTheater(TheaterModel theater) {
        this.theater = theater;
    }

    /**
     * Get the value of date
     *
     * @return the value of date
     */
    public DateTimeModel getDate() {
        return date;
    }

    /**
     * Set the value of date
     *
     * @param date new value of date
     */
    public void setDate(DateTimeModel date) {
        this.date = date;
    }

    // </editor-fold>
}
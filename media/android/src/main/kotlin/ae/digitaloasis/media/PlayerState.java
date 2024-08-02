package ae.digitaloasis.media;

public enum PlayerState {
    IDLE,
    BUFFERING,
    PLAYING,
    PAUSED,
    COMPLETE;

    private PlayerState() {
    }
}
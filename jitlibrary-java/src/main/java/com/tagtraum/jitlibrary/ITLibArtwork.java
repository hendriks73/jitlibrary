/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Represents the artwork for a media item.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibartwork">Apple ITLibArtwork</a>
 */
public class ITLibArtwork {

    private static final Logger LOG = Logger.getLogger(ITLibArtwork.class.getName());
    private long pointer;

    public ITLibArtwork(final long pointer) {
        this.pointer = pointer;
    }

    /**
     * Convenience method that decodes the data returned by
     * {@link #getImageData()} and turns it into an {@link Image}.
     * <p>
     * Decoding failures are caught and logged.
     *
     * @return an image, or {@code null}, if the image data is not available
     *  or cannot be decoded.
     */
    public Image getImage() {
        // TODO: caching?
        final byte[] imageData = getImageData();
        if (imageData != null && imageData.length > 0) {
            return load(imageData);
        } else {
            return null;
        }
    }

    public native byte[] getImageData();

    public ITLibArtworkFormat getImageDataFormat() {
        try {
            return ITLibArtworkFormat.values()[_getImageDataFormat()];
        } catch (Exception e) {
            LOG.log(Level.SEVERE, "Failed to determine image data format. Returning ITLibArtworkFormatNone.", e);
            return ITLibArtworkFormat.ITLibArtworkFormatNone;
        }
    }

    /**
     * Create {@link BufferedImage} from byte array.
     *
     * @param buf byte array (image data)
     * @return an image, or {@code null}, if the byte array cannot be decoded.
     */
    private static Image load(final byte[] buf) {
        try {
            final BufferedImage image = ImageIO.read(new ByteArrayInputStream(buf));
            if (image != null && image.getType() != BufferedImage.TYPE_BYTE_BINARY) return image;
            if (LOG.isLoggable(Level.INFO)) LOG.info("Failed to load image with ImageIO.");
        } catch (Exception e) {
            LOG.log(Level.SEVERE, "Failed to load image with ImageIO: " + e, e);
        }
        return null;
    }

    public native int _getImageDataFormat();

    private native void _release();

    private native void _retain();

    public void release() {
        if (pointer != 0L) {
            _release();
            pointer = 0L;
        }
    }

    public void retain() {
        if (pointer != 0L) {
            _retain();
        }
    }

}

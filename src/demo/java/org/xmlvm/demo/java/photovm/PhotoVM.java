package org.xmlvm.demo.java.photovm;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Panel;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import org.xmlvm.demo.java.photovm.data.Photo;
import org.xmlvm.demo.java.photovm.net.PicasaRequest;
import org.xmlvm.demo.java.photovm.ui.ImagePanel;

public class PhotoVM extends Frame {
  private static final long serialVersionUID = 1L;

  public static void main(String[] args) throws MalformedURLException {
    new PhotoVM();
  }

  public PhotoVM() throws MalformedURLException {
    setTitle("PhotoVM");
    setBackground(Color.BLACK);
    setSize(1000, 600);
    BorderLayout layout = new BorderLayout();
    setLayout(layout);
    ImagePanel logo = new ImagePanel("doc/photovm/photovm_logo.png");
    System.out.println("#9");
    add(logo, BorderLayout.NORTH);
    System.out.println("#9.1");
    Panel thumbnailGrid = new Panel();
    System.out.println("#9.2");
    thumbnailGrid.setLayout(new GridLayout(0,5));
    System.out.println("#9.3");
    add(thumbnailGrid, BorderLayout.SOUTH);
    System.out.println("#9.5");
    List<Photo> photos= PicasaRequest.requestPhotos(PicasaRequest.TEST_USER_ID,
        PicasaRequest.TEST_ALBUM_ID);
    System.out.println("#10");
    for (Photo photo : photos) {
      ImagePanel thumbnail = new ImagePanel(new URL(photo.getThumbnailUrl()));
      thumbnailGrid.add(thumbnail);
    }
    this.addWindowListener(new WindowAdapter() {
      @Override
      public void windowClosed(WindowEvent e) {
        System.exit(0);
      }
    });
    this.setVisible(true);
  }
}

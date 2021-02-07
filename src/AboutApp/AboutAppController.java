package AboutApp;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Hyperlink;

import java.awt.*;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ResourceBundle;

public class AboutAppController implements Initializable {

    @FXML
    private Hyperlink shohag;


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        final String[] URLs = {"https://github.com/shohag.fks"};

        // disable the stupid focus hint
        shohag.setFocusTraversable(false);
        shohag.setOnAction(e -> LoadURL(URLs[0]));
    }

    private void LoadURL(String URL) {
        // use a different thread so it wont freeze the GUI
        new Thread(() -> {
            try {
                Desktop.getDesktop().browse(new URL(URL).toURI());
            } catch (IOException | URISyntaxException e1) {
                e1.printStackTrace();
            }
        }).start();

    }
}

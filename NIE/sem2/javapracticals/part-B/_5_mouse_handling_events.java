import java.awt.*;
import java.awt.event.*;

public class _5_mouse_handling_events extends Frame implements MouseListener {
    public _5_mouse_handling_events() {
        setTitle("Mouse Events");
        setSize(400, 400);
        setLayout(null);
        addMouseListener(this);
        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                dispose();
            }
        });
        setVisible(true);
    }

    public void mouseClicked(MouseEvent e) {
        this.setBackground(Color.red);
    }

    public void mouseEntered(MouseEvent e) {
        this.setBackground(Color.green);
    }

    public void mouseExited(MouseEvent e) {
        this.setBackground(Color.yellow);
    }

    public void mousePressed(MouseEvent e) {
        this.setBackground(Color.blue);
    }

    public void mouseReleased(MouseEvent e) {
        this.setBackground(Color.cyan);
    }

    public static void main(String[] args) {
        new _5_mouse_handling_events();
    }
}
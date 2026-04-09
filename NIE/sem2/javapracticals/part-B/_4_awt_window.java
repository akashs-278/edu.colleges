import java.awt.*;
import java.awt.event.*;

public class _4_awt_window implements ActionListener {
    Frame f = new Frame("AWT Button Example");
    Button M = new Button("M");
    Button A = new Button("A");
    Button E = new Button("E");
    Button C = new Button("Close");
    Label L = new Label();

_4_awt_window()
{
L.setFont(new Font("Times New Roman", Font.BOLD, 20));
M.setBounds(50,50,50,50);
A.setBounds(110,50,50,50);
E.setBounds(170,50,50,50);
C.setBounds(230,50,50,50);
L.setBounds(100,110,200,50);
f.add(M);
M.addActionListener(this);
f.add(A);
A.addActionListener(this);
f.add(E);
E.addActionListener(this);
f.add(C);
C.addActionListener(this);
f.add(L);
f.setSize(350,200);
f.setLayout(null);
f.setVisible(true);
}

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == M) {
            L.setText("Good Morning");
        } else if (e.getSource() == A) {
            L.setText("Good Afternoon");
        } else if (e.getSource() == E) {
            L.setText("Good Evening");
        } else {
            f.dispose();
        }
    }

    public static void main(String ags[]) {
        _4_awt_window obj = new _4_awt_window();
    }
}
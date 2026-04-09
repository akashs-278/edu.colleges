import java.awt.*;
import java.awt.event.*;
class _8_menu_bar_and_pull_downs
{
public static void main(String args[])
{
Frame f= new Frame("Menu Example");
MenuBar mb=new MenuBar();
Menu menu=new Menu("File");
MenuItem i1=new MenuItem("New");
MenuItem i2=new MenuItem("Open");
MenuItem i3=new MenuItem("Save");
MenuItem i4=new MenuItem("Exit");
menu.add(i1);
menu.add(i2);
menu.add(i3);
menu.addSeparator();
menu.add(i4);
mb.add(menu);
i4.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
System.exit(0);
}
});
f.setMenuBar(mb);
f.setSize(300,300);
f.setLayout(null);
f.setVisible(true);
}
}
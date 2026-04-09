import java.awt.*;
import java.awt.event.*;
public class _7_father_mother_close_window implements ActionListener
{
Frame f;
Button b1, b2, b3;
Label l1;
_7_father_mother_close_window()
{
f=new Frame("FMB");
b1= new Button("Father");
b2= new Button("Mother");
b3 = new Button("Close");
l1=new Label("");
l1.setBounds(25,50,350,200);
b1.setBounds(25,50,100,50);
b2.setBounds(150,50,100,50);
b3.setBounds(280,50,50,50);
f.add(b1);
b1.addActionListener(this);
f.add(b2);
b2.addActionListener(this);
f.add(b3);
b3.addActionListener(this);
f.add(l1);
f.setSize(375,200);
f.setLayout(null);
f.setVisible(true);
}
public void actionPerformed(ActionEvent e)
{
if(e.getSource()==b1)
{
l1.setText("Name: Dr. Bob || Age: 45 || Designation: Doctor");
}
else if(e.getSource()==b2)
{
l1.setText("Name: Dr. Alice || Age: 41 || Designation: Professor");
}
else
{
f.dispose();
}
}
public static void main(String ags[])
{
_7_father_mother_close_window obj=new _7_father_mother_close_window();
}
}
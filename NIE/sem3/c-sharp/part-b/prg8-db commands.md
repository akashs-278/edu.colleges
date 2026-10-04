Step 1 — Make a folder
Create this folder:
C:\CSharpLab

So you will eventually have:
C:\CSharpLab\Database1.accdb

Step 2 — Open PowerShell
Press the Windows key and type PowerShell.

Open Windows PowerShell.

[!NOTE]
Do not open Microsoft Access Runtime.

Step 3 — Run the creation script
Paste this entire command into PowerShell and press Enter:

PowerShell
$cat = New-Object -ComObject ADOX.Catalog
$cat.Create("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\CSharpLab\Database1.accdb;")
$cat.ActiveConnection.Close()




Step 4 — Create the table

Once Database1.accdb exists, we need to create the table that your lab program expects:

DataBase1

with:

Id
Name
Age

We can do that with PowerShell too.

Open PowerShell again and paste:

$conn = New-Object -ComObject ADODB.Connection
$conn.Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\CSharpLab\Database1.accdb;")

$conn.Execute("CREATE TABLE DataBase1 (Id TEXT(50), Name TEXT(100), Age TEXT(20))")

$conn.Close()

Write-Host "Table created successfully!"

You should see:

Table created successfully!

Now your database structure is:

Database1.accdb
       |
       └── DataBase1
             ├── Id
             ├── Name
             └── Age
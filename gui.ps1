#アセンブリの読み込み
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

#フォームの設定
$Form = New-Object System.Windows.Forms.Form
$Form.Size = New-Object System.Drawing.Size(800,600)
$Form.Text = "PowerShell Input Form"

$Button = New-Object System.Windows.Forms.Button
$Button.Locatin = New-Object New-Object System.Drawing.Point(100,50)
$Button.Size = New-Object System.Drawing.Size(100,50)
$Button.Text = "misettei"
$Form.Controls.Add($Button)

#入力Box
$S_Time = New-Object System.Windows.Forms.Textbox
$S_Time.Location = New-Object System.Drawing.Point(100,200)
$S_Time.Size = New-Object System.Drawing.Size(400,20)
$S_Time.Text = "kakunin"
$S_Time.Multiline = $True
$Form.Controls.Add($S_Time)

$E_Time = New-Object System.Windows.Forms.Textbox
$E_Time.Location = New-Object System.Drawing.Point(100,300)
$E_Time.Size = New-Object System.Drawing.Size(400,20)
$E_Time.Text = "kakunin"
$E_Time.Multiline = $True
$Form.Controls.Add($E_Time)

$CO = New-Object System.Windows.Forms.combobox
$CO = DropDownStyle = 2
$CO.Location = New-Object System.Drawing.Point(100,400)
$CO.Size = New-Object System.Drawing.Size(400,20)
$CO.Items.add("")
$CO.Items.add("株式会社は")
$CO.Items.add("株式会社ら")
$CO.Items.add("だ株式会社")
#$CO.Items.AddRange(@("株式会社は","株式会社ら","だ株式会社"))
$Form.Controls.Add($CO)


function Btn_Click(){
 $S_Time.Text = Get-Date
 $E_Time.Text = Get-Date
 }
 $Button.Add_Click({Btn_click})
 
#フォームの表示
$Form.Add_Shown({$Form.Activate()})
[void] $Form.ShowDialog()

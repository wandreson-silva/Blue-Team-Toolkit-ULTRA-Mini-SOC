Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object Windows.Forms.Form
$form.Text = "Blue Team SOC Dashboard"
$form.Size = New-Object Drawing.Size(900,500)

$list = New-Object Windows.Forms.ListView
$list.View="Details"
$list.Dock="Fill"

$list.Columns.Add("Protocol",80)
$list.Columns.Add("LocalPort",80)
$list.Columns.Add("RemoteIP",150)
$list.Columns.Add("State",120)
$list.Columns.Add("PID",80)

$form.Controls.Add($list)

$timer = New-Object Windows.Forms.Timer
$timer.Interval = 4000

$timer.Add_Tick({

$list.Items.Clear()

Get-NetTCPConnection | ForEach-Object{

$item = New-Object Windows.Forms.ListViewItem("TCP")

$item.SubItems.Add($_.LocalPort)
$item.SubItems.Add($_.RemoteAddress)
$item.SubItems.Add($_.State)
$item.SubItems.Add($_.OwningProcess)

$list.Items.Add($item)

}

})

$timer.Start()

$form.ShowDialog()
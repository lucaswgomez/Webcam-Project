echo "Getting devices that contain the substring'cam'"
$devicelist = Get-PnpDevice -FriendlyName *cam*
echo "Select which Device you would like to check"
$counter = 0
DO
{	
	echo "$counter - $devicelist[$counter]"
	++$counter
}While($counter -le $devicelist.Length)
$user_device = Read-Host -Prompt 'Device Number: '
PAUSE

<?php
require_once __DIR__ . '/config.php';
class API
{
	function Select()
	{
		$db = new Connect();
		$users = array();
		$data = $db->prepare('SELECT * FROM days');
		$data->execute();
		while($OutputData = $data->fetch(PDO::FETCH_ASSOC))
		{
			$users[$OutputData['day_id']]=array(
				'day_id' => $OutputData['day_id'],
				'day_date' => $OutputData['day_date'],
				'day_month' => $OutputData['day_month'],
				'day_name' =>$OutputData['day_name']
			);
		}
		return json_encode($users);
	}
}
$API = new API;
header('Content-Type: application/json');
echo $API->Select();
?>
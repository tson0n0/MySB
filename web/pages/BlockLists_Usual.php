<?php
// rev 5.5
// ----------------------------------
//  __/\\\\____________/\\\\___________________/\\\\\\\\\\\____/\\\\\\\\\\\\\___
//   _\/\\\\\\________/\\\\\\_________________/\\\/////////\\\_\/\\\/////////\\\_
//	_\/\\\//\\\____/\\\//\\\____/\\\__/\\\__\//\\\______\///__\/\\\_______\/\\\_
//	 _\/\\\\///\\\/\\\/_\/\\\___\//\\\/\\\____\////\\\_________\/\\\\\\\\\\\\\\__
//	  _\/\\\__\///\\\/___\/\\\____\//\\\\\________\////\\\______\/\\\/////////\\\_
//	   _\/\\\____\///_____\/\\\_____\//\\\____________\////\\\___\/\\\_______\/\\\_
//		_\/\\\_____________\/\\\__/\\_/\\\______/\\\______\//\\\__\/\\\_______\/\\\_
//		 _\/\\\_____________\/\\\_\//\\\\/______\///\\\\\\\\\\\/___\/\\\\\\\\\\\\\/__
//		  _\///______________\///___\////__________\///////////_____\/////////////_____
//			By toulousain79 ---> https://github.com/toulousain79/
//
//#####################################################################
//
//	Copyright (c) 2013 toulousain79 (https://github.com/toulousain79/)
//	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//	--> Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
//
//#################### FIRST LINE #####################################

global $MySB_DB, $Blocklists_DB, $CurrentUser;
require_once(WEB_INC . '/languages/' . $_SESSION['Language'] . '/' . basename(__FILE__));

$IsInstalled = $MySB_DB->get("services", "is_installed", ["serv_name" => "PeerGuardian"]);
$IsMainUser = (MainUser($CurrentUser)) ? true : false;

if ( $IsInstalled == '1' ) {
	if (isset($_POST['submit'])) {
		switch ($_POST['submit']) {
			case iBlockLists_DB_Save:
				$result = $Blocklists_DB->update("iblocklist", ["iblocklist_username" => $_POST['iblocklist_username'], "iblocklist_pin" => $_POST['iblocklist_pin']], ["id" => 1]);
				if ( $result->rowCount() == 0 ) {
					$type = 'information';
					$message = Global_NoChange;
					$command = 'message_only';

				} else {
					$type = 'success';
					$message = Global_Success;
					$command = 'message_only';
				}

			break;

			case AddList_DB_Save:
for ($i=0, $count = count($_POST['input_id']);$i<$count;$i++) {
echo $_POST['input_origin'][$i].'<br />';
echo $_POST['input_name'][$i].'<br />';
echo $_POST['input_url'][$i].'<br />';
echo $_POST['is_active'][$i].'<br />';
}

				$result = $Blocklists_DB->update("blocklists", ["source" => $_POST['input_origin'], "name" => $_POST['input_name'], "url" => $_POST['input_url'], "active" => $_POST['is_active']], ["id" => 1]);
				if ( $result->rowCount() == 0 ) {
					$type = 'information';
					$message = Global_NoChange;
					$command = 'message_only';

				} else {
					$type = 'success';
					$message = Global_Success;
					$command = 'message_only';
				}

			break;

			default:	// Global_SaveChanges
				for ($i=0, $count = count($_POST['id_blocklists']);$i<$count;$i++) {
					$value = $MySB_DB->update("blocklists", ["enable" => $_POST['enable'][$i], "enable" => $_POST['enable'][$i]], ["id_blocklists" => $_POST['id_blocklists'][$i]]);

					$result = $result+$value;
				}

				if ( $result == 0 ) {
					$type = 'information';
					$message = Global_NoChange;
					$command = 'message_only';

				} else {
					$type = 'success';
					$message = Global_Success;
					$command = 'Blocklists_PeerGuardian';
				}

			break;
		}

		GenerateMessage($command, $type, $message, '');
	}

	$IdentIblocklist = $Blocklists_DB->get("iblocklist_ident", "*", ["id" => 1]);
	$Personal_Blocklists = $Blocklists_DB->select("blocklists", "*");

	if (($IdentIblocklist['iblocklist_username'] == "") || ($IdentIblocklist['iblocklist_pin'] == "")) {
		$BlockList = $MySB_DB->select("blocklists", "*", ["AND" => [
															"list_url[!]" => "",
															"comments[!]" => ["Country", "Subscription required "]
		], "ORDER" => ["list_name" => "ASC"]]);
	} else {
		$BlockList = $MySB_DB->select("blocklists", "*", ["AND" => [
															"list_url[!]" => "",
															"comments[!]" => ["Country"]
		], "ORDER" => ["list_name" => "ASC"]]);
	}

	if ( $IsMainUser ) {
?>

	<div align="center" style="margin-top: 10px; margin-bottom: 20px;">
	<form class="form_settings" method="post" action="">
		<fieldset>
		<legend><?php echo iBlockLists_DB_Title; ?></legend>
			<table style="width:100%">
				<tr>
					<th style="text-align:center;"><?php echo iBlockLists_DB_Username; ?></th>
					<th style="text-align:center;"><?php echo iBlockLists_DB_Password; ?></th>
				</tr>
				<tr>
					<td><input style="width:100%; cursor: pointer;" name="iblocklist_username" type="text" value="<?php echo $IdentIblocklist['iblocklist_username']; ?>" /></td>
					<td style="width:120px"><input style="width:100%; cursor: pointer;" name="iblocklist_pin" type="number" value="<?php echo $IdentIblocklist['iblocklist_pin']; ?>" /></td>
				</tr>
			</table>

			<input type="submit" name="submit" id="submit" value="<?php echo iBlockLists_DB_Save; ?>" style="cursor: pointer;" />
		</fieldset>

		<br />
		<fieldset>
		<legend><?php echo AddList_DB_Title; ?></legend>
		<div id="input1" class="clonedInput">
			<input class="input_id" id="input_id" name="input_id[1]" type="hidden" value="1" />
			<?php echo AddList_DB_Source; ?>&nbsp;<input class="input_origin" size="20" id="input_origin" name="input_origin[1]" type="text" />
			<?php echo AddList_DB_Name; ?>&nbsp;<input class="input_name" size="20" id="input_name" name="input_name[1]" type="text" />
			<?php echo AddList_DB_URL; ?>&nbsp;<input class="input_url" size="60" id="input_url" name="input_url[1]" type="text" />
			&nbsp;&nbsp;<?php echo Global_IsActive; ?>&nbsp;&nbsp;<select class="redText" id="is_active" name="is_active[1]" style="width:60px; cursor: pointer;" required="required" onchange="this.className=this.options[this.selectedIndex].className">
								<option value="0" selected="selected" class="redText"><?php echo Global_No; ?></option>
								<option value="1" class="greenText"><?php echo Global_Yes; ?></option>
							</select>
		</div>
		<div style="margin-top: 10px; margin-bottom: 20px;">
			<input type="button" id="btnAdd" value="<?php echo AddList_DB_AddList; ?>" style="cursor: pointer;" />
			<input type="button" id="btnDel" value="<?php echo AddList_DB_RemoveList; ?>" style="cursor: pointer;" />
		</div>
		<div align="center">
			<p class="Comments"><?php echo AddList_DB_Comment; ?></p>
			<input class="submit" style="width:<?php echo strlen(AddList_DB_Save)*10; ?>px; margin-top: 10px; margin-bottom: 10px;" name="submit" type="submit" value="<?php echo AddList_DB_Save; ?>">
		</div>
		</fieldset>
	</form>
	<?php } ?>

	<form class="form_settings" method="post" action="">
			<fieldset>
			<legend><?php echo BlockLists_Lists_Title; ?></legend>
					<table style="border-spacing:1;">
						<tr>
							<th style="text-align:center;"><?php echo BlockLists_Table_Source; ?></th>
							<th style="text-align:center;"><?php echo BlockLists_Table_Name; ?></th>
							<th style="text-align:center;"><?php echo Global_Comment; ?></th>
							<th style="text-align:center;"><?php echo Global_LastUpdate; ?></th>
							<th style="text-align:center;"><?php echo Global_IsDefault; ?></th>
							<th style="text-align:center;"><?php echo Global_IsActive; ?></th>
						</tr>
	<?php
	foreach($Personal_Blocklists as $List) {
		switch ($List["enable"]) {
			case '0':
				$default = '<select name="default[]" style="width:60px; background-color:#FEBABC;" disabled>
								<option value="0" selected="selected">' .Global_No. '</option>
							</select>';
				if ( $IsMainUser ) {
					$enable = '	<select name="enable[]" style="width:60px;" class="redText" onchange="this.className=this.options[this.selectedIndex].className">
										<option value="0" selected="selected" class="redText">' .Global_No. '</option>
										<option value="1" class="greenText">' .Global_Yes. '</option>
									</select>';
				} else {
					$enable = '	<select name="enable[]" style="width:60px;" class="redText" disabled>
										<option value="0" selected="selected" class="redText">' .Global_No. '</option>
									</select>';
				}
				break;
			default:
				$default = '<select name="default[]" style="width:60px; background-color:#B3FEA5;" disabled>
								<option value="1" selected="selected">' .Global_Yes. '</option>
							</select>';
				if ( $IsMainUser ) {
					$enable = '	<select name="enable[]" style="width:60px;" class="greenText" onchange="this.className=this.options[this.selectedIndex].className">
										<option value="0" class="redText">' .Global_No. '</option>
										<option value="1" selected="selected" class="greenText">' .Global_Yes. '</option>
									</select>';
				} else {
					$enable = '	<select name="enable[]" style="width:60px;" class="greenText" disabled>
										<option value="1" selected="selected" class="greenText">' .Global_Yes. '</option>
									</select>';
				}
				break;
		}
	?>

				<tr>
					<td><?php echo $List["source"]; ?></td>
					<td>
						<input type="hidden" name="id[]" value="<?php echo $List["id"]; ?>" />
						<input type="hidden" name="name[]" value="<?php echo $List["name"]; ?>" />
						<?php echo $List["name"]; ?>
					</td>
					<td>

					</td>
					<td>
						<?php echo $List["lastupdate"]; ?>
					</td>
					<td>
						<?php echo $default; ?>
					</td>
					<td>
						<?php echo $enable; ?>
					</td>
				</tr>

	<?php
	}

	foreach($BlockList as $List) {
		switch ($List["default"]) {
			case '0':
				$default = '<select name="default[]" style="width:60px; background-color:#FEBABC;" disabled>
								<option value="0" selected="selected">' .Global_No. '</option>
							</select>';
				break;
			default:
				$default = '<select name="default[]" style="width:60px; background-color:#B3FEA5;" disabled>
								<option value="1" selected="selected">' .Global_Yes. '</option>
							</select>';
				break;
		}

		switch ($List["enable"]) {
			case '0':
				if ( $IsMainUser ) {
					$enable = '	<select name="enable[]" style="width:60px;" class="redText" onchange="this.className=this.options[this.selectedIndex].className">
										<option value="0" selected="selected" class="redText">' .Global_No. '</option>
										<option value="1" class="greenText">' .Global_Yes. '</option>
									</select>';
				} else {
					$enable = '	<select name="enable[]" style="width:60px;" class="redText" disabled>
										<option value="0" selected="selected" class="redText">' .Global_No. '</option>
									</select>';
				}
				break;
			default:
				if ( $IsMainUser ) {
					$enable = '	<select name="enable[]" style="width:60px;" class="greenText" onchange="this.className=this.options[this.selectedIndex].className">
										<option value="0" class="redText">' .Global_No. '</option>
										<option value="1" selected="selected" class="greenText">' .Global_Yes. '</option>
									</select>';
				} else {
					$enable = '	<select name="enable[]" style="width:60px;" class="greenText" disabled>
										<option value="1" selected="selected" class="greenText">' .Global_Yes. '</option>
									</select>';
				}
				break;
		}
	?>
				<tr>
					<td>i-Blocklist</td>
					<td>
						<input type="hidden" name="id_blocklists[]" value="<?php echo $List["id_blocklists"]; ?>" />
						<input type="hidden" name="name[]" value="<?php echo $List["list_name"]; ?>" />
						<?php echo '<a target="_blank" href="' . $List["infos_url"] . '">' . $List["list_name"] . ' <i>(' . $List["author"] . ')</i> </a>'; ?>
					</td>
					<td>
						<?php echo $List["comments"]; ?>
					</td>
					<td>
						<?php echo $List["lastupdate"]; ?>
					</td>
					<td>
						<?php echo $default; ?>
					</td>
					<td>
						<?php echo $enable; ?>
					</td>
				</tr>
	<?php
	} // foreach($BlockList as $List) {
	?>
					</table>
				</fieldset>
<?php if ( $IsMainUser ) { ?>
			<input class="submit" style="width:<?php echo strlen(Global_SaveChanges)*10; ?>px; margin-top: 10px;" name="submit" type="submit" value="<?php echo Global_SaveChanges; ?>">
<?php } ?>
	</form>
	</div>
<?php
} else {
	echo '<h1>PeerGuardian is not installed...</h1>';
}
//#################### LAST LINE ######################################

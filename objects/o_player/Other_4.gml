/// @description Insert description here
// You can write your code in this editor
// JOSE THIS IS THE ROOM START EVENT

#region overwrite old save
if(file_exists(SAVEFILE)) {
	file_delete(SAVEFILE);
}
#endregion
// FILE FOUND IN APP DATA LOCAL
#region create new save file
var file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_write_real(file, global.kills);
file_text_close(file);
#endregion

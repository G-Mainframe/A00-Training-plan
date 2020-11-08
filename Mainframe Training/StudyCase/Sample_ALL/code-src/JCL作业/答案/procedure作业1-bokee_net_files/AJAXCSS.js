
function AJAXCSS() { }
AJAXCSS._path = '/dwr';

AJAXCSS.editCssAndStyle = function(p1, callback) {
    DWREngine._execute(AJAXCSS._path, 'AJAXCSS', 'editCssAndStyle', false, p1, callback);
}

AJAXCSS.editLayout = function(p1, callback) {
    DWREngine._execute(AJAXCSS._path, 'AJAXCSS', 'editLayout', false, p1, callback);
}

AJAXCSS.updateBackgroundWithoutUpload = function(p1, callback) {
    DWREngine._execute(AJAXCSS._path, 'AJAXCSS', 'updateBackgroundWithoutUpload', false, p1, callback);
}

AJAXCSS.countPublicNoteBy = function(callback) {
    DWREngine._execute(AJAXCSS._path, 'AJAXCSS', 'countPublicNoteBy', false, callback);
}

AJAXCSS.deleteBokeeNote = function(p1, p2, callback) {
    DWREngine._execute(AJAXCSS._path, 'AJAXCSS', 'deleteBokeeNote', false, p1, p2, callback);
}

AJAXCSS.updateUserLogo = function(callback) {
    DWREngine._execute(AJAXCSS._path, 'AJAXCSS', 'updateUserLogo', false, callback);
}

AJAXCSS.changeTheme = function(p1, callback) {
    DWREngine._execute(AJAXCSS._path, 'AJAXCSS', 'changeTheme', false, p1, callback);
}

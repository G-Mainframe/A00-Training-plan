
function AJAXDELETE() { }
AJAXDELETE._path = '/dwr';

AJAXDELETE.deleteEntry = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteEntry', false, p1, callback);
}

AJAXDELETE.deleteComment = function(p1, p2, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteComment', false, p1, p2, callback);
}

AJAXDELETE.deleteWebLogType = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteWebLogType', false, p1, callback);
}

AJAXDELETE.deleteBlogTag = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteBlogTag', false, p1, callback);
}

AJAXDELETE.deletePublic = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deletePublic', false, p1, callback);
}

AJAXDELETE.deleteEduExp = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteEduExp', false, p1, callback);
}

AJAXDELETE.deleteEmployeeExp = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteEmployeeExp', false, p1, callback);
}

AJAXDELETE.deleteAddition = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteAddition', false, p1, callback);
}

AJAXDELETE.deleteIntend = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteIntend', false, p1, callback);
}

AJAXDELETE.deleteBookeNote = function(p1, p2, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteBookeNote', false, p1, p2, callback);
}

AJAXDELETE.deleteZone = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteZone', false, p1, callback);
}

AJAXDELETE.deleteBokeeLinkList = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteBokeeLinkList', false, p1, callback);
}

AJAXDELETE.deleteBokeeLink = function(p1, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteBokeeLink', false, p1, callback);
}

AJAXDELETE.deleteImgComment = function(p1, p2, callback) {
    DWREngine._execute(AJAXDELETE._path, 'AJAXDELETE', 'deleteImgComment', false, p1, p2, callback);
}

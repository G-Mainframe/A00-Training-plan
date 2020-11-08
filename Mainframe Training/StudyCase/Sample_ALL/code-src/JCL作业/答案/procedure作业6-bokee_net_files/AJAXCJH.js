
function AJAXCJH() { }
AJAXCJH._path = '/dwr';

AJAXCJH.withinThelaw = function(p0, callback) {
    DWREngine._execute(AJAXCJH._path, 'AJAXCJH', 'withinThelaw', p0, callback);
}

AJAXCJH.setFriendToShouYe = function(p1, p2, p3, p4, callback) {
    DWREngine._execute(AJAXCJH._path, 'AJAXCJH', 'setFriendToShouYe', false, p1, p2, p3, p4, callback);
}

AJAXCJH.checkMyHateFriends = function(p1, callback) {
    DWREngine._execute(AJAXCJH._path, 'AJAXCJH', 'checkMyHateFriends', false, p1, callback);
}

AJAXCJH.sendMessageTo = function(p1, p2, p3, callback) {
    DWREngine._execute(AJAXCJH._path, 'AJAXCJH', 'sendMessageTo', false, p1, p2, p3, callback);
}

AJAXCJH.totalFriendGroup = function(callback) {
    DWREngine._execute(AJAXCJH._path, 'AJAXCJH', 'totalFriendGroup', false, callback);
}

AJAXCJH.getUserMessage = function(p0, p1, p2, callback) {
    DWREngine._execute(AJAXCJH._path, 'AJAXCJH', 'getUserMessage', p0, p1, p2, callback);
}

AJAXCJH.getUserMessageWithImg = function(p0, p1, p2, callback) {
    DWREngine._execute(AJAXCJH._path, 'AJAXCJH', 'getUserMessageWithImg', p0, p1, p2, callback);
}

AJAXCJH.isTrueYZM = function(p1, p2, callback) {
    DWREngine._execute(AJAXCJH._path, 'AJAXCJH', 'isTrueYZM', false, p1, p2, callback);
}

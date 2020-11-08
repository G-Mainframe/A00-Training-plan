
function AJAXManager() { }
AJAXManager._path = '/dwr';

AJAXManager.setRole = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'setRole', p0, p1, callback);
}

AJAXManager.isValidCompanyName = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'isValidCompanyName', p0, callback);
}

AJAXManager.isValidCompanyDomain = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'isValidCompanyDomain', p0, callback);
}

AJAXManager.getTypeColumnByCompanyId = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getTypeColumnByCompanyId', p0, callback);
}

AJAXManager.getRelationCompanyByCompanyName = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getRelationCompanyByCompanyName', p0, callback);
}

AJAXManager.getUserByEmail = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getUserByEmail', p0, callback);
}

AJAXManager.checkEmail = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'checkEmail', p0, callback);
}

AJAXManager.importantFriend = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'importantFriend', p0, p1, callback);
}

AJAXManager.changeFriendliness = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'changeFriendliness', p0, p1, callback);
}

AJAXManager.getComEntriesByPostTime = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getComEntriesByPostTime', p0, p1, callback);
}

AJAXManager.getComEntriesByHits = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getComEntriesByHits', p0, p1, callback);
}

AJAXManager.getComEntriesByComments = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getComEntriesByComments', p0, p1, callback);
}

AJAXManager.getBokeesByTime = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getBokeesByTime', p0, p1, callback);
}

AJAXManager.getBokeesBylastEditDate = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getBokeesBylastEditDate', p0, p1, callback);
}

AJAXManager.getBokeesByHits = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getBokeesByHits', p0, p1, callback);
}

AJAXManager.updateResumeState = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'updateResumeState', p0, callback);
}

AJAXManager.getEntriesByPostTime = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getEntriesByPostTime', p0, p1, callback);
}

AJAXManager.getEntriesByHits = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getEntriesByHits', p0, p1, callback);
}

AJAXManager.getEntriesByComments = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getEntriesByComments', p0, p1, callback);
}

AJAXManager.getOriginalEntries = function(callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getOriginalEntries', callback);
}

AJAXManager.getBokees = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getBokees', p0, callback);
}

AJAXManager.getCirclesByRegDate = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getCirclesByRegDate', p0, p1, callback);
}

AJAXManager.getCirclesByViewTime = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getCirclesByViewTime', p0, p1, callback);
}

AJAXManager.getCirclesByComments = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getCirclesByComments', p0, p1, callback);
}

AJAXManager.getCirclesByEntryCount = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getCirclesByEntryCount', p0, p1, callback);
}

AJAXManager.checkUsernameExist = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'checkUsernameExist', p0, callback);
}

AJAXManager.checkDomain = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'checkDomain', p0, p1, callback);
}

AJAXManager.getBokeesByLogs = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getBokeesByLogs', p0, p1, callback);
}

AJAXManager.madeMap = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'madeMap', p0, callback);
}

AJAXManager.viewEntry = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'viewEntry', p0, callback);
}

AJAXManager.stringToMap = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'stringToMap', p0, callback);
}

AJAXManager.getTpesByCircleId = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getTpesByCircleId', p0, p1, callback);
}

AJAXManager.getImageTypesByCircleId = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getImageTypesByCircleId', p0, callback);
}

AJAXManager.getTypeBydailyId = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getTypeBydailyId', p0, callback);
}

AJAXManager.getImageTypeColumnByCompanyId = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getImageTypeColumnByCompanyId', p0, callback);
}

AJAXManager.getBokeesByRegDate = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getBokeesByRegDate', p0, p1, callback);
}

AJAXManager.getBokeesByViewTime = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getBokeesByViewTime', p0, p1, callback);
}

AJAXManager.getBokeesByComments = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getBokeesByComments', p0, p1, callback);
}

AJAXManager.changeHiddenState = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'changeHiddenState', p0, p1, callback);
}

AJAXManager.changeShareState = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'changeShareState', p0, p1, callback);
}

AJAXManager.saveRecomEntryForCircle = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'saveRecomEntryForCircle', p0, callback);
}

AJAXManager.cancelRecomEntryForCircle = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'cancelRecomEntryForCircle', p0, callback);
}

AJAXManager.changePublicNote = function(p0, p1, p2, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'changePublicNote', p0, p1, p2, callback);
}

AJAXManager.getCircles = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getCircles', p0, callback);
}

AJAXManager.getCodeByUsername = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getCodeByUsername', p0, callback);
}

AJAXManager.delRow = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'delRow', p0, callback);
}

AJAXManager.changeMember = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'changeMember', p0, p1, callback);
}

AJAXManager.cnMember = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'cnMember', p0, p1, callback);
}

AJAXManager.voteMember = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'voteMember', p0, p1, callback);
}

AJAXManager.updateWebLogEntryVoteCount = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'updateWebLogEntryVoteCount', p0, callback);
}

AJAXManager.approveFloatBokee = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'approveFloatBokee', p0, callback);
}

AJAXManager.declineFloatBokee = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'declineFloatBokee', p0, callback);
}

AJAXManager.checkBoxBokee = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'checkBoxBokee', p0, callback);
}

AJAXManager.getEntryPart = function(p0, p1, p2, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'getEntryPart', p0, p1, p2, callback);
}

AJAXManager.changeMemberType = function(p0, p1, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'changeMemberType', p0, p1, callback);
}

AJAXManager.approveDoubleBang = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'approveDoubleBang', p0, callback);
}

AJAXManager.declineDoubleBang = function(p0, callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'declineDoubleBang', p0, callback);
}

AJAXManager.isLogined = function(callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'isLogined', callback);
}

AJAXManager.logout = function(callback) {
    DWREngine._execute(AJAXManager._path, 'AJAXManager', 'logout', false, callback);
}

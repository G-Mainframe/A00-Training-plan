
function AJAXWebLog() { }
AJAXWebLog._path = '/dwr';

AJAXWebLog.deleteTopEntry = function(p1, callback) {
    DWREngine._execute(AJAXWebLog._path, 'AJAXWebLog', 'deleteTopEntry', false, p1, callback);
}

AJAXWebLog.makeAsTopBlog = function(p1, callback) {
    DWREngine._execute(AJAXWebLog._path, 'AJAXWebLog', 'makeAsTopBlog', false, p1, callback);
}

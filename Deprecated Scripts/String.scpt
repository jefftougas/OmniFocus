JsOsaDAS1.001.00bplist00�Vscript_�// JXA String helper functions

function toTitleCase(str) {
	return str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
}                            �jscr  ��ޭ
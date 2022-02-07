function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <Root>/In1 */
	this.urlHashMap["arthimeticoperators:5"] = "arthimeticoperators.c:34,42,50,58&arthimeticoperators.h:38";
	/* <Root>/In2 */
	this.urlHashMap["arthimeticoperators:6"] = "arthimeticoperators.c:35,43,51,59&arthimeticoperators.h:39";
	/* <Root>/Add */
	this.urlHashMap["arthimeticoperators:1"] = "arthimeticoperators.c:36";
	/* <Root>/Divide */
	this.urlHashMap["arthimeticoperators:4"] = "arthimeticoperators.c:60";
	/* <Root>/Product */
	this.urlHashMap["arthimeticoperators:3"] = "arthimeticoperators.c:52";
	/* <Root>/Subtract */
	this.urlHashMap["arthimeticoperators:2"] = "arthimeticoperators.c:44";
	/* <Root>/Out1 */
	this.urlHashMap["arthimeticoperators:7"] = "arthimeticoperators.c:33&arthimeticoperators.h:44";
	/* <Root>/Out2 */
	this.urlHashMap["arthimeticoperators:8"] = "arthimeticoperators.c:41&arthimeticoperators.h:45";
	/* <Root>/Out3 */
	this.urlHashMap["arthimeticoperators:9"] = "arthimeticoperators.c:49&arthimeticoperators.h:46";
	/* <Root>/Out4 */
	this.urlHashMap["arthimeticoperators:10"] = "arthimeticoperators.c:57&arthimeticoperators.h:47";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "arthimeticoperators"};
	this.sidHashMap["arthimeticoperators"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<Root>/In1"] = {sid: "arthimeticoperators:5"};
	this.sidHashMap["arthimeticoperators:5"] = {rtwname: "<Root>/In1"};
	this.rtwnameHashMap["<Root>/In2"] = {sid: "arthimeticoperators:6"};
	this.sidHashMap["arthimeticoperators:6"] = {rtwname: "<Root>/In2"};
	this.rtwnameHashMap["<Root>/Add"] = {sid: "arthimeticoperators:1"};
	this.sidHashMap["arthimeticoperators:1"] = {rtwname: "<Root>/Add"};
	this.rtwnameHashMap["<Root>/Divide"] = {sid: "arthimeticoperators:4"};
	this.sidHashMap["arthimeticoperators:4"] = {rtwname: "<Root>/Divide"};
	this.rtwnameHashMap["<Root>/Product"] = {sid: "arthimeticoperators:3"};
	this.sidHashMap["arthimeticoperators:3"] = {rtwname: "<Root>/Product"};
	this.rtwnameHashMap["<Root>/Subtract"] = {sid: "arthimeticoperators:2"};
	this.sidHashMap["arthimeticoperators:2"] = {rtwname: "<Root>/Subtract"};
	this.rtwnameHashMap["<Root>/Out1"] = {sid: "arthimeticoperators:7"};
	this.sidHashMap["arthimeticoperators:7"] = {rtwname: "<Root>/Out1"};
	this.rtwnameHashMap["<Root>/Out2"] = {sid: "arthimeticoperators:8"};
	this.sidHashMap["arthimeticoperators:8"] = {rtwname: "<Root>/Out2"};
	this.rtwnameHashMap["<Root>/Out3"] = {sid: "arthimeticoperators:9"};
	this.sidHashMap["arthimeticoperators:9"] = {rtwname: "<Root>/Out3"};
	this.rtwnameHashMap["<Root>/Out4"] = {sid: "arthimeticoperators:10"};
	this.sidHashMap["arthimeticoperators:10"] = {rtwname: "<Root>/Out4"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();

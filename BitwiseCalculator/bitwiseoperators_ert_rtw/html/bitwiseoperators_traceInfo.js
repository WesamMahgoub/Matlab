function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <Root>/operand1 */
	this.urlHashMap["bitwiseoperators:6"] = "bitwiseoperators.c:33,41,49,57,66&bitwiseoperators.h:38";
	/* <Root>/operand2 */
	this.urlHashMap["bitwiseoperators:7"] = "bitwiseoperators.c:34,42,50,58,72&bitwiseoperators.h:39";
	/* <Root>/andoperator */
	this.urlHashMap["bitwiseoperators:3"] = "bitwiseoperators.c:35";
	/* <Root>/notoperand1 */
	this.urlHashMap["bitwiseoperators:14"] = "bitwiseoperators.c:67";
	/* <Root>/notoperand2 */
	this.urlHashMap["bitwiseoperators:13"] = "bitwiseoperators.c:73";
	/* <Root>/notoperator */
	this.urlHashMap["bitwiseoperators:5"] = "bitwiseoperators.c:59";
	/* <Root>/oroperator */
	this.urlHashMap["bitwiseoperators:1"] = "bitwiseoperators.c:43";
	/* <Root>/xorinxnoroperator */
	this.urlHashMap["bitwiseoperators:2"] = "bitwiseoperators.c:60";
	/* <Root>/xoroperator */
	this.urlHashMap["bitwiseoperators:4"] = "bitwiseoperators.c:51";
	/* <Root>/andout */
	this.urlHashMap["bitwiseoperators:8"] = "bitwiseoperators.c:32&bitwiseoperators.h:44";
	/* <Root>/orout */
	this.urlHashMap["bitwiseoperators:9"] = "bitwiseoperators.c:40&bitwiseoperators.h:45";
	/* <Root>/xorout */
	this.urlHashMap["bitwiseoperators:10"] = "bitwiseoperators.c:48&bitwiseoperators.h:46";
	/* <Root>/xnorout */
	this.urlHashMap["bitwiseoperators:11"] = "bitwiseoperators.c:56&bitwiseoperators.h:47";
	/* <Root>/not1 */
	this.urlHashMap["bitwiseoperators:15"] = "bitwiseoperators.c:65&bitwiseoperators.h:48";
	/* <Root>/not2 */
	this.urlHashMap["bitwiseoperators:16"] = "bitwiseoperators.c:71&bitwiseoperators.h:49";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "bitwiseoperators"};
	this.sidHashMap["bitwiseoperators"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<Root>/operand1"] = {sid: "bitwiseoperators:6"};
	this.sidHashMap["bitwiseoperators:6"] = {rtwname: "<Root>/operand1"};
	this.rtwnameHashMap["<Root>/operand2"] = {sid: "bitwiseoperators:7"};
	this.sidHashMap["bitwiseoperators:7"] = {rtwname: "<Root>/operand2"};
	this.rtwnameHashMap["<Root>/andoperator"] = {sid: "bitwiseoperators:3"};
	this.sidHashMap["bitwiseoperators:3"] = {rtwname: "<Root>/andoperator"};
	this.rtwnameHashMap["<Root>/notoperand1"] = {sid: "bitwiseoperators:14"};
	this.sidHashMap["bitwiseoperators:14"] = {rtwname: "<Root>/notoperand1"};
	this.rtwnameHashMap["<Root>/notoperand2"] = {sid: "bitwiseoperators:13"};
	this.sidHashMap["bitwiseoperators:13"] = {rtwname: "<Root>/notoperand2"};
	this.rtwnameHashMap["<Root>/notoperator"] = {sid: "bitwiseoperators:5"};
	this.sidHashMap["bitwiseoperators:5"] = {rtwname: "<Root>/notoperator"};
	this.rtwnameHashMap["<Root>/oroperator"] = {sid: "bitwiseoperators:1"};
	this.sidHashMap["bitwiseoperators:1"] = {rtwname: "<Root>/oroperator"};
	this.rtwnameHashMap["<Root>/xorinxnoroperator"] = {sid: "bitwiseoperators:2"};
	this.sidHashMap["bitwiseoperators:2"] = {rtwname: "<Root>/xorinxnoroperator"};
	this.rtwnameHashMap["<Root>/xoroperator"] = {sid: "bitwiseoperators:4"};
	this.sidHashMap["bitwiseoperators:4"] = {rtwname: "<Root>/xoroperator"};
	this.rtwnameHashMap["<Root>/andout"] = {sid: "bitwiseoperators:8"};
	this.sidHashMap["bitwiseoperators:8"] = {rtwname: "<Root>/andout"};
	this.rtwnameHashMap["<Root>/orout"] = {sid: "bitwiseoperators:9"};
	this.sidHashMap["bitwiseoperators:9"] = {rtwname: "<Root>/orout"};
	this.rtwnameHashMap["<Root>/xorout"] = {sid: "bitwiseoperators:10"};
	this.sidHashMap["bitwiseoperators:10"] = {rtwname: "<Root>/xorout"};
	this.rtwnameHashMap["<Root>/xnorout"] = {sid: "bitwiseoperators:11"};
	this.sidHashMap["bitwiseoperators:11"] = {rtwname: "<Root>/xnorout"};
	this.rtwnameHashMap["<Root>/not1"] = {sid: "bitwiseoperators:15"};
	this.sidHashMap["bitwiseoperators:15"] = {rtwname: "<Root>/not1"};
	this.rtwnameHashMap["<Root>/not2"] = {sid: "bitwiseoperators:16"};
	this.sidHashMap["bitwiseoperators:16"] = {rtwname: "<Root>/not2"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();

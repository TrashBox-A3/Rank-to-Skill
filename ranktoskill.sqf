
///script by Rodeostar42///



///Skill Gear///
_medgear = [
"UNS_ARMY_MED"
];

_demgear = [
"UNS_Alice_F9"
];

_rtogear = [
"tf_anprc155"
];

_Interpreter = [

"UNS_ARMY_BDU_25thID66maj"

];


///Rank Gear///
_lieutenantgear = [
"UNS_ARMY_BDU_25thID661stlt"
];


_sergeantgear = [
"UNS_ARMY_BDU_25thID661stsgt",
"UNS_ARMY_BDU_25thID66msg"
];

_corporalgear = [
"UNS_JPilot_BDU",
"UNS_Pilot_BDU",
"UNS_ARMY_BDU_25thID66cpl",
"UNS_ARMY_BDU_25thID66spc",
"UNS_ARMY_BDU_25thID66spc5",
"UNS_ARMY_BDU_F"
];

_privategear = [
"UNS_ARMY_BDU_25thID66pv1",
"UNS_ARMY_BDU_25thID66pv2",
"UNS_ARMY_BDU_25thID66pfc"
];



while{true} do {

///////////////give skill of ace3////////////////

///Assign Medic///
if(((backpack player in _medgear)&&(vehicle player == player)))   then {

player setVariable ["ACE_medical_medicClass",2,true];

player assignTeam "GREEN" call BIS_fnc_MP;

}
       else
       {

if((!(backpack player in _medgear)&&(vehicle player == player)))   then {

player setVariable ["ACE_medical_medicClass",0,true];

player assignTeam "MAIN" call BIS_fnc_MP;

sleep 5;
};

};

///Assign Enginner///
if(((backpack player in _demgear)&&(vehicle player == player)))   then {

player setVariable ["ACE_isEngineer", 2, true];

}
       else
       {

if((!(backpack player in _demgear)&&(vehicle player == player)))   then {

player setVariable ["ACE_isEngineer", 0, true];

sleep 5;
};

};

///Assign RTO///
if(((backpack player in _rtogear)&&(vehicle player == player)))   then {

player assignTeam "MAIN" call BIS_fnc_MP;

};


///////////////give Rank////////////////


///LIEUTENANT///
if(((uniform player in _lieutenantgear)&&(vehicle player == player)))   then {

player setUnitRank "LIEUTENANT";

group player setGroupId ["Platoon1"];

player assignTeam "YELLOW" call BIS_fnc_MP;

}
       else
       {

if((!(uniform player in _lieutenantgear)&&(vehicle player == player)))   then {

player assignTeam "MAIN" call BIS_fnc_MP;

};

};

///SERGEANT///
if(((uniform player in _sergeantgear)&&(vehicle player == player)))   then {

player setUnitRank "SERGEANT";

player assignTeam "YELLOW" call BIS_fnc_MP;

}
       else
       {

if((!(uniform player in _sergeantgear)&&(vehicle player == player)))   then {

player assignTeam "MAIN" call BIS_fnc_MP;

};

};

///CORPORAL///
if(((uniform player in _corporalgear)&&(vehicle player == player)))   then {

player setUnitRank "CORPORAL";

};

///PRIVATE///
if(((uniform player in _privategear)&&(vehicle player == player)))   then {

player setUnitRank "PRIVATE";

};


///Interpreter///
if(((uniform player in _Interpreter)&&(vehicle player == player)))   then {

[] execVM "Interpreter.sqf";

hint "you get skill Interpreter";

waitUntil {((!(uniform player in _Interpreter)&&(vehicle player == player)))};

};



sleep 5;
};

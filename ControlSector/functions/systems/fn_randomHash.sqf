#include "..\script_component.hpp"
//doc

params [["_length", 5]];

private _alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","t","u","v","x","y","z"];
private _numbers = ["1","2","3","4","5","6","7","8","9","0"];

private _stringHash = [];
for "_x" from 1 to _length do {
    private _select = [_numbers, _alphabet] select floor random 2;
    _select = _select select floor random count _select;
    _stringHash pushBack _select;
};
_stringHash = _stringHash joinString "";

_stringHash;
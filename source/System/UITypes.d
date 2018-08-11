module System.UITypes;

import std.conv: parse, hexString;

// alias TAlphaColor = uint;
struct TAlphaColor
{
	private uint _value;
	
	@property uint value()
	{
		return _value;
	}
	
	alias value this;
	
	this(string s)
	{
		_value = parse!uint(s, 16);
	}
}

alias TAlphaColors = TAlphaColorRec;

struct TAlphaColorRec
{
	enum Alpha = TAlphaColor(hexString!"FF000000");
	enum Black = TAlphaColor(hexString!"00000000");
	enum Ivory = TAlphaColor(hexString!"FFFFFFF0");
	
	
	enum White = TAlphaColorRec.Alpha | TAlphaColor(hexString!"FFFFFF");
}

alias TFontStyles = TFontStyle[];

enum TFontStyle {
	fsBold, fsItalic, fsUnderline, fsStrikeOut
};

enum TCloseAction {
	caNone, caHide, caFree, caMinimize
};
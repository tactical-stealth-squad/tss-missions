#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

#define UI_GRID_W (pixelW * pixelGridBase * 0.44) // One grid width
#define UI_GRID_H (pixelH * pixelGridBase * 0.44) // One grid height
#define UI_GUTTER_W (pixelW * 2)       // One “gutter” width
#define UI_GUTTER_H (pixelH * 2)       // One “gutter” height

class DA_RscText
{
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	type = 0;
	style = 0;
	shadow = 1;
	font = "PuristaMedium";
	text = "";
	lineSpacing = 1;
	SizeEx = 0.03;
	ColorBackground[] = {0,0,0,0};
	ColorText[] = {1,1,1,1};
	colorShadow[] = {0, 0, 0, 0.5};
};

class DA_RscButton
{
	access = 0;
	type = 1;
	text = "";
	colorText[] = {0.8784,0.8471,0.651,0.8};
	colorDisabled[] = {0.4,0.4,0.4,0.3};
	colorBackground[] = {0.15, 0.4, 0.65,0.3};//{0.05, 0.5, 0.75,0.5};
	colorBackgroundDisabled[] = {0.95,0.95,0.95,0.3};
	colorBackgroundActive[] = {0.1, 0.3, 0.7,0.3};//{0.05, 0.5, 0.75,0.2};
	colorFocused[] = {0.1, 0.2, 0.6,0.3};//{0.05, 0.5, 0.75};
	colorShadow[] = {0.04,0.04,0.04,0.1};//{0.023529,0,0.0313725,1};
	colorBorder[] = {0.04,0.04,0.04,0.1};//{0.023529,0,0.0313725,1};
	soundEnter[] = {"\A3\ui_f\data\sound\rscbutton\soundenter" ,0.09,1};
	soundPush[] = {"\A3\ui_f\data\sound\rscbutton\soundpush" ,0.09,1};
	soundClick[] = {"\A3\ui_f\data\sound\rscbutton\soundclick" ,0.09,1};
	soundEscape[] = {"\A3\ui_f\data\sound\rscbutton\soundescape" ,0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "Puristamedium";
	sizeEx = 0.04921;
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
	};

class DA_RscFrame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "Puristamedium";
	sizeEx = 0.03;
	text = "";
};

class ScrollBar 
	{
 	color[] = {1,1,1,0.6};
	colorActive[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.3};
	thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	shadow = 0;
 	};

class DA_RscCombo
{
	access = 0;
	type = 4;
	style = 0;
	colorSelect[] = {0.023529,0,0.0313725,1};
	colorText[] = {0.023529,0,0.0313725,1};
	colorBackground[] = {0.75,0.75,0.75,0.9};
	colorScrollbar[] = {0.023529,0,0.0313725,0.9};
	colorSelectBackground[] = {0.6,0.6,0.6,0.85};//{0.8784,0.8471,0.651,1}
	soundSelect[] = {"\A3\ui_f\data\sound\rscbutton\soundclick",0.08,1};
	soundExpand[] = {"\A3\ui_f\data\sound\rscbutton\soundenter",1,1};
	soundCollapse[] = {"\A3\ui_f\data\sound\rscbutton\soundenter",1,1};
	maxHistoryDelay = 1;
	class ComboScrollBar : ScrollBar 
		{
	 	color[] = {0.95,0.95,0.95,0.3};
		colorActive[] = {0.95,0.95,0.95,0.3};
		colorDisabled[] = {0.95,0.95,0.95,0.3};
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		shadow = 0;
	 	};
 
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	shadow = 0;
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	color[] = {0,0,0,0.6};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
	font = "Puristamedium";
	sizeEx = 0.04921;
};

class RscEdit
{
	access = 0;
	type = 2;
	style = 16;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = {0,0,0,0.75};
	colorText[] = {1,1,0.8,1};
	colorSelection[] = {0.8,0.8,0.7,0.25};
	colorDisabled[] = {1,1,1,0.5};
	font = "Puristamedium";
	htmlControl = 1;
	sizeEx = 0.04;
	autocomplete = "";
	text = "";
	size[] = {4,4};
	shadow = 0;
};

class DA_RscPicture
{
	access = 0;
	type = 0;
	idc = -1;
	style = 144;//48
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};

class RscTitles
	{
	titles[] = {DA_Main_HUD};
	
	class DA_Main_HUD 
		{
		idd = -1;
		duration = 999999;
		enableSimulation = 1;
		onLoad = "_this spawn RYD_DA_HUDLoad";

		class Controls 
			{
			 class DA_Kills 
				{
				idc = 1;
				type = 0;                           
				style = 2; 
				shadow = 0;			
				x = safeZoneX + (safeZoneW/2) - UI_GRID_W * 54; 
				y = safeZoneY + UI_GRID_H * 0.25;
				w = UI_GRID_W * 36;
				h = UI_GRID_H * 7;               
				colorBackground[] = {0, 0, 0, 0};                   
				SizeEx = .15 * UI_GRID_H/0.0133333;
				font = "PuristaMedium";//"Caveat";
				text = "NO DATA";  				
				colorText[] = {0, 0.8, 0.2, 1};       
				};
				
			 class DA_Deaths: DA_Kills
				{
				idc = 2;                        
				x = safeZoneX + (safeZoneW/2) - UI_GRID_W * 18;    
				colorText[] = {1, 0, 0, 1};
				text = "NO DATA";
				};
				
			 class DA_Garrison: DA_Kills 
				{
				idc = 3;
				x = safeZoneX + (safeZoneW/2) + UI_GRID_W * 18;     
				colorText[] = {1, 0, 1, 1};
				text = "NO DATA";
				};
				
			 class DA_KillsD: DA_Kills 
				{
				idc = 4;
				y = safeZoneY + UI_GRID_H * 7.25;    
				text = "Kills";
				SizeEx = .05 * UI_GRID_H/0.0133333;
				};
				
			 class DA_DeathsD: DA_KillsD 
				{
				idc = 5;
				x = safeZoneX + (safeZoneW/2) - UI_GRID_W * 18;    
				text = "Deaths";
				colorText[] = {1, 0, 0, 1};
				SizeEx = .05 * UI_GRID_H/0.0133333;
				};	
				
			 class DA_GarrisonD: DA_KillsD 
				{
				idc = 6;
				x = safeZoneX + (safeZoneW/2) + UI_GRID_W * 18;     
				text = "Garrison";
				colorText[] = {1, 0, 1, 1};
				SizeEx = .05 * UI_GRID_H/0.0133333;
				};
			};
		};	
	};

class RscDA
	{
	IDD = 2500;
	name= "DA";
	onLoad = "";
	MovingEnable = 0;
	enableSimulation = true;
		
	class controls
		{
		class RscBack: DA_RscPicture
			{
			idc = 1;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 17 * GUI_GRID_H;
			text = "#(argb,8,8,3)color(0.01,0.1,0.3,0.5)";			
			};
		
		class RscFrame_DA: DA_RscFrame
			{
			idc = 2;
			text = "Settings";
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 16.5 * GUI_GRID_H;
			sizeEx = 1 * GUI_GRID_H;
			};
			
		class SideA_Frame: DA_RscFrame
			{
			idc = 17000;
			text = "Players side";
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
			};	
			
		class SideA_Combo: DA_RscCombo
			{
			idc = 20000;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			tooltip = "Select side for players";
			};
			
		class FacA_Frame: DA_RscFrame
			{
			idc = 18000;
			text = "Patrols Faction";
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
			};	
			
		class FacA_Combo: DA_RscCombo
			{
			idc = 21000;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			tooltip = "Select hostile patrols faction";
			};
			
		class FacB_Frame: DA_RscFrame
			{
			idc = 18001;
			text = "Garrison Faction";
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
			};	
			
		class FacB_Combo: DA_RscCombo
			{
			idc = 21001;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			tooltip = "Select hostile garrison faction";
			};
																	
		class RscButton_DA: DA_RscButton
			{
			idc = 126;
			text = "BEGIN";
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {0.9,0.9,1,1};
			sizeEx = 1.5 * GUI_GRID_H;
			action = "[] spawn RYD_DA_TakeValues;";
			};
		};
	};
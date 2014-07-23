class Terminal_Dialog
{
    idd = -1;
    movingenable = true;
    onLoad = "uiNamespace setVariable [""Computer_Terminal_Dialog"", _this select 0];";
    
    class Controls
    {
		
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Shoter, v1.063, #Kadyfi)
		////////////////////////////////////////////////////////

		class hComputer_Terminal_Frame: BOX
		{
			idc = 1800;
			x = 0.20811 * safezoneW + safezoneX;
			y = 0.156405 * safezoneH + safezoneY;
			w = 0.583488 * safezoneW;
			h = 0.700071 * safezoneH;
			
			colorBackground[] = {1,1,1,1};
		};
		

		class hComputer_Terminal_OutputBackground: Box
		{
			idc = 1802;
			x = 0.222843 * safezoneW + safezoneX;
			y = 0.177967 * safezoneH + safezoneY;
			w = 0.583488 * safezoneW - 0.029466 * safezoneW;
			h = 0.560057 * safezoneH;
			
			colorBackground[] = {0,0,0,1};
		};
		
		class hComputer_Terminal_Output: RscMultiText
		{
			idc = 1801;
			x = 0.222843 * safezoneW + safezoneX;
			y = 0.177967 * safezoneH + safezoneY;
			w = 0.583488 * safezoneW - 0.029466 * safezoneW;
			h = 0.560057 * safezoneH;
			
			colorText[] = {1,1,1,1};
		};
		
		
		class hComputer_Terminal_Input: RscEdit
		{
			idc = 700;
			x = 0.222843 * safezoneW + safezoneX;
			y = 0.766027 * safezoneH + safezoneY;
			w = 0.495964 * safezoneW;
			h = 0.0700071 * safezoneH;
		};
		class hComputer_Terminal_SendButton: RscButton
		{
			idc = 800;
			text = "Send"; //--- ToDo: Localize;
			x = 0.726101 * safezoneW + safezoneX;
			y = 0.766027 * safezoneH + safezoneY;
			w = 0.0583488 * safezoneW;
			h = 0.0700071 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////



    };



};

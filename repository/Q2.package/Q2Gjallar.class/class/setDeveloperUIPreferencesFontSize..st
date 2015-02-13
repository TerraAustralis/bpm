utilities
setDeveloperUIPreferencesFontSize: fontSize
	"Set user interface preferences that are suitable for a Gjallar developer. 
      Tweek these settings to suit your own preference."
	"Q2Gjallar setDeveloperUIPreferencesFontSize: 12"

	Preferences disable: #easySelection.
	Preferences disable: #scrollBarsNarrow.
	Preferences disable: #showScrollBarsWithoutMenuButton.
	Preferences disable: #scrollBarsWithoutMenuButton.

	Preferences  setDefaultFonts: {
		{#setSystemFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setListFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setFlapsFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setEToysFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setPaintBoxButtonFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setMenuFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setWindowTitleFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setCodeFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setButtonFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setHaloLabelFontTo:.			#BitstreamVeraSans.		fontSize}.
		{#setBalloonHelpFontTo:.			#BitstreamVeraSans.		fontSize}

	}.
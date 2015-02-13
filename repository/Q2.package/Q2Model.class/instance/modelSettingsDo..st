settings
modelSettingsDo: aBlock
	"assuming all values in dict are instances of Q2ModelSetting"
	modelSettings do: [ :setting | aBlock value: setting ]
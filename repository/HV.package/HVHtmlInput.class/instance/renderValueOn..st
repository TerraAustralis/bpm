rendering
renderValueOn: stream
	"We need to escape double quotes in the value,
	other markup should be fine (?)."

	stream nextPutAll: ' value="', (value asString copyReplaceAll: '"' with: '&quot;'), '"'.
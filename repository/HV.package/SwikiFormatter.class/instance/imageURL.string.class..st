private
imageURL: url string: string class: class
	"Make a non-local image link."

	string ifNil: [^self img: url class: class]
		ifNotNil: [^self url: string string: (self img: url class: class)]
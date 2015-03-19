css
w3cButtons: aStream
	"Append some CSS for slick W3C validation buttons."

	aStream nextPutAll:
'div.w3cbutton1 {
  position: relative;
  margin: 1em 0;
  font-family: helvetica,arial,sans-serif;
  font-size: 0.9em;
  font-weight: bold;
}
div.w3cbutton1 a {
  display: block;
  border-top: 1px solid #cecece;
  border-bottom: 2px solid #4a4a4a;
}
div.w3cbutton1 a.w3c1 {
  width: 3em;
  border-left: 1px solid #cecece;
  text-align: center;
}
div.w3cbutton1 a.spec1 {
  position: absolute;
  left: 3em;
  top: 0;
  width: 6em;
  border-right: 2px solid #4a4a4a;
  padding-left: 0.5em;
}
div.w3cbutton1 a.w3c1:link,
div.w3cbutton1 a.w3c1:visited,
div.w3cbutton1 a.w3c1:hover {
  background-color: #fff;
  color: #0c479d;
  text-decoration: none;
}
div.w3cbutton1 a.spec1:link,
div.w3cbutton1 a.spec1:visited,
div.w3cbutton1 a.spec1:hover {
  background-color: #fc6;
  color: #000;
  text-decoration: none;
}'
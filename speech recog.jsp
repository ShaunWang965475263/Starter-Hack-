var grammar = '#JSGF V1.0; grammar colors; public <color> = aqua | azure | beige | bisque | black | blue | brown | chocolate | coral | crimson | cyan | fuchsia | ghostwhite | gold | goldenrod | gray | green | indigo | ivory | khaki | lavender | lime | linen | magenta | maroon | moccasin | navy | olive | orange | orchid | peru | pink | plum | purple | red | salmon | sienna | silver | snow | tan | teal | thistle | tomato | turquoise | violet | white | yellow ;'


var recognition = new webkitSpeechRecognition();
var speechRecognitionList = new webkitSpeechGrammarList();
speechRecognitionList.addFromString(grammar, 1);
recognition.grammars = speechRecognitionList;
//recognition.continuous = false;
recognition.lang = 'en-US';
recognition.interimResults = false;
recognition.maxAlternatives = 1;

var diagnostic = document.querySelector('.output');
var bg = document.querySelector('html');

function a() {
  recognition.start();
  console.log('Ready to receive a voice command.');
}

recognition.onerror = function(e) {
  console.log("error:" + e.error);
}
recognition.onsoundstart = function() {
  console.log("error");
}

recognition.onresult = function(event) {
  console.log("Done");
  var color = event.results[0][0].transcript;
  diagnostic.textContent = 'Result received: ' + color;
  bg.style.backgroundColor = color;
  document.getElementById('txtName').value = color;
}


function test() {
	var vid = document.getElementById("aaa");
	var x = Math.floor(Math.random() * 10)
	if(x == 0) {
		vid.href="https://youtu.be/A3CbnYyEM78?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else if(x == 1) {
		vid.href="https://youtu.be/-2wObTCymkA?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else if(x == 2) {
		vid.href="https://youtu.be/bW7CyOMewzI?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else if(x == 3) {
		vid.href="https://youtu.be/IWimMaFs-Kg?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else if(x == 4) {
		vid.href="https://youtu.be/4C__EkrBhH8?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else if(x == 5) {
		vid.href="https://youtu.be/dz4z8LKziBI?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else if(x == 6) {
		vid.href="https://youtu.be/gIPAd5Uqlo4?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else if(x == 7) {
		vid.href="https://youtu.be/lKlj6yYYT60?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else if(x == 8) {
		vid.href="https://youtu.be/kbaLkDrGkng?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} else {
		vid.href="https://youtu.be/wIuYGROc5zM?list=PL4vNWVNEpSi6_ABCzi2aakhr5hSKpgP_y";
	} 
}


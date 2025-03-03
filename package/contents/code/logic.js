var states = [
    { text: "Mode 1", command: "notify-send 'Mode 1 activated'" },
    { text: "Mode 2", command: "notify-send 'Mode 2 activated'" },
    { text: "Mode 3", command: "notify-send 'Mode 3 activated'" }
];

var currentIndex = 0;

function cycleForward() {
    currentIndex = (currentIndex + 1) % states.length;
    updateButton();
}

function cycleBackward() {
    currentIndex = (currentIndex - 1 + states.length) % states.length;
    updateButton();
}

function updateButton() {
    plasmoid.text = states[currentIndex].text;
    executeCommand();
}

function executeCommand() {
    var proc = new KProcessRunner();
    proc.exec(states[currentIndex].command);
}


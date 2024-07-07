//script.js
document.addEventListener('DOMContentLoaded', (event) => {
    const playButton = document.getElementById('openModal'); 
    const nameModal = document.getElementById('playModal'); 
    const startGameButton = document.getElementById('start-game'); 
    const playerNameInput = document.getElementById('name');
    const closeModal = document.getElementsByClassName('close')[0]; 

    if (playButton) {
        playButton.onclick = () => {
            nameModal.style.display = 'block';
        };
    }

    if (closeModal) {
        closeModal.onclick = () => {
            nameModal.style.display = 'none';
        };
    }

    window.onclick = (event) => {
        if (event.target === nameModal) {
            nameModal.style.display = 'none';
        }
    };

    if (startGameButton) {
        startGameButton.onclick = () => {
            const playerName = playerNameInput.value.trim();
            if (playerName) {
                nameModal.style.display = 'none';
                startGame(playerName);  
            } else {
                alert('Please enter your name');
            }
        };
    }

    function startGame(playerName) {
        window.location.href = `game.html?name=${playerName}`;
    }

    if (window.location.pathname.includes('game.html')) {
        const playerName = new URLSearchParams(window.location.search).get('name');
        loadLevelScript('level1.js', playerName);
    }
     //Esta funcion carga el siguiente nivel hay que modificarla para que cargue el siguiente nivel
    function loadLevelScript(levelScript, playerName) {
        const script = document.createElement('script');
        script.src = `assets/js/${levelScript}`;
        script.onload = () => {
            if (typeof startLevel === 'function') {
                startLevel(playerName);
            }
        };
        document.head.appendChild(script);
    }
});

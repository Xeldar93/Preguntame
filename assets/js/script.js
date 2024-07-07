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

    let questionIndex = 0;
    let score = 0;
    let timer;
    let questions = [];
    let correctAnswer = '';

    if (window.location.pathname.includes('game.html')) {
        const playerName = new URLSearchParams(window.location.search).get('name');
        const questionContainer = document.getElementById('question-container');
        const questionElement = document.getElementById('question');
        const answersElement = document.getElementById('answers');
        const scoreElement = document.getElementById('score');
        const timerElement = document.getElementById('timer');
        const resultModal = document.getElementById('result-modal');
        const resultMessage = document.getElementById('result-message');
        const shareButton = document.getElementById('share-button');
        const restartButton = document.getElementById('restart-button');

        startRound(30, 10);

        function startRound(seconds, questionsCount) {
            score = 0;
            questionIndex = 0;
            timer = seconds;

            scoreElement.textContent = `Puntuación: ${score}`;
            loadQuestions(questionsCount);

            startTimer();
        }

        function loadQuestions(questionsCount) {
            fetch('http://localhost:8080/Preguntame/api.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
            })
            .then((response) => {
                if (!response.ok) {
                    throw new Error('Error en la respuesta del servidor');
                }
                return response.json();
            })
            .then((data) => {
                if (data.error) {
                    throw new Error(data.error);
                }
                if (data.length > 0) {
                    questions = data;
                    displayQuestion(questions[questionIndex].pregunta, questions[questionIndex].respuestas);
                    correctAnswer = questions[questionIndex].respuesta_correcta;
                } else {
                    throw new Error('No se encontraron preguntas.');
                }
            })
            .catch((error) => {
                console.error('Error al cargar las preguntas:', error);
            });
        }
        
        

        function displayQuestion(question, answers) {
            questionElement.textContent = question;
            answersElement.innerHTML = '';
            answers.forEach((answer) => {
                const button = document.createElement('button');
                button.textContent = answer;
                button.className = 'answer';
                button.onclick = () => checkAnswer(answer);
                answersElement.appendChild(button);
            });
        }

        function checkAnswer(answer) {
            // Realizar la comparación entre la respuesta correcta y la respuesta del usuario
            if (correctAnswer === answer) {
                score++;
                scoreElement.textContent = `Puntuación: ${score}`;
            }
        
            // Avanzar a la siguiente pregunta
            questionIndex++;
            if (questionIndex < questions.length) {
                displayQuestion(questions[questionIndex].pregunta, questions[questionIndex].respuestas);
                correctAnswer = questions[questionIndex].respuesta_correcta;
            } else {
                endRound();
            }
        }
        
        

        function startTimer() {
            const timerInterval = setInterval(() => {
                if (timer > 0) {
                    timer--;
                    timerElement.textContent = `Tiempo: ${timer}`;
                } else {
                    clearInterval(timerInterval);
                    endRound();
                }
            }, 1000);
        }

        function endRound() {
            if (score >= 5) {
                level2(); // Si la puntuación es mayor o igual a 5, pasa al nivel 2
            } else {
                resultMessage.textContent = `Has perdido con ${score} puntos`; // Si no, muestra mensaje de derrota
                resultModal.style.display = 'block';
            }
        }
        

        shareButton.onclick = () => {
            const url = `https://api.whatsapp.com/send?text=Juguemos%20a%20Pregunt@me%20http://localhost:3000/game.php?name=${playerName}`;
            window.open(url, '_blank');
        };

        restartButton.onclick = () => {
            window.location.href = 'index.html';
        };
    }
});

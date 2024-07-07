function startLevel2(playerName) {
    let questionIndex = 0;
    let score = 0;
    let timer = 20; 
    let questions = [];
    let correctAnswer = '';
    let isLastQuestionAnswered = false;

    const questionContainer = document.getElementById('question-container');
    const questionElement = document.getElementById('question');
    const answersElement = document.getElementById('answers');
    const scoreElement = document.getElementById('score');
    const timerElement = document.getElementById('timer');
    const resultModal = document.getElementById('result-modal');
    const resultMessage = document.getElementById('result-message');
    const shareButton = document.getElementById('share-button');
    const restartButton = document.getElementById('restart-button');

    startRound();

    function startRound() {
        scoreElement.textContent = `Puntuación: ${score}`;
        loadQuestions(10); // Numero de preguntas para el segundo nivel
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
        if (isLastQuestionAnswered) return;

        if (questionIndex < questions.length) {
            if (correctAnswer === answer) {
                score++;
                scoreElement.textContent = `Puntuación: ${score}`;
            }

            if (questionIndex < questions.length - 1) {
                questionIndex++;
                displayQuestion(questions[questionIndex].pregunta, questions[questionIndex].respuestas);
                correctAnswer = questions[questionIndex].respuesta_correcta;
            } else {
                isLastQuestionAnswered = true;
                endRound();
            }
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
            resultMessage.textContent = `${playerName} Felicidades, te has exprimido el cerebro con ${score} puntos!`;
            resultModal.style.display = 'block';
        } else {
            resultMessage.textContent = `${playerName} Has perdido con ${score} puntos!`;
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

const express = require('express');
const fs = require('fs');
const app = express();

const FEEDBACK_FILE = 'feedback.txt';

app.use(express.json());

function readFeedbackFromFile() {
    if (fs.existsSync(FEEDBACK_FILE)) {
        const fileContent = fs.readFileSync(FEEDBACK_FILE, 'utf8');
        return JSON.parse(fileContent);
    }
    return [];
}

function writeFeedbackToFile(feedbackData) {
    fs.writeFileSync(FEEDBACK_FILE, JSON.stringify(feedbackData, null, 2), 'utf8');
}

app.post('/feedback', (req, res) => {
    const feedback = req.body;
    const feedbackData = readFeedbackFromFile();
    feedbackData.push(feedback);
    writeFeedbackToFile(feedbackData);
    console.log('Received feedback:', req.body);
    res.status(200).json({ message: 'Feedback received successfully', data: feedback });
});

app.get('/api/feedback', (req, res) => {
    const feedbackData = readFeedbackFromFile();
    res.json(feedbackData);
});

app.use('/public', express.static('public'));

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server running`);
});
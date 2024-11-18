exports.setRoutes = (app) => {
    const EmailController = require('../controllers/emailController');
    const emailController = new EmailController();

    app.post('/api/analyze-email', emailController.analyzeEmail.bind(emailController));
};
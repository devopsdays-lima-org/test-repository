class EmailController {
    constructor(emailService) {
        this.emailService = emailService;
    }

    async analyzeEmail(req, res) {
        const { email } = req.body;

        if (!email) {
            return res.status(400).json({ message: 'Email is required' });
        }

        try {
            const isMalicious = await this.emailService.isMaliciousEmail(email);
            return res.status(200).json({ email, isMalicious });
        } catch (error) {
            return res.status(500).json({ message: 'Error analyzing email', error: error.message });
        }
    }
}

module.exports = EmailController;
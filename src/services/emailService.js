class EmailService {
    isMaliciousEmail(email) {
        // Lógica simple para detectar correos maliciosos
        const maliciousPatterns = [
            /phishing/i,
            /spam/i,
            /malware/i,
            /scam/i
        ];

        return maliciousPatterns.some(pattern => pattern.test(email.subject) || pattern.test(email.body));
    }
}

module.exports = EmailService;
module.exports = {
    validateEmail: function(email) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    },
    
    formatResponse: function(isMalicious, email) {
        return {
            email: email,
            isMalicious: isMalicious,
            message: isMalicious ? 'El correo es malicioso.' : 'El correo es seguro.'
        };
    }
};
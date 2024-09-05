const mongoose = require('mongoose');
const ratingSchema = mongoose.Schema({
    userId: {
        type: String,
        requited: true,
    },
    rating: {
        type: Number,
        required: true,
    }
});

module.exports = ratingSchema;
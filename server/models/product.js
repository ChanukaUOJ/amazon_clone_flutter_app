const mongoose = require('mongoose');
const ratingSchema = require('./rating');

const productSchema = mongoose.Schema({
    name:{
        required: true,
        type: String,
        trim: true,
    },
    description: {
        required: true,
        type: String,
        trim: true,
    },
    price: {
        required: true,
        type: Number,
    },
    quantity: {
        required: true,
        type: Number,
    },
    images: [{
        required: true,
        type: String
    }],
    category: {
        required: true,
        type: String,
        trim: true
    },
    ratings: [ratingSchema],
});

const Product = mongoose.model("Product",productSchema);
module.exports = {Product,productSchema};
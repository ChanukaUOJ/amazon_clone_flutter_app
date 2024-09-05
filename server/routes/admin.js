const express = require('express');
const adminRouter = express.Router();
const admin = require('../middleware/admin');
const {Product} = require('../models/product');

//save a product
adminRouter.post('/admin/add-product',admin, async (req,res)=>{
    try{
        const {name,description,price,quantity,images,category} = req.body;
        let product = new Product({
            name,
            description,
            price,
            quantity,
            images,
            category,
        });
        product = await product.save();
        res.json(product);
    } catch(e){
        res.status(500).json({error: e.message});
    }
});

//retrive all products
adminRouter.get('/admin/get-products', admin, async (req,res)=>{
    try{
        const product = await Product.find({});
        res.json(product);
    } catch(e){
        res.status(500).json({error: e.message});
    }

});

//delete a product
adminRouter.post('/admin/delete-product',admin, async (req,res)=>{
    try{
        const {id} = req.body;
        const product = await Product.findByIdAndDelete(id);
        res.json(product);

    } catch(e){
        res.status(500).json({error: e.message});
    }   

});

module.exports = adminRouter;


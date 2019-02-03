<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\PurchaseOrder;

class PurchaseOrdersController extends Controller
{
    public function store(Request $request)
    {
        //validate the required data
        $this->validate($request, [
            'quantity'=>'integer|required',
            'product_id' => 'integer|required|exists:products,id',
            ]);        
        $user = $request->user(); //getting the user who is buying
        $product = Product::find($request->product_id); //getting the product
        
        if($product->quantity >= $request->quantity)
        {
            $PO = new PurchaseOrder([
                'price'     =>  $product->price,
                'quantity'  =>  $request->quantity
            ]);
        }
        else{
            return response()->json(['message' => 'Sorry, actually have less than this quantity '.$request->quantity],422);    
        }


        if($request->user()->hasAnyRole(['admin','user'])){
            $PO->product()->associate($product);
            $PO->user()->associate($user);
            $PO->save();
        
            //now update quantity on product selected
            $product->quantity = ($product->quantity) - $request->quantity;
            $product->update(); // quantity updated
    
            return response()->json($PO, 201);
        }
        else{
            return response()->json(['message' => 'Unauthorized'], 401);
        }
        
    }

    public function list()
    {
        return PurchaseOrder::All();
    }
}

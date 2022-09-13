<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base href="{{asset('')}}">
    <title>E Shopper</title>
</head>
<body>
    <h1 style="color: red">Order confirmation mail</h1>
    <b>Hey, {{$order->name}}</b><br>
    <span>Your order is successfully received</span>
    <span>We will contact you as soon as possible</span><br>
    <table cellspacing="0" border="1">
        <thead>
            <tr>
                <th colspan="5">
                    <h2 style="color: red">Your Order #{{$order->id}} </h2>
                </th>
            </tr>
        <tr>
            <th class="product-name">Product</th>
            <th class="product-price">Price</th>
            <th class="product-quantity">Quantity</th>
            <th class="product-subtotal">Amount</th>
        </tr>
        </thead>
        <tbody>
            @foreach ($orderDetails as $orderDetail)
            <tr class="cart_item">                        
                <td class="product-name" style="text-align: center">
                    <b>{{$orderDetail->product->title}}</b>
                </td>
            
                <td class="product-price" style="text-align: center">
                    <b>{{number_format($orderDetail->price, 0,'','.').' đ'}}</b>
                </td>
            
                <td class="product-quantity" style="text-align: center">
                    <b class="soluong" style="text-align: center">{{$orderDetail->quantity}}</b>  
                </td>
            
                <td class="product-subtotal">
                    <b class="amount"> {{number_format($orderDetail->amount, 0,'','.').' đ'}}</b>
                </td>    
                {{-- @dd($orderDetail); --}}
            </tr>   
            @endforeach
            <tr>
                <td colspan="2" style="font-size: 18px;text-align: center"><b>Subtotal</b> </td>
                <td class="product-subtotal" colspan="3" style="font-size: 18px;text-align: center">
                    <b class="total" style="color: black" >{{number_format($order->sub_total, 0,'','.').' đ'}}</b>
                </td>    
            </tr>
            @if(!empty($order->discount))
                <tr>
                    <td colspan="2" style="font-size: 18px;text-align: center"><b>Discount</b> </td>
                    <td class="product-subtotal" colspan="3" style="font-size: 18px;text-align: center">
                        <b class="total" style="color: red" >-{{number_format($order->discount, 0,'','.').' đ'}}</b>
                    </td>    
                </tr>
            @endif
            <tr>
                <td colspan="2" style="font-size: 18px;text-align: center"><b>Amount</b> </td>
                <td class="product-subtotal" colspan="3" style="font-size: 18px;text-align: center">
                    <b class="total" style="color: blue" >{{number_format($order->total_amount, 0,'','.').' đ'}}</b>
                </td>    
            </tr>
        </tbody>
      </table>
</body>
</html>
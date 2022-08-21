<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->unsignedBigInteger('shipping_id')->nullable();
            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->text('address1');
            $table->text('address2')->nullable();
            $table->integer('sub_total');
            $table->integer('coupon')->nullable();
            $table->integer('total_amount');
            $table->integer('quantity');
            $table->enum('status',['process','delivered','cancel'])->default('process');
            $table->enum('payment_method',['momo','paypal'])->default('momo');
            $table->enum('payment_status',['paid','unpaid'])->default('unpaid');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('SET NULL');
            $table->foreign('shipping_id')->references('id')->on('shippings')->onDelete('SET NULL');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
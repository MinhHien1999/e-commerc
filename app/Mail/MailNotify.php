<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use App\Models\Order;
use Illuminate\Queue\SerializesModels;

class MailNotify extends Mailable
{
    use Queueable, SerializesModels;

    public $order;
    public $orderDetails = [];
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Order $order, $orderDetails)
    {
        $this->order = $order;
        $this->orderDetails = $orderDetails;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('EShopper')->view('frontend.mail.order');
    }
}
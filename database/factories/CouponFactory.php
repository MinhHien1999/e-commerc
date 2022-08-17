<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;
use Illuminate\Support\Str;
use Faker\Provider\Base;

$factory->define(App\Models\Coupon::class, function (Faker $faker) {
    return [
        //
        'code' => $this->faker->unique()->regexify('[A-Za-z0-9]{' . mt_rand(4, 20) . '}'),
        'type' => $this->faker->randomElement(['fixed', 'percent']),
        'value' => $this->faker->randomFloat(8,1000,99999),
        'status' => $this->faker->randomElement(['active', 'inactive']),
    ];
});
<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $data = array(
            array(
                'name' => 'Admin',
                'email' => 'admin@gmail.com',
                'password' => Hash::make('1111'),
            ),
            array(
                'name' => 'User',
                'email' => 'user@gmail.com',
                'password' => Hash::make('1111'),
            ),
        );
        $role = array(
            array(
                'level' => 0,
                'name' => 'Admin',
                'description' => 'admin'
            ),
        );
        $admin = array(
            array(
                'name' => 'Admin',
                'email' => 'admin@gmail.com',
                'password' => Hash::make('1111'),
                'role_id' => NULL,
            ),
        );
        DB::table('admin_roles')->insert($role);
        DB::table('admins')->insert($admin);
        DB::table('users')->insert($data);
    }
}
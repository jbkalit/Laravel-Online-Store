<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function user() {
        return $this->belongsTo('App\User');
    }

    //protected $table = 'orders';
   	protected $fillable = ['user_id','cart','address','name','payment_id'];


}
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pic extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $fillable = ['client_id', 'name', 'phone_number', 'email', 'position'];

    public function client()
    {
        return $this->belongsTo(Client::class);
    }
    public function bill()
    {
        return $this->hasMany(NotificationBill::class);
    }
}

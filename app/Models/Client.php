<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Client extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $fillable = ['company_name', 'address', 'company_email', 'phone_number'];

    public function project()
    {
        return $this->hasMany(Project::class);
    }
    public function pic()
    {
        return $this->hasMany(Pic::class);
    }
}

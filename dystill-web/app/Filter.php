<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Filter extends Model
{
    protected $primaryKey = "filter_id";
    public $timestamps = false;

    public function actions() {
        return $this->hasMany("App\FilterAction", "filter_id");
    }
}

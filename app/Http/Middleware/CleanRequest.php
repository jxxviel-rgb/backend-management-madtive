<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Foundation\Http\Middleware\TransformsRequest;
use voku\helper\AntiXSS;

class CleanRequest extends TransformsRequest
{
    protected $except = [
        'password',
        'password_confirmation',
    ];

    protected function transform($key, $value)
    {
        if (in_array($key, $this->except, true)) {
            return $value;
        }

        return $this->stripXSS($value);
    }

    private function stripXSS($value)
    {
        return is_string($value) ? strip_tags(antixss()->xss_clean(trim($value))) : $value;
    }
}

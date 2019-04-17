<?php

namespace Ara;

class Request
{
    public function getGet($query)
    {
        if ($query == "sort") {
            return "new";
        }
    }
}

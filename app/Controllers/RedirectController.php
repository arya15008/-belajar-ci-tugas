<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class RedirectController extends BaseController
{
    public function index()
    {
        $session = session();

        if ($session->get('isLoggedIn')) {
            return redirect()->to('/home');
        }

        return redirect()->to('/login');
    }
}

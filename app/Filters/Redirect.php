<?php

namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;

class Redirect implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        // Hanya berlaku kalau method POST dari /login
        if ($request->getMethod() === 'post' && $request->uri->getPath() === 'login') {
            if (session()->get('isLoggedIn')) {
                return redirect()->to('/keranjang');
            }
        }
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Tidak digunakan untuk sekarang
    }
}

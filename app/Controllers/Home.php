<?php

namespace App\Controllers;

use App\Models\ProductModel;
use App\Models\TransactionModel;
use App\Models\TransactionDetailModel;
use App\Models\DiskonModel; // Tambahkan model diskon

class Home extends BaseController
{
    protected $product;
    protected $transaction;
    protected $transaction_detail;

    function __construct()
    {
        helper('form');
        helper('number');
        $this->product = new ProductModel();
        $this->transaction = new TransactionModel();
        $this->transaction_detail = new TransactionDetailModel();
    }

    public function index()
    {
        // Ambil semua produk
        $product = $this->product->findAll();
        $data['product'] = $product;

        // Ambil diskon hari ini
        $diskonModel = new DiskonModel();
        $tanggalHariIni = date('Y-m-d');
        $diskonHariIni = $diskonModel->where('tanggal', $tanggalHariIni)->first();

        if ($diskonHariIni) {
            session()->set('diskon_aktif', $diskonHariIni['nominal']);
        } else {
            session()->remove('diskon_aktif');
        }

        return view('v_home', $data);
    }

    public function profile()
    {
        $username = session()->get('username');
        $data['username'] = $username;

        $buy = $this->transaction->where('username', $username)->findAll();
        $data['buy'] = $buy;

        $product = [];

        if (!empty($buy)) {
            foreach ($buy as $item) {
                $detail = $this->transaction_detail
                    ->select('transaction_detail.*, product.nama, product.harga, product.foto')
                    ->join('product', 'transaction_detail.product_id=product.id')
                    ->where('transaction_id', $item['id'])
                    ->findAll();

                if (!empty($detail)) {
                    $product[$item['id']] = $detail;
                }
            }
        }

        $data['product'] = $product;

        return view('v_profile', $data);
    }

    public function contact()
    {
        return view('v_contact');
    }

    public function faq()
    {
        return view('v_faq');
    }

    public function profil()
    {
        return view('v_profil');
    }
}

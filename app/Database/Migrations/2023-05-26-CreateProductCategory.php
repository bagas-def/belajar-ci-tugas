<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateProductCategory extends Migration
{
    public function up()
    {   
        $this->forge->addField([
            'id'   => ['type' => 'INT', 'constraint' => 11, 'auto_increment' => true],
            'nama' => ['type' => 'VARCHAR', 'constraint' => 255],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('product_category');
    }

    public function down()
    {
        $this->forge->dropTable('product_category');
    }
}

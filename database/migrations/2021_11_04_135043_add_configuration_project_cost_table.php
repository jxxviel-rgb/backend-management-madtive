<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddConfigurationProjectCostTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('project_cost');
        Schema::dropIfExists('project_costs');
        Schema::create('project_cost', function (Blueprint $table) {
            $table->id();
            $table->integer('tax')->nullable(false)->default(0);
            $table->integer('profit_team')->nullable(false)->default(0);
            $table->integer('profit_company')->nullable(false)->default(0);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
    }
}

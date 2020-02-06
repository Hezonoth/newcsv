<?php

require "vendor/autoload.php";
use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule;

$capsule->addConnection([

   "driver" => "mysql",

   "host" =>"127.0.0.1",

   "database" => "laravel",

   "username" => "root",

   "password" => ""

]);

$capsule->setAsGlobal();

$capsule->bootEloquent();

if  (!isset($argv[1])) return print_r("set filename");
if (($f = fopen($argv[1], "r")) !== FALSE)
        {
          $skip = true;
          $keys = array();
		  $row = 0; 
          // Convert each line into the local $data variable
          while (($data = fgetcsv($f, 1000, ",")) !== FALSE)
          { $row++; 
		
            if($skip){
                //Skip first row and save it as keys
                $keys = $data;
                $skip = false;
                continue;
            }

            $insertableData = array();
			
            for($i=0; $i<= count($keys,1) -1; $i++){
                   $insertableData[$keys[$i]] = $data[$i];
				 
            }
			
			echo ' Row: '.$row . PHP_EOL;; 

            $insertableData['Trade_date'] = \DateTime::createFromFormat('m/d/Y', $insertableData['Trade_date']);
            $insertableData['Option_expiration'] = \DateTime::createFromFormat('m/d/Y', $insertableData['Option_expiration']);

            $capsule::table('exchanges_data')->insert($insertableData);
          }
          // Close the file
          unset($insertableData);
          fclose($f);
        }

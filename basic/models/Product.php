<?php

namespace app\models;

class Product extends ActiveRecord implements CartItemInterface
{
	private $price;
	private $name;
	private $id;
	private $type;

	public function getPrice()
	{
		return $this->price;
	}

	public function getLabel()
	{
		return $this->name;
	}

	public function getUniqueId()
	{
		return $this->id;
	}
	
	public function getProductType()
	{
		return $this->type;
	}
}
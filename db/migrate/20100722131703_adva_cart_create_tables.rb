class AdvaCartCreateTables < ActiveRecord::Migration
  def self.up
    create_table :itemizeds do |t|
      t.references :shipping_address
      t.references :billing_address
      t.string :type
      t.string :email
      t.string :payment_method
      t.string :delivery_method
      t.timestamps
    end

    create_table :orders do |t|
      t.string :type
      t.timestamps
    end

    create_table :items do |t|
      t.references :itemized
      t.references :product
      t.integer    :quantity
      t.integer    :price
      t.integer    :vat
      t.timestamps
    end

    create_table :addresses do |t|
      t.references :addressable, :polymorphic => true
      t.string  :name
      t.string  :street
      t.string  :zipcode
      t.string  :city
      t.string  :region
      t.string  :country

      t.string  :pobox
      t.string  :delivery
      t.string  :extended
      t.string  :location
      
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
    drop_table :items
    drop_table :orders
    drop_table :itemizeds
  end
end

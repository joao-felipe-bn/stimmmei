class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :nome
      t.string :senha_criptografada
      t.string :email
      t.boolean :ativo
      t.timestamp :data_ultimo_login

      t.timestamps
    end
  end
end

class RenamePassowrd < ActiveRecord::Migration[7.0]
  def change
    rename_column(:usuarios, :senha_criptografada,:password_digest)
  end
end
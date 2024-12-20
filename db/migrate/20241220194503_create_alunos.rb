class CreateAlunos < ActiveRecord::Migration[7.1]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.integer :idade
      t.string :cpf
      t.string :telefone
      t.string :email
      t.date :data_de_aniversario
      t.text :endereco
      t.text :observacao
      t.boolean :status

      t.timestamps
    end
  end
end

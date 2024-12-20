class AlunosController < ApplicationController
  def index
    @alunos = Aluno.all
  end

  def new
    @aluno = Aluno.new
  end

  def create
    @aluno = Aluno.new(aluno_params)
    if @aluno.save
      redirect_to alunos_path, notice: "Aluno criado com sucesso!"
    else
      render :new
    end
  end

  def show
    @aluno = Aluno.find(params[:id])
  end

  def edit
    @aluno = Aluno.find(params[:id])
  end

  def update
    @aluno = Aluno.find(params[:id])
    if @aluno.update(aluno_params)
      redirect_to aluno_path(@aluno), notice: "Aluno atualizado com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    @aluno = Aluno.find(params[:id])
    @aluno.destroy
    redirect_to alunos_path, notice: "Aluno excluído com sucesso!"
  end

  private

  def aluno_params
    params.require(:aluno).permit(:nome, :idade, :cpf, :telefone, :email, :data_de_aniversario, :endereco, :observacao, :status)
  end
end


require 'rspec'

require_relative '../extensoes/Integer'

describe Integer do
  describe '#fatorar' do
    context 'quando o número é primo' do
      it 'retorna hash somente com esse número' do
        expect(2.fatorar).to eq({
          2 => 1 
        })
      end
    end

    context 'quando o número não é primo' do
      context 'quando o número é < 2' do
        it 'cria uma exception' do
          expect{ 1.fatorar }.to raise_exception('O número precisa ser 2 ou maior que 2')
        end
      end

      context 'quando o número é >= 2' do
        it 'retorna hash dos fatores primos' do
          expect(24.fatorar).to eq({
            2 => 3,
            3 => 1
          })
        end
      end
    end
  end
end

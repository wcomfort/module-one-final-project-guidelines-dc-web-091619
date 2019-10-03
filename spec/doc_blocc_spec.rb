describe 'DocBlocc' do
    let(:doc_blocc) {DocBlocc.new}

        it 'puts the welcome message to the terminal' do 
        expect(doc_blocc.welcome).to eq("Welcome to Doc on Ya Blocc!")
    end
end
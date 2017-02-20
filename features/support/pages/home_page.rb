# Maps the home page
class HomePage

  include PageObject

  text_field :txt_side_1, id: 'com.eliasnogueira.trianguloapp:id/txtLado1'
  text_field :txt_side_2, id: 'com.eliasnogueira.trianguloapp:id/txtLado2'
  text_field :txt_side_3, id: 'com.eliasnogueira.trianguloapp:id/txtLado3'
  button :btnCalculate, id: 'com.eliasnogueira.trianguloapp:id/btnCalcular'
  text_field :msg_type_triangle, id: 'com.eliasnogueira.trianguloapp:id/txtResultado'

  def setTriangleSides(txt_side_1,txt_side_2,txt_side_3)
    self.txt_side_1 = txt_side_1
    self.txt_side_2 = txt_side_2
    self.txt_side_3 = txt_side_3
  end

  def clickCalculate
    btnCalculate
  end


end

#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'
class Parser < Racc::Parser

module_eval(<<'...end parser.y/module_eval...', 'parser.y', 63)

def on_error(id, token, stack)
    raise SyntacticError::new(token)
end
   
def next_token
    token = @lexer.catch_lexeme
    return [false,false] unless token
    return [token.class,token]
end
   
def parse(lexer)
    @yydebug = true
    @lexer = lexer
    @tokens = []
    ast = do_parse
    return ast
end
...end parser.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    13,    21,     3,    22,     8,     9,    24,    25,     4,    26,
    27,    28,     8,     9,     8,     9,     5,     6,     7,    14,
    15,    17,    18,    20,    23,    30,    32,    33,    34,    35,
    36,    37,    38,    39,    40,    41 ]

racc_action_check = [
     7,    17,     0,    17,     7,     7,    20,    20,     1,    20,
    20,    20,    14,    14,    22,    22,     3,     4,     5,    10,
    11,    12,    13,    15,    18,    21,    23,    24,    25,    26,
    27,    28,    30,    31,    39,    40 ]

racc_action_pointer = [
    -2,     8,   nil,    11,    17,     7,   nil,   -12,   nil,   nil,
    10,    15,     9,     9,    -4,    13,   nil,   -12,    10,   nil,
     4,    11,    -2,    18,    19,    20,    21,    22,    23,   nil,
    24,    20,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    20,
    27,   nil ]

racc_action_default = [
   -16,   -20,    -1,   -20,   -20,   -20,    42,   -20,    -8,    -9,
   -10,   -12,   -20,   -20,   -20,   -14,   -15,   -20,   -20,   -11,
    -2,   -20,   -20,   -20,   -20,   -20,   -20,   -20,   -20,   -13,
   -20,   -20,   -18,    -3,    -4,    -5,    -6,    -7,   -17,   -20,
   -20,   -19 ]

racc_goto_table = [
    12,     1,     2,    29,    31,    16,   nil,    19 ]

racc_goto_check = [
     5,     1,     2,     3,     4,     7,   nil,     5 ]

racc_goto_pointer = [
   nil,     1,     2,   -17,   -18,    -7,   nil,    -6 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,    11,   nil,    10,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 19, :_reduce_none,
  0, 21, :_reduce_none,
  2, 21, :_reduce_3,
  2, 21, :_reduce_4,
  2, 21, :_reduce_5,
  2, 21, :_reduce_6,
  2, 21, :_reduce_7,
  1, 22, :_reduce_8,
  1, 22, :_reduce_9,
  1, 23, :_reduce_10,
  3, 23, :_reduce_11,
  0, 25, :_reduce_12,
  3, 25, :_reduce_13,
  2, 24, :_reduce_14,
  2, 24, :_reduce_15,
  0, 20, :_reduce_none,
  8, 20, :_reduce_17,
  7, 20, :_reduce_18,
  10, 20, :_reduce_19 ]

racc_reduce_n = 20

racc_shift_n = 42

racc_token_table = {
  false => 0,
  :error => 1,
  true => 2,
  false => 3,
  func => 4,
  id => 5,
  digito => 6,
  string => 7,
  semicolon => 8,
  coma => 9,
  igual => 10,
  par1 => 11,
  par2 => 12,
  begin => 13,
  end => 14,
  flecha => 15,
  number => 16,
  booleano => 17 }

racc_nt_base = 18

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "TRUE",
  "FALSE",
  "FUNC",
  "ID",
  "DIGITO",
  "STRING",
  "SEMICOLON",
  "COMA",
  "IGUAL",
  "PAR1",
  "PAR2",
  "BEGIN",
  "END",
  "FLECHA",
  "NUMBER",
  "BOOLEANO",
  "$start",
  "RETINA",
  "DECLARACIONFUNCIONES",
  "EXPRESION",
  "TIPODATO",
  "PARAMETROS",
  "DECLARACION",
  "ASIGNACION" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

module_eval(<<'.,.,', 'parser.y', 32)
  def _reduce_3(val, _values, result)
    result = Booleano.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 33)
  def _reduce_4(val, _values, result)
    result = Booleano.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 34)
  def _reduce_5(val, _values, result)
    result = Identificador.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 35)
  def _reduce_6(val, _values, result)
    result = Digito.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 36)
  def _reduce_7(val, _values, result)
    result = String_.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 39)
  def _reduce_8(val, _values, result)
    result = TipoDato.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 40)
  def _reduce_9(val, _values, result)
    result = TipoDato.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 43)
  def _reduce_10(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 44)
  def _reduce_11(val, _values, result)
    result = OperacionBinaria.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 47)
  def _reduce_12(val, _values, result)
    result = "Asignacion vacía"  
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 48)
  def _reduce_13(val, _values, result)
    result = Asignacion.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 51)
  def _reduce_14(val, _values, result)
    result = Declaracion.new(val[0], val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 52)
  def _reduce_15(val, _values, result)
    result = Declaracion.new(val[0], val[1])
    result
  end
.,.,

# reduce 16 omitted

module_eval(<<'.,.,', 'parser.y', 56)
  def _reduce_17(val, _values, result)
    result = Funciones.new(val[1],val[3],val[6])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 57)
  def _reduce_18(val, _values, result)
    result = Funciones.new(val[1],nil,val[6])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 58)
  def _reduce_19(val, _values, result)
    result = FuncionRet.new(val[1],val[3],val[6],val[8])
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
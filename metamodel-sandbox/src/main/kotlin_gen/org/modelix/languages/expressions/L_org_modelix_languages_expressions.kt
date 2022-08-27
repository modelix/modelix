package org.modelix.languages.expressions

import org.modelix.metamodel.GeneratedLanguage

public object L_org_modelix_languages_expressions :
    GeneratedLanguage("org.modelix.languages.expressions") {
  public val Expression: C_Expression = org.modelix.languages.expressions.C_Expression

  public val PlusExpression: C_PlusExpression = org.modelix.languages.expressions.C_PlusExpression

  public val MinusExpression: C_MinusExpression =
      org.modelix.languages.expressions.C_MinusExpression

  public val MulExpression: C_MulExpression = org.modelix.languages.expressions.C_MulExpression

  public val DivExpression: C_DivExpression = org.modelix.languages.expressions.C_DivExpression

  public val BinaryExpression: C_BinaryExpression =
      org.modelix.languages.expressions.C_BinaryExpression

  public val IntegerConstant: C_IntegerConstant =
      org.modelix.languages.expressions.C_IntegerConstant

  public val StringLiteral: C_StringLiteral = org.modelix.languages.expressions.C_StringLiteral

  public val MultipleInheritance: C_MultipleInheritance =
      org.modelix.languages.expressions.C_MultipleInheritance

  public override fun getConcepts() = listOf(Expression, PlusExpression, MinusExpression,
      MulExpression, DivExpression, BinaryExpression, IntegerConstant, StringLiteral,
      MultipleInheritance)
}

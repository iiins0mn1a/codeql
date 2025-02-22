// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.SugarType
import codeql.swift.elements.decl.TypeAliasDecl

module Generated {
  class TypeAliasType extends Synth::TTypeAliasType, SugarType {
    override string getAPrimaryQlClass() { result = "TypeAliasType" }

    /**
     * Gets the declaration of this type alias type.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    TypeAliasDecl getImmediateDecl() {
      result =
        Synth::convertTypeAliasDeclFromRaw(Synth::convertTypeAliasTypeToRaw(this)
              .(Raw::TypeAliasType)
              .getDecl())
    }

    /**
     * Gets the declaration of this type alias type.
     */
    final TypeAliasDecl getDecl() { result = this.getImmediateDecl().resolve() }
  }
}

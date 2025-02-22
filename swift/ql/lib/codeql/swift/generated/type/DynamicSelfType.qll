// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.Type

module Generated {
  class DynamicSelfType extends Synth::TDynamicSelfType, Type {
    override string getAPrimaryQlClass() { result = "DynamicSelfType" }

    /**
     * Gets the static self type of this dynamic self type.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateStaticSelfType() {
      result =
        Synth::convertTypeFromRaw(Synth::convertDynamicSelfTypeToRaw(this)
              .(Raw::DynamicSelfType)
              .getStaticSelfType())
    }

    /**
     * Gets the static self type of this dynamic self type.
     */
    final Type getStaticSelfType() { result = this.getImmediateStaticSelfType().resolve() }
  }
}

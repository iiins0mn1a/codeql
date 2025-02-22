// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.Type

module Generated {
  class LValueType extends Synth::TLValueType, Type {
    override string getAPrimaryQlClass() { result = "LValueType" }

    /**
     * Gets the object type of this l value type.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateObjectType() {
      result =
        Synth::convertTypeFromRaw(Synth::convertLValueTypeToRaw(this)
              .(Raw::LValueType)
              .getObjectType())
    }

    /**
     * Gets the object type of this l value type.
     */
    final Type getObjectType() { result = this.getImmediateObjectType().resolve() }
  }
}

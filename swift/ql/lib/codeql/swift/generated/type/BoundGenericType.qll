// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.NominalOrBoundGenericNominalType
import codeql.swift.elements.type.Type

module Generated {
  class BoundGenericType extends Synth::TBoundGenericType, NominalOrBoundGenericNominalType {
    /**
     * Gets the `index`th argument type of this bound generic type (0-based).
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateArgType(int index) {
      result =
        Synth::convertTypeFromRaw(Synth::convertBoundGenericTypeToRaw(this)
              .(Raw::BoundGenericType)
              .getArgType(index))
    }

    /**
     * Gets the `index`th argument type of this bound generic type (0-based).
     */
    final Type getArgType(int index) { result = this.getImmediateArgType(index).resolve() }

    /**
     * Gets any of the argument types of this bound generic type.
     */
    final Type getAnArgType() { result = this.getArgType(_) }

    /**
     * Gets the number of argument types of this bound generic type.
     */
    final int getNumberOfArgTypes() { result = count(int i | exists(this.getArgType(i))) }
  }
}

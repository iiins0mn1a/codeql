// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.Element
import codeql.swift.elements.File

module Generated {
  class Location extends Synth::TLocation, Element {
    /**
     * Gets the file of this location.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    File getImmediateFile() {
      result =
        Synth::convertFileFromRaw(Synth::convertLocationToRaw(this).(Raw::Location).getFile())
    }

    /**
     * Gets the file of this location.
     */
    final File getFile() { result = this.getImmediateFile().resolve() }

    /**
     * Gets the start line of this location.
     */
    int getStartLine() { result = Synth::convertLocationToRaw(this).(Raw::Location).getStartLine() }

    /**
     * Gets the start column of this location.
     */
    int getStartColumn() {
      result = Synth::convertLocationToRaw(this).(Raw::Location).getStartColumn()
    }

    /**
     * Gets the end line of this location.
     */
    int getEndLine() { result = Synth::convertLocationToRaw(this).(Raw::Location).getEndLine() }

    /**
     * Gets the end column of this location.
     */
    int getEndColumn() { result = Synth::convertLocationToRaw(this).(Raw::Location).getEndColumn() }
  }
}

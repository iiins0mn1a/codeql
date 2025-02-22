// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.stmt.CaseStmt
import codeql.swift.elements.stmt.Stmt

module Generated {
  class FallthroughStmt extends Synth::TFallthroughStmt, Stmt {
    override string getAPrimaryQlClass() { result = "FallthroughStmt" }

    /**
     * Gets the fallthrough source of this fallthrough statement.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    CaseStmt getImmediateFallthroughSource() {
      result =
        Synth::convertCaseStmtFromRaw(Synth::convertFallthroughStmtToRaw(this)
              .(Raw::FallthroughStmt)
              .getFallthroughSource())
    }

    /**
     * Gets the fallthrough source of this fallthrough statement.
     */
    final CaseStmt getFallthroughSource() {
      result = this.getImmediateFallthroughSource().resolve()
    }

    /**
     * Gets the fallthrough dest of this fallthrough statement.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    CaseStmt getImmediateFallthroughDest() {
      result =
        Synth::convertCaseStmtFromRaw(Synth::convertFallthroughStmtToRaw(this)
              .(Raw::FallthroughStmt)
              .getFallthroughDest())
    }

    /**
     * Gets the fallthrough dest of this fallthrough statement.
     */
    final CaseStmt getFallthroughDest() { result = this.getImmediateFallthroughDest().resolve() }
  }
}

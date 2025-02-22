---
category: minorAnalysis
---
* Added the `ArithmeticCommon.qll` library to provide predicates for reasoning about arithmetic operations.
* Added the `ArithmeticTaintedLocalQuery.qll` library to provide the `ArithmeticTaintedLocalOverflowFlow` and `ArithmeticTaintedLocalUnderflowFlow` taint-tracking modules to reason about arithmetic with unvalidated user input.
* Added the `ArithmeticTaintedQuery.qll` library to provide the `RemoteUserInputOverflow` and `RemoteUserInputUnderflow` taint-tracking modules to reason about arithmetic with unvalidated user input.
* Added the `ArithmeticUncontrolledQuery.qll` library to provide the `ArithmeticUncontrolledOverflowFlow`  and `ArithmeticUncontrolledUnderflowFlow` taint-tracking modules to reason about arithmetic with uncontrolled user input.
* Added the `ArithmeticWithExtremeValuesQuery.qll` library to provide the `MaxValueFlow` and `MinValueFlow` dataflow modules to reason about arithmetic with extreme values.
* Added the `BrokenCryptoAlgorithmQuery.qll` library to provide the `InsecureCryptoFlow` taint-tracking module to reason about broken cryptographic algorithm vulnerabilities.
* Added the `ExecTaintedLocalQuery.qll` library to provide the `LocalUserInputToArgumentToExecFlow` taint-tracking module to reason about command injection vulnerabilities caused by local data flow.
* Added the `ExternallyControlledFormatStringLocalQuery.qll` library to provide the `ExternallyControlledFormatStringLocalFlow` taint-tracking module to reason about format string vulnerabilities caused by local data flow.
* Added the `ImproperValidationOfArrayConstructionCodeSpecifiedQuery.qll` library to provide the `BoundedFlowSourceFlow` dataflow module to reason about improper validation of code-specified sizes used for array construction.
* Added the `ImproperValidationOfArrayConstructionLocalQuery.qll` library to provide the `ImproperValidationOfArrayConstructionLocalFlow` taint-tracking module to reason about improper validation of local user-provided sizes used for array construction caused by local data flow.
* Added the `ImproperValidationOfArrayConstructionQuery.qll` library to provide the `ImproperValidationOfArrayConstructionFlow` taint-tracking module to reason about improper validation of user-provided size used for array construction.
* Added the `ImproperValidationOfArrayIndexCodeSpecifiedQuery.qll` library to provide the `BoundedFlowSourceFlow` data flow module to reason about about improper validation of code-specified array index.
* Added the `ImproperValidationOfArrayIndexLocalQuery.qll` library to provide the `ImproperValidationOfArrayIndexLocalFlow` taint-tracking module to reason about improper validation of a local user-provided array index.
* Added the `ImproperValidationOfArrayIndexQuery.qll` library to provide the `ImproperValidationOfArrayIndexFlow` taint-tracking module to reason about improper validation of user-provided array index.
* Added the `InsecureCookieQuery.qll` library to provide the `SecureCookieFlow` taint-tracking module to reason about insecure cookie vulnerabilities.
* Added the `MaybeBrokenCryptoAlgorithmQuery.qll` library to provide the `InsecureCryptoFlow` taint-tracking module to reason about broken cryptographic algorithm vulnerabilities.
* Added the `NumericCastTaintedQuery.qll` library to provide the `NumericCastTaintedFlow` taint-tracking module to reason about numeric cast vulnerabilities.
* Added the `ResponseSplittingLocalQuery.qll` library to provide the `ResponseSplittingLocalFlow` taint-tracking module to reason about response splitting vulnerabilities caused by local data flow.
* Added the `SqlConcatenatedQuery.qll` library to provide the `UncontrolledStringBuilderSourceFlow` taint-tracking module to reason about SQL injection vulnerabilities caused by concatenating untrusted strings.
* Added the `SqlTaintedLocalQuery.qll` library to provide the `LocalUserInputToArgumentToSqlFlow` taint-tracking module to reason about SQL injection vulnerabilities caused by local data flow.
* Added the `StackTraceExposureQuery.qll` library to provide the `printsStackExternally`, `stringifiedStackFlowsExternally`, and `getMessageFlowsExternally` predicates to reason about stack trace exposure vulnerabilities.
* Added the `TaintedPermissionQuery.qll` library to provide the `TaintedPermissionFlow` taint-tracking module to reason about tainted permission vulnerabilities.
* Added the `TempDirLocalInformationDisclosureQuery.qll` library to provide the `TempDirSystemGetPropertyToCreate` taint-tracking module to reason about local information disclosure vulnerabilities caused by local data flow.
* Added the `UnsafeHostnameVerificationQuery.qll` library to provide the `TrustAllHostnameVerifierFlow` taint-tracking module to reason about insecure hostname verification vulnerabilities.
* Added the `UrlRedirectLocalQuery.qll` library to provide the `UrlRedirectLocalFlow` taint-tracking module to reason about URL redirection vulnerabilities caused by local data flow.
* Added the `UrlRedirectQuery.qll` library to provide the `UrlRedirectFlow` taint-tracking module to reason about URL redirection vulnerabilities.
* Added the `XPathInjectionQuery.qll` library to provide the `XPathInjectionFlow` taint-tracking module to reason about XPath injection vulnerabilities.
* Added the `XssLocalQuery.qll` library to provide the `XssLocalFlow` taint-tracking module to reason about XSS vulnerabilities caused by local data flow.
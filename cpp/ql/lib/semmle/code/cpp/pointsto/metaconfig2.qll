import cpp

/**
 * decides whether query has limited range...
 */

predicate isPartialTarget2(Locatable loc) {
    exists(LiteralTargetLocal set | isTargetLocal(loc, set.getTestLocal() ) )
}

/**
 * judge whether `loc` is in the range of `target`
 */
private cached predicate isTargetLocal(Locatable loc, LiteralTargetLocal target) {
    loc.getLocation().getContainer().toString().regexpMatch(target)
    // case: ".*\\/drivers\\/crypto\\/.*"
}

/**
 * class `LiteralTargetLocal` is used as a set, 
 * predicate `get*Local()` is used to get local range
 */
private class LiteralTargetLocal extends string{
    LiteralTargetLocal() {
        this = [
            ".*dma_case.*", // for Demo
            ".*insomnia.*", // for All
            ".*include\\/linux.*", // for API map_single
            ".*\\/drivers\\/crypto\\/.*",  
            ".*\\/drivers\\/usb\\/.*"
        ]
    }

    /**
     * **modify code here to change query range**
     * : is used to limit query range
     */
    LiteralTargetLocal getTestLocal() {
        result = [
            this.getDemoLocal(),
            // this.getIncludeLocal(),
            // this.getShowAllLocal(),
            this.getCryptoLocal(), 
            // this.getUsbLocal()
        ] 
    }

    LiteralTargetLocal getDemoLocal() { result = ".*dma_case.*" }

    LiteralTargetLocal getShowAllLocal() { result = ".*insomnia.*" }

    LiteralTargetLocal getIncludeLocal() { result = ".*include\\/linux.*" }

    LiteralTargetLocal getCryptoLocal() { result = ".*\\/drivers\\/crypto\\/.*" }

    LiteralTargetLocal getUsbLocal() { result = ".*\\/drivers\\/usb\\/.*" }

}

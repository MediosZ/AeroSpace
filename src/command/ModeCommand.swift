struct ModeCommand: Command {
    let idToActivate: String

    func run() async {
        precondition(Thread.current.isMainThread)
        for (modeId, mode) in config.modes {
            if modeId == idToActivate {
                mode.activate()
            } else {
                mode.deactivate()
            }
        }
    }
}

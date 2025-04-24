local core = require("multicursor-nvim.core")
local examples = require("multicursor-nvim.examples")

table.unpack = table.unpack or unpack

local function defaultHl(name, opts)
    opts.default = true
    vim.api.nvim_set_hl(0, name, opts)
end

defaultHl("MultiCursorCursor", { link = "Cursor" })
defaultHl("MultiCursorVisual", { link = "Visual" })
defaultHl("MultiCursorSign", { link = "SignColumn" })
defaultHl("MultiCursorMatchPreview", { link = "Search" })
defaultHl("MultiCursorDisabledCursor", { link = "Visual" })
defaultHl("MultiCursorDisabledVisual", { link = "Visual" })
defaultHl("MultiCursorDisabledSign", { link = "SignColumn" })

return {
    setup = core.setup,
    action = core.action,
    feedkeys = core.feedkeys,
    hasCursors = core.hasCursors,
    onModeChanged = core.onModeChanged,
    onSafeState = core.onSafeState,
    cursorsEnabled = core.cursorsEnabled,
    numCursors = core.numCursors,
    numEnabledCursors = core.numEnabledCursors,
    numDisabledCursors = core.numDisabledCursors,
    addKeymapLayer = core.addKeymapLayer,
    removeKeymapLayer = core.removeKeymapLayer,
    jumpForward = core.jumpForward,
    jumpBackward = core.jumpBackward,
    splitCursors = examples.splitCursors,
    alignCursors = examples.alignCursors,
    matchCursors = examples.matchCursors,
    transposeCursors = examples.transposeCursors,
    swapCursors = examples.swapCursors,
    addCursor = examples.addCursor,
    addCursorOperator = examples.addCursorOperator,
    skipCursor = examples.skipCursor,
    matchAddCursor = examples.matchAddCursor,
    matchSkipCursor = examples.matchSkipCursor,
    matchAllAddCursors = examples.matchAllAddCursors,
    searchAddCursor = examples.searchAddCursor,
    searchSkipCursor = examples.searchSkipCursor,
    searchAllAddCursors = examples.searchAllAddCursors,
    lineAddCursor = examples.lineAddCursor,
    lineSkipCursor = examples.lineSkipCursor,
    handleMouse = examples.handleMouse,
    handleMouseDrag = examples.handleMouseDrag,
    handleMouseRelease = examples.handleMouseRelease,
    clearCursors = core.clearCursors,
    restoreCursors = examples.restoreCursors,
    disableCursors = examples.disableCursors,
    enableCursors = examples.enableCursors,
    toggleCursor = examples.toggleCursor,
    duplicateCursors = examples.duplicateCursors,
    visualToCursors = examples.visualToCursors,
    insertVisual = examples.insertVisual,
    appendVisual = examples.appendVisual,
    firstCursor = examples.firstCursor,
    lastCursor = examples.lastCursor,
    nextCursor = examples.nextCursor,
    prevCursor = examples.prevCursor,
    deleteCursor = examples.deleteCursor,
    operator = examples.operator,
    sequenceIncrement = examples.sequenceIncrement,
    sequenceDecrement = examples.sequenceDecrement,
    diagnosticMatchCursors = examples.diagnosticMatchCursors,
    diagnosticAddCursor = examples.diagnosticAddCursor,
    diagnosticSkipCursor = examples.diagnosticSkipCursor,
}

undo
undoFromCapturedState: st
	freeCells with: st first do: [:deck :morphs | deck removeAllMorphs; addAllMorphs: morphs].
	homeCells with: st second do: [:deck :morphs | deck removeAllMorphs; addAllMorphs: morphs].
	stacks with: st third do: [:deck :morphs | deck removeAllMorphs; addAllMorphs: morphs]
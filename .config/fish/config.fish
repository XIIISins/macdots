function rectangle_gap -a ARG_GAP -d "Set top gap for rectangle and restart"
    set --local RECT_GAP 0
    if test -n "$ARG_GAP"
        set RECT_GAP "$ARG_GAP"
        #echo "defaults write com.knollsoft.Rectangle screenEdgeGapTop -int $RECT_GAP"
        echo "Setting gap to $RECT_GAP, restart application manually"
        defaults write com.knollsoft.Rectangle screenEdgeGapTop -int $RECT_GAP
    else
        #echo "GAP=$RECT_GAP"
        echo "Setting gap to $RECT_GAP, restart application manually"
        defaults write com.knollsoft.Rectangle screenEdgeGapTop -int $RECT_GAP

    end
end

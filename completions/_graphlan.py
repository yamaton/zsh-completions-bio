#compdef _graphlan.py graphlan.py

# Auto-generated with h2o


function _graphlan.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        '--format[set the format of the output image (default none meaning that the format is guessed from the output file extension)]' \
        '--warnings[set whether warning messages should be reported or not (default 1)]' \
        '--positions[set whether the absolute position of the points should be reported on the standard output. The two cohordinates are r and theta]' \
        '--dpi[the dpi of the output image for non vectorial formats]' \
        '--size[the size of the output image (in inches, default 7.0)]' \
        '--pad[the distance between the most external graphical element and the border of the image]' \
        '--external_legends[specify whether the two external legends should be put in separate file or keep them along with the image (default behavior)]' \
        '--avoid_reordering[specify whether the tree will be reorder or not (default the tree will be reordered)]' \
        {-v,--version}'[Prints the current GraPhlAn version and exit]' \
        '*: :_files'

    case $state in
    (cmd)
        _commands
        ;;
    (subcmd)
        case $line[1] in
        esac
        ;;
     esac

}


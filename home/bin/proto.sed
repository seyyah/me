#!/bin/sed -nf

/^static/,/^{/{
        /^{/b
        p
}

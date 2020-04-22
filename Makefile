ERR = $(error Use --arg src /your/path to provide a source path)

.PHONY: err
err: ; $(ERR)

# The name of the LF application inside "./src" to build/run/flash etc.
LF_MAIN ?= HelloWorld

# Path of generated lf c-code
LF_SRC_GEN_PATH ?= $(CURDIR)/src-gen/$(LF_MAIN)

# Enable reactor-uc features
# CFLAGS += -DNETWORK_CHANNEL_TCP_POSIX
# CFLAGS += -DNETWORK_CHANNEL_COAP_RIOT

# ---- RIOT specific configuration ----
# This has to be the absolute path to the RIOT base directory:
RIOTBASE ?= $(CURDIR)/RIOT

# If no BOARD is found in the environment, use this default:
BOARD ?= native

# Comment this out to disable code in RIOT that does safety checking
# which is not needed in a production environment but helps in the
# development process:
DEVELHELP ?= 1

# Change this to 0 show compiler invocation lines by default:
QUIET ?= 1

include $(LF_SRC_GEN_PATH)/reactor-uc/make/riot/riot.mk
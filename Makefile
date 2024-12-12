# The name of the LF application inside "./src" to build/run/flash etc.
LF_MAIN ?= HelloWorld

# Enable reactor-uc features
# CFLAGS += -DNETWORK_CHANNEL_TCP_POSIX
# CFLAGS += -DNETWORK_CHANNEL_COAP_RIOT

# ---- RIOT specific configuration ----
# If no BOARD is found in the environment, use this default:
BOARD ?= native

# Comment this out to disable code in RIOT that does safety checking
# which is not needed in a production environment but helps in the
# development process:
DEVELHELP ?= 1

# Change this to 0 show compiler invocation lines by default:
QUIET ?= 1

include $(REACTOR_UC_PATH)/make/riot/riot.mk

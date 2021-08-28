.class public final Lcom/sec/internal/constants/ims/entitilement/NSDSNamespaces$NSDSEvents;
.super Ljava/lang/Object;
.source "NSDSNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NSDSEvents"
.end annotation


# static fields
.field public static final EVT_ACTIVATE_SIM_DEVICE:I = 0x3

.field public static final EVT_AUTHORIZE_MSISDN:I = 0xd1

.field public static final EVT_BIND_SERVICE:I = 0x5

.field public static final EVT_BOOT_UP_INIT:I = 0x14

.field public static final EVT_CANCEL_MSISDN_AUTH:I = 0xb

.field public static final EVT_CANCEL_MSISDN_AUTHORIZATION:I = 0xd3

.field public static final EVT_DEACTIVATE_SIM_DEVICE:I = 0x4

.field public static final EVT_ENABLE_OR_DISABLE_SERVICE:I = 0x2a

.field public static final EVT_ENTITLMENT_CHECK:I = 0xf

.field public static final EVT_FLIGHT_MODE_CHANGED:I = 0x12

.field public static final EVT_IMS_DEREG:I = 0x1

.field public static final EVT_IMS_REG:I = 0x0

.field public static final EVT_PARSE_CONFIG:I = 0x2

.field public static final EVT_PDN_CONNECTED:I = 0x16

.field public static final EVT_PDN_CONNECTION_FAIL:I = 0x18

.field public static final EVT_PERFORM_BOOTUP_PRCEDURES:I = 0x2d

.field public static final EVT_PERFORM_PROC_ON_CONFIG_REFRESH_COMPLETE:I = 0x29

.field public static final EVT_REFRESH_DEVICE_CONFIG:I = 0xe

.field public static final EVT_REFRESH_DEVICE_INFO:I = 0xd

.field public static final EVT_REFRESH_ENTITLEMENT_AND_911_AID:I = 0x2c

.field public static final EVT_REFRESH_ENTITLEMENT_AND_911_AID_AUTO_ON:I = 0x33

.field public static final EVT_REGISTER_EVENT_MESSENGER:I = 0xdf

.field public static final EVT_REMOVE_PUSH_TOKEN:I = 0x11

.field public static final EVT_RETRIEVE_AKA_TOKEN:I = 0x31

.field public static final EVT_SCHEDULE_GCM_REG_TOKEN:I = 0x2b

.field public static final EVT_SIM_SWAP:I = 0x28

.field public static final EVT_START_PDN_CONNECTIVITY:I = 0x2e

.field public static final EVT_STOP_PDN_CONNECTIVITY:I = 0x32

.field public static final EVT_UNREGISTER_EVENT_MESSENGER:I = 0xe0

.field public static final EVT_UPDATE_DEVICE_NAME:I = 0x6

.field public static final EVT_UPDATE_E911_ADDRESS:I = 0x13

.field public static final EVT_UPDATE_ENTITLEMENT_URL:I = 0xd4

.field public static final EVT_UPDATE_PUSH_TOKEN_IN_SES:I = 0x15

.field public static final EVT_VOWIFI_TOGGLE_OFF:I = 0xdd

.field public static final EVT_VOWIFI_TOGGLE_ON:I = 0xdc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

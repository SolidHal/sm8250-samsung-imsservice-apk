.class public Lcom/sec/internal/constants/ims/ImsConstants$SystemProperties;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemProperties"
.end annotation


# static fields
.field public static final CARRIERFEATURE_FORCE_USE:Ljava/lang/String; = "persist.ims.carrierfeature_force_use"

.field public static final CURRENT_PLMN:Ljava/lang/String; = "ril.currentplmn"

.field public static final FIRST_API_VERSION:Ljava/lang/String; = "ro.product.first_api_level"

.field public static final GCF_MODE_PROPERTY:Ljava/lang/String; = "persist.ims.gcfmode"

.field public static final GCF_MODE_PROPERTY_P_OS:Ljava/lang/String; = "persist.radio.gcfmode"

.field public static final IMSSWITCH_POLICY:Ljava/lang/String; = "persist.ims.imsswitch"

.field public static final IMS_TEST_MODE_PROP:Ljava/lang/String; = "persist.sys.ims_test_mode"

.field public static final LTE_VOICE_STATUS:Ljava/lang/String; = "ril.lte.voice.status"

.field public static final PS_INDICATOR:Ljava/lang/String; = "ril.ims.ltevoicesupport"

.field public static final SIMMOBILITY_ENABLE:Ljava/lang/String; = "persist.ims.simmobility"

.field public static final SIM_STATE:Ljava/lang/String; = "gsm.sim.state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

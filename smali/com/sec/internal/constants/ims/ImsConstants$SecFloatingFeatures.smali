.class public Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecFloatingFeatures"
.end annotation


# static fields
.field public static CDMALESS:Ljava/lang/String;

.field public static CONFIG_BRAND_NAME:Ljava/lang/String;

.field public static CONFIG_DUAL_IMS:Ljava/lang/String;

.field public static CONFIG_OMC_VERSION:Ljava/lang/String;

.field public static CONFIG_PACKAGE_NAME:Ljava/lang/String;

.field public static SIM_MOBILITY_ENABLED:Ljava/lang/String;

.field public static SUPPORT_PTT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 509
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CDMALESS"

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CDMALESS:Ljava/lang/String;

    .line 510
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CONFIG_OMC_VERSION:Ljava/lang/String;

    .line 511
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DUAL_IMS"

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CONFIG_DUAL_IMS:Ljava/lang/String;

    .line 512
    const-string v0, "SEC_FLOATING_FEATURE_IMS_SUPPORT_SIM_MOBILITY"

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->SIM_MOBILITY_ENABLED:Ljava/lang/String;

    .line 513
    const-string v0, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CONFIG_PACKAGE_NAME:Ljava/lang/String;

    .line 514
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CONFIG_BRAND_NAME:Ljava/lang/String;

    .line 515
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_PTT"

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->SUPPORT_PTT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

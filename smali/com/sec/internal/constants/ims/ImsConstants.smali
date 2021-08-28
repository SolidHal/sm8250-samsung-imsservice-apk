.class public Lcom/sec/internal/constants/ims/ImsConstants;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/ImsConstants$OmaVersion;,
        Lcom/sec/internal/constants/ims/ImsConstants$RCS_AS;,
        Lcom/sec/internal/constants/ims/ImsConstants$VoiceDomainPrefEutran;,
        Lcom/sec/internal/constants/ims/ImsConstants$EmergencyPdnPolicy;,
        Lcom/sec/internal/constants/ims/ImsConstants$FtDlParams;,
        Lcom/sec/internal/constants/ims/ImsConstants$CmcInfo;,
        Lcom/sec/internal/constants/ims/ImsConstants$DeRegistrationCause;,
        Lcom/sec/internal/constants/ims/ImsConstants$Packages;,
        Lcom/sec/internal/constants/ims/ImsConstants$Intents;,
        Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemPath;,
        Lcom/sec/internal/constants/ims/ImsConstants$ServiceType;,
        Lcom/sec/internal/constants/ims/ImsConstants$Phone;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemProperties;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;,
        Lcom/sec/internal/constants/ims/ImsConstants$SimMobilityKitTimer;,
        Lcom/sec/internal/constants/ims/ImsConstants$Uris;
    }
.end annotation


# static fields
.field public static DOWNLOAD_CONFIG:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sec/internal/constants/ims/ImsConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants;->LOG_TAG:Ljava/lang/String;

    .line 26
    const-string v0, "downloadconfig"

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants;->DOWNLOAD_CONFIG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

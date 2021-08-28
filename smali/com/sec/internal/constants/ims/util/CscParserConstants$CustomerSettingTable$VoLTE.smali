.class public Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;
.super Ljava/lang/Object;
.source "CscParserConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoLTE"
.end annotation


# static fields
.field public static final DOMAIN_EMERGENCY_CALL:Ljava/lang/String; = "Emregencycall_Domain"

.field public static final DOMAIN_EMERGENCY_CALL_FIX_TYPO:Ljava/lang/String; = "Emergencycall_Domain"

.field public static final DOMAIN_SS:Ljava/lang/String; = "SS_Domain_Preference"

.field public static final DOMAIN_USSD:Ljava/lang/String; = "USSD_Domain_Preference"

.field public static final DOMAIN_VOICE_EUTRAN:Ljava/lang/String; = "Voice_Domain_Preference_EUTRAN"

.field public static final ENABLE_CDPN:Ljava/lang/String; = "EnableCdpn"

.field public static final ENABLE_SMS_IP:Ljava/lang/String; = "EnableSMSoverIP"

.field public static final ENABLE_SS:Ljava/lang/String; = "EnableSS"

.field public static final ENABLE_VIDEO_CALL:Ljava/lang/String; = "EnableVideocall"

.field public static final ENABLE_VOLTE:Ljava/lang/String; = "EnableVoLTE"

.field public static final EUTRAN_CSVOICEONLY:Ljava/lang/String; = "CSVoiceOnly"

.field public static final EUTRAN_CSVOICEPREFERRED:Ljava/lang/String; = "CSVoicePreferred"

.field public static final EUTRAN_IMSPSVOICEONLY:Ljava/lang/String; = "IMSPSVoiceOnly"

.field public static final EUTRAN_IMSPSVOICEPREFERRED:Ljava/lang/String; = "IMSPSVoicePreferred"

.field public static final MAP_DOMAINS_PSCS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAP_DOMAIN_EMERGENCY_CALL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAP_DOMAIN_VOICE_EUTRAN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOW_VOLTE_ICON_IN_USER:Ljava/lang/String; = "EnableVoLTEindicator"

.field public static final SRVCC_VERSION:Ljava/lang/String; = "SRVCCversion"

.field public static final SS_CSFB_IMS_ERROR:Ljava/lang/String; = "SS_CSFBwithIMSerror"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;->MAP_DOMAIN_VOICE_EUTRAN:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$2;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$2;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;->MAP_DOMAIN_EMERGENCY_CALL:Ljava/util/Map;

    .line 52
    new-instance v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;->MAP_DOMAINS_PSCS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

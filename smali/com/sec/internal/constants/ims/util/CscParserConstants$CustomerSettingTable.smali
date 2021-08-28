.class public Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;
.super Ljava/lang/Object;
.source "CscParserConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/util/CscParserConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomerSettingTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$DeviceManagement;,
        Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$RCS;,
        Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;
    }
.end annotation


# static fields
.field private static final mGlobalSettingsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    .line 107
    const-string v1, "EnableVoLTEindicator"

    const-string/jumbo v2, "show_volte_regi_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "SS_CSFBwithIMSerror"

    const-string/jumbo v2, "ss_csfb_with_imserror"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "Voice_Domain_Preference_EUTRAN"

    const-string/jumbo v2, "voice_domain_pref_eutran"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "Emregencycall_Domain"

    const-string v2, "emergency_domain_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "Emergencycall_Domain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "USSD_Domain_Preference"

    const-string/jumbo v2, "ussd_domain_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "SS_Domain_Preference"

    const-string/jumbo v2, "ss_domain_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "SRVCCversion"

    const-string/jumbo v2, "srvcc_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "EnableIMS"

    const-string v2, "ims_enabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "EnableVoiceoverWIFI"

    const-string/jumbo v2, "support_vowifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlobalSettingsMappingTable()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    return-object v0
.end method

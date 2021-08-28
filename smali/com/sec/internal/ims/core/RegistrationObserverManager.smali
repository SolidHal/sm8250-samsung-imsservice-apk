.class public Lcom/sec/internal/ims/core/RegistrationObserverManager;
.super Ljava/lang/Object;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;,
        Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;,
        Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;,
        Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;
    }
.end annotation


# static fields
.field private static final EVENT_AIRPLANE_MODE:I = 0x3

.field private static final EVENT_CARRIER_FEATURE_UPDATED:I = 0x20

.field private static final EVENT_DATA_ROAMING:I = 0x2

.field private static final EVENT_DOWNLOAD_CONFIG:I = 0x15

.field private static final EVENT_IMS_DM_CONFIG:I = 0x9

.field private static final EVENT_IMS_GLOBAL_SETTING:I = 0x6

.field private static final EVENT_IMS_PROFILE_SETTING:I = 0x7

.field private static final EVENT_LOCATION_MODE:I = 0xe

.field private static final EVENT_LTE_DATA_NETWORK_MODE:I = 0xc

.field private static final EVENT_LTE_ROAMING:I = 0xf

.field private static final EVENT_MNOMAP_UPDATED:I = 0x1d

.field private static final EVENT_MOBILE_DATA:I = 0x4

.field private static final EVENT_MOBILE_DATA_PRESSED:I = 0x5

.field private static final EVENT_RCS_USER_SETTING_SLOT1:I = 0x1e

.field private static final EVENT_RCS_USER_SETTING_SLOT2:I = 0x1f

.field private static final EVENT_RESET_DOWNLOAD_CONFIG:I = 0x16

.field private static final EVENT_SIM_MOBILITY:I = 0x17

.field private static final EVENT_VILTE_SLOT1:I = 0x1

.field private static final EVENT_VILTE_SLOT2:I = 0x12

.field private static final EVENT_VOLTE_ROAMING:I = 0xb

.field private static final EVENT_VOLTE_SLOT1:I = 0x0

.field private static final EVENT_VOLTE_SLOT2:I = 0x11

.field private static final EVENT_VOWIFI_SLOT1:I = 0xa

.field private static final EVENT_VOWIFI_SLOT2:I = 0x13

.field private static final LOG_TAG:Ljava/lang/String; = "RegiObsMgr"

.field private static final SILENT_LOG_CHANGED_ACTION:Ljava/lang/String; = "com.sec.android.app.servicemodeapp.SILENT_LOG_CHANGED"

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

.field private mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private mImsServiceSwitchObserver:Landroid/database/ContentObserver;

.field private mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field protected mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

.field private mSilentLogReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 98
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 101
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 102
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 103
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 104
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 105
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 106
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 107
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 108
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 109
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LOCATION_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 110
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 111
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 112
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 114
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 115
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 116
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 117
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 118
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 120
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 121
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v3, 0x13

    invoke-static {v0, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 123
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 124
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 126
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 127
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 129
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 130
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_RESET_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 131
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 133
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->CARRIER_FEATURE_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 135
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 136
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 137
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .param p4, "regManHandler"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/ims/core/RegistrationManagerHandler;",
            ")V"
        }
    .end annotation

    .line 146
    .local p3, "simManagers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    .line 61
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    .line 89
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSilentLogReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 149
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    .line 150
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    .line 151
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p2, "simManagers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    .line 61
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    .line 89
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSilentLogReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    .line 143
    return-void
.end method

.method static synthetic access$000()Landroid/content/UriMatcher;
    .locals 1

    .line 48
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onVolteSettingChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onVoWiFiSettingsChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onVolteRoamingSettingChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onLteDataNetworkModeSettingChanged(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onLocationModeChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 48
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onLteRoamingSettingChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onRcsUserSettingChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onVilteSettingChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onDataRoamingSettingChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 48
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onAirplaneModeSettingChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onMobileDataSettingChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onMobileDataPressedSettingChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/net/Uri;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onImsSettingsChanged(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/net/Uri;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onMnoMapUpdated(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/net/Uri;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onImsDmConfigChanged(Landroid/net/Uri;I)V

    return-void
.end method

.method private onAirplaneModeSettingChanged()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, "airPlaneModeOn":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirplaneModeSettingChanged: now ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyAirplaneModeChanged(I)V

    .line 259
    return-void
.end method

.method private onDataRoamingSettingChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 246
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING_DISABLED:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 248
    .local v0, "roamingDataOn":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataRoamingSettingChanged: now ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRoamingDataSettigChanged(II)V

    .line 251
    return-void
.end method

.method private onImsDmConfigChanged(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "phoneId"    # I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsDmConfigChanged, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiObsMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyConfigChanged(Landroid/net/Uri;I)V

    .line 290
    return-void
.end method

.method private onImsSettingsChanged(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "phoneId"    # I

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsSettingsChanged, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiObsMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyImsSettingChanged(Landroid/net/Uri;I)V

    .line 280
    return-void
.end method

.method private onLocationModeChanged(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 306
    const-string v0, "RegiObsMgr"

    const-string v1, "onLocationModeChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 308
    .local v1, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 312
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "location_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 315
    .local v3, "locationMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLocationModeChanged: locationMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz v3, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyLocationModeChanged()V

    .line 320
    .end local v3    # "locationMode":I
    :cond_1
    return-void
.end method

.method private onLteDataNetworkModeSettingChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 298
    const-string v0, "RegiObsMgr"

    const-string v1, "onLteDataNetworkModeSettingChaged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 300
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_NETWORK_MODE_ENABLED:I

    .line 299
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 301
    .local v0, "isLteDataNetworkModeOn":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_NETWORK_MODE_ENABLED:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyLteDataNetworkModeSettingChanged(ZI)V

    .line 303
    return-void
.end method

.method private onLteRoamingSettingChanged()V
    .locals 5

    .line 323
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING_DISABLED:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 325
    .local v0, "roamingLteOn":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLteRoamingSettingChanged: now ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RegiObsMgr"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRoamingLteSettigChanged(Z)V

    .line 328
    return-void
.end method

.method private onMnoMapUpdated(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "phoneId"    # I

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMnoMapUpdated, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiObsMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyMnoMapUpdated(Landroid/net/Uri;I)V

    .line 285
    return-void
.end method

.method private onMobileDataPressedSettingChanged(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 271
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 270
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, "mobileDataPressed":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMobileDataPressedSettingChanged: now ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyMobileDataPressedSettingeChanged(II)V

    .line 275
    return-void
.end method

.method private onMobileDataSettingChanged(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, "mobileDataOn":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMobileDataSettingChanged: now ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyMobileDataSettingeChanged(II)V

    .line 267
    return-void
.end method

.method private onRcsUserSettingChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    .line 169
    .local v0, "rcsUserSetting":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRcsUserSettingChanged rcsUserSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRcsUserSettingChanged(II)V

    .line 171
    return-void
.end method

.method private onVilteSettingChanged(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v0

    .line 217
    .local v0, "videoType":I
    const-string v2, "RegiObsMgr"

    if-ne v0, v1, :cond_0

    .line 218
    const-string/jumbo v1, "onVilteSettingChanged : unknown"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    return-void

    .line 222
    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 223
    .local v3, "isVideoCallOn":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVilteSettingChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v2, v3, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVolteSettingChanged(ZZI)V

    .line 226
    return-void
.end method

.method private onVoWiFiSettingsChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 293
    const-string v0, "RegiObsMgr"

    const-string/jumbo v1, "onVoWiFiSettingsChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVowifiSettingChanged(IJ)V

    .line 295
    return-void
.end method

.method private onVolteRoamingSettingChanged(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 230
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 234
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v2

    .line 235
    .local v2, "voiceType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVolteRoamingSettingChanged: now ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    if-ne v2, v4, :cond_1

    const-string v4, "VOLTE"

    goto :goto_0

    :cond_1
    const-string v4, "CS"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    const-string v4, "RegiObsMgr"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_3

    .line 239
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    if-ne v2, v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    invoke-interface {v3, v4, v5, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVolteSettingChanged(ZZI)V

    goto :goto_3

    .line 241
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    if-ne v2, v6, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-interface {v3, v4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVolteRoamingSettingChanged(ZI)V

    .line 243
    :goto_3
    return-void
.end method

.method private onVolteSettingChanged(I)V
    .locals 11
    .param p1, "phoneId"    # I

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 177
    .local v0, "voiceType":I
    const-string v2, "RegiObsMgr"

    if-ne v0, v1, :cond_0

    .line 178
    const-string/jumbo v1, "onVolteSettingChanged : unknown"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 181
    .local v1, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_1

    .line 182
    return-void

    .line 185
    :cond_1
    const/4 v3, 0x0

    if-nez v0, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 186
    .local v4, "isVoLteOn":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onVolteSettingChanged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string v6, "VOLTE"

    goto :goto_1

    :cond_3
    const-string v6, "CS"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v5, v4, v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVolteSettingChanged(ZZI)V

    .line 189
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 190
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_7

    .line 191
    :cond_4
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "imsi":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 193
    return-void

    .line 195
    :cond_5
    const-string/jumbo v7, "user_config"

    .line 196
    .local v7, "prefName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_volte_switch_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "lastVolteSwitch":Ljava/lang/String;
    const-string/jumbo v10, "ro.product.first_api_level"

    invoke-static {v10, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v10, 0x1c

    if-lt v3, v10, :cond_6

    .line 200
    const-string v7, "imsswitch"

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getEntitlementNsds()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 206
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v7, v8, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set lastVoLTESwitch: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    .end local v1    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v4    # "isVoLteOn":Z
    .end local v5    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v6    # "imsi":Ljava/lang/String;
    .end local v7    # "prefName":Ljava/lang/String;
    .end local v8    # "lastVolteSwitch":Ljava/lang/String;
    :cond_7
    :goto_2
    return-void
.end method

.method private registerObservers()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .line 353
    const-string v0, "RegiObsMgr"

    const-string/jumbo v1, "registerObservers:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "mnos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/constants/Mno;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 356
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 360
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 363
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 366
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 369
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 375
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 378
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 381
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 384
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 387
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 390
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_SETTING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 396
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 402
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 405
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 408
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/Mno;

    .line 412
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_1

    goto :goto_2

    .line 416
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    goto :goto_1

    .line 413
    .restart local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_2
    :goto_2
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v5}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 414
    nop

    .line 419
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/Mno;

    .line 420
    .restart local v2    # "mno":Lcom/sec/internal/constants/Mno;
    sget-object v5, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_4

    .line 421
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LOCATION_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 422
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    .line 421
    invoke-direct {p0, v1, v3, v5}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 423
    goto :goto_4

    .line 425
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_4
    goto :goto_3

    .line 428
    :cond_5
    :goto_4
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 431
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 432
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 435
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 436
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 440
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 443
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_VOICE_CALL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 446
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_NETWORK_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/Mno;

    .line 450
    .restart local v2    # "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 451
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    goto :goto_6

    .line 454
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_6
    goto :goto_5

    .line 457
    :cond_7
    :goto_6
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_RESET_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 461
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->CARRIER_FEATURE_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 462
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/Mno;

    .line 466
    .restart local v2    # "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 467
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_KEY_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 468
    goto :goto_8

    .line 470
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_8
    goto :goto_7

    .line 473
    :cond_9
    :goto_8
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SETUP_WIZARD:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    invoke-direct {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 474
    return-void
.end method

.method private registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .line 337
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/\\*$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 338
    .local v0, "validUri":Landroid/net/Uri;
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerObservers: validateUri ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] -> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 p2, 0x1

    .line 344
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerObservers() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 350
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private registerSilentLogIntentReceiver()V
    .locals 3

    .line 477
    const-string v0, "RegiObsMgr"

    const-string/jumbo v1, "registerSilentLogIntentReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 479
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.servicemodeapp.SILENT_LOG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSilentLogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 154
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RegistrationObserverManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 156
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    .line 159
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 160
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    .line 161
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    .line 162
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerSilentLogIntentReceiver()V

    .line 163
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers()V

    .line 164
    return-void
.end method

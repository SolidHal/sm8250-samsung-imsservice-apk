.class public Lcom/sec/internal/constants/ims/ImsConstants$Uris;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uris"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.settings"

.field public static final CONFIG_URI:Ljava/lang/String; = "content://com.sec.ims.settings"

.field public static final FRAGMENT_SIM_SLOT:Ljava/lang/String; = "simslot"

.field public static final LINES_CONTENT_URI:Landroid/net/Uri;

.field public static final MMS_PREFERENCE_PROVIDER_DATASAVER_URI:Landroid/net/Uri;

.field public static final MMS_PREFERENCE_PROVIDER_KEY_URI:Landroid/net/Uri;

.field public static final RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_CARRIER_FEATURE_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_DOWNLOAD_CONFIG_RESET_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_DOWNLOAD_CONFIG_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

.field public static final SMS_DEFAULT_APPLICATION_URI:Landroid/net/Uri;

.field public static final SMS_SETTING:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "content://com.samsung.ims.nsds.provider/lines"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->LINES_CONTENT_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://com.sec.ims.settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.sec.ims.settings/downloadconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DOWNLOAD_CONFIG_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://com.sec.ims.settings/carrier_feature_updated"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_CARRIER_FEATURE_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "content://com.sec.ims.settings/resetconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DOWNLOAD_CONFIG_RESET_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.sec.ims.settings/simmobility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://com.android.mms.csc.PreferenceProvider/key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_KEY_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "content://com.android.mms.csc.PreferenceProvider/data_saver"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_DATASAVER_URI:Landroid/net/Uri;

    .line 42
    const-string/jumbo v0, "sms_default_application"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_DEFAULT_APPLICATION_URI:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.sec.ims.settings/sms_setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    .line 44
    const-string v0, "content://com.sec.ims.android.rcs/support_dual_rcs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

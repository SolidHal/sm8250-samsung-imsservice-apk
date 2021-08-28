.class public Lcom/sec/internal/ims/settings/DeviceConfigManager;
.super Ljava/lang/Object;
.source "DeviceConfigManager.java"


# static fields
.field private static final CONFIG_URI:Ljava/lang/String; = "content://com.samsung.rcs.dmconfigurationprovider/"

.field private static final DATABASE_NAME_PREFIX:Ljava/lang/String; = "OMADM_"

.field public static final DEFAULTMSGAPPINUSE:Ljava/lang/String; = "defaultmsgappinuse"

.field private static final DEFAULT_DATABASE_NAME:Ljava/lang/String; = "DEFAULT"

.field public static final IMS:Ljava/lang/String; = "ims"

.field private static final IMS_TEST_MODE:Ljava/lang/String; = "IMS_TEST_MODE"

.field private static final LOCK:Ljava/lang/Object;

.field public static final LOG_TAG:Ljava/lang/String; = "DeviceConfigManager"

.field public static final NV_INIT_DONE:Ljava/lang/String; = "nv_init_done"

.field public static final NV_VERSION_DEFAULT:Ljava/lang/String; = "1"

.field public static final NV_VERSION_USC_NR_OOB:Ljava/lang/String; = "2"

.field public static final OMADM_PREFIX:Ljava/lang/String; = "omadm/./3GPP_IMS/"

.field private static final OMCNW_CODE_PROPERTY:Ljava/lang/String; = "ro.csc.omcnw_code"

.field private static final OMC_CODE_PROPERTY:Ljava/lang/String; = "ro.csc.sales_code"

.field public static final RCS:Ljava/lang/String; = "rcs"

.field public static final VOLTE:Ljava/lang/String; = "volte"

.field private static mAlarmIntent:Landroid/app/PendingIntent;

.field private static mAlarmManager:Landroid/app/AlarmManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebugConfigStorage:Lcom/sec/internal/ims/settings/DebugConfigStorage;

.field protected mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

.field private mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mMvnoName:Ljava/lang/String;

.field private mNvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

.field private mPhoneId:I

.field private mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

.field private mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

.field private mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 94
    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    .line 99
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 100
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMvnoName:Ljava/lang/String;

    .line 101
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    .line 105
    iput p2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 106
    new-instance v2, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const-string v4, "DeviceConfigManager"

    const/16 v5, 0x1f4

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 108
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 110
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getGlobalSettings()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getPreviousMno()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "prevMnoname":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "omc_code":Ljava/lang/String;
    const-string/jumbo v3, "ro.csc.omcnw_code"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "omcnw_code":Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 115
    .end local v1    # "omc_code":Ljava/lang/String;
    .end local v3    # "omcnw_code":Ljava/lang/String;
    goto :goto_0

    .line 116
    :cond_0
    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 119
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/settings/ImsProfileCache;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, p2}, Lcom/sec/internal/ims/settings/ImsProfileCache;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    .line 120
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v0, v5

    :cond_1
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    .line 122
    new-instance v0, Lcom/sec/internal/ims/settings/SmsSetting;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/settings/SmsSetting;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

    .line 125
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateNvList()V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Lcom/sec/internal/ims/settings/NvStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    iget v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/Mno;->getMatchedNetworkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/settings/NvStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 131
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 132
    new-instance v0, Lcom/sec/internal/ims/settings/UserConfigStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lcom/sec/internal/ims/settings/UserConfigStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;

    .line 133
    new-instance v0, Lcom/sec/internal/ims/settings/DebugConfigStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/settings/DebugConfigStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDebugConfigStorage:Lcom/sec/internal/ims/settings/DebugConfigStorage;

    .line 135
    new-instance v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/settings/SettingsProviderUtility;->getDbCreatState(Landroid/content/Context;)Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATING_FAIL:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    if-ne v0, v1, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    move-result v0

    .line 139
    .local v0, "profileCreated":Z
    if-eqz v0, :cond_3

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/sec/internal/ims/settings/SettingsProviderUtility;->setDbCreated(Landroid/content/Context;Z)V

    .line 143
    .end local v0    # "profileCreated":Z
    :cond_3
    return-void
.end method

.method private static getConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "writtenNvItems"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "carrierNvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 150
    .local v0, "key":I
    const-string v1, "omadm/./3GPP_IMS/nv_init_done"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 154
    .local v1, "initDone":Z
    const-string v2, ""

    move-object v3, v2

    .line 155
    .local v3, "name":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "event":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    .line 156
    const/4 v4, 0x2

    if-ne v5, v4, :cond_1

    const-string v4, "item"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 159
    :cond_1
    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    .line 160
    const-string v4, "configuration"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    goto :goto_1

    .line 163
    :cond_2
    const/4 v4, 0x4

    if-ne v5, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 164
    sget-object v4, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "./3GPP_IMS/"

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "nvName":Ljava/lang/String;
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "omadm/./3GPP_IMS/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    goto :goto_0

    .line 171
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v4    # "nvName":Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "event":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private getDababaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "salesCode"    # Ljava/lang/String;

    .line 660
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    const-string v0, "OMADM_DEFAULT"

    return-object v0

    .line 664
    :cond_0
    move-object v0, p1

    .line 672
    .local v0, "dbName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 673
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getAllSalesCodes()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 676
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultDmConfig(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/util/SparseArray;
    .locals 9
    .param p1, "salesCode"    # Ljava/lang/String;
    .param p2, "writtenNv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1157
    .local p3, "carrierNvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1158
    .local v0, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1159
    const-string v2, "DeviceConfigManager"

    const-string v3, "can not find matched dmConfig.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-object v1

    .line 1163
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "default"

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 1165
    .local v2, "name":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1168
    .local v4, "initValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v5, ""

    .line 1170
    .local v5, "dmConfigName":Ljava/lang/String;
    :try_start_0
    const-string v6, "configurations"

    invoke-static {v0, v6}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1171
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 1172
    .local v6, "event":I
    :goto_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 1173
    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const-string v7, "configuration"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1174
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1175
    invoke-direct {p0, v3, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->matchConfigName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1176
    invoke-static {v0, v4, p2, p3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1177
    :cond_2
    invoke-direct {p0, v2, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->matchConfigName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1178
    invoke-static {v0, v4, p2, p3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 1179
    return-object v4

    .line 1181
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/helper/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1184
    :cond_4
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    goto :goto_1

    .line 1186
    :cond_5
    return-object v4

    .line 1187
    .end local v6    # "event":I
    :catch_0
    move-exception v3

    .line 1188
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1190
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private getParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    .line 1072
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/internal/ims/util/CscParser;->isPilotSetting(I)Z

    move-result v0

    const-string/jumbo v1, "xml"

    const-string v2, "DeviceConfigManager"

    if-eqz v0, :cond_0

    .line 1073
    const-string v0, "[pilot] getResources : dmconfigpilot.xml"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    .line 1075
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1074
    const-string v3, "dmconfigpilot"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "id":I
    goto :goto_0

    .line 1077
    .end local v0    # "id":I
    :cond_0
    const-string v0, "[commercial] getResources : dmconfig.xml"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    .line 1079
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1078
    const-string v3, "dmconfig"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1082
    .restart local v0    # "id":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    return-object v1
.end method

.method private initStorage()Z
    .locals 14

    .line 214
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    .line 216
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDababaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simSlot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] DM CONFIG DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Mno : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 219
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-interface {v3, v4, v1, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 222
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateNvList()V

    .line 223
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v3, "writtenNv":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_4

    .line 227
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    if-nez v4, :cond_0

    .line 228
    new-instance v4, Lcom/sec/internal/ims/settings/NvStorage;

    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/Mno;->getMatchedNetworkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-direct {v4, v7, v8, v9}, Lcom/sec/internal/ims/settings/NvStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 230
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const-string v7, "omadm"

    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 231
    .local v4, "nvItems":Landroid/database/Cursor;
    if-eqz v4, :cond_3

    .line 232
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 234
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :cond_2
    :goto_0
    throw v2

    .line 238
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 243
    .end local v4    # "nvItems":Landroid/database/Cursor;
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v3, v7}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDefaultDmConfig(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/util/SparseArray;

    move-result-object v4

    .line 245
    .local v4, "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 246
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v7}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initDmConfig(Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 247
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "omadm/./3GPP_IMS/nv_init_done"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 248
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const-string v8, "nv_init_done"

    const-string v9, "1"

    invoke-static {v7, v8, v9}, Lcom/sec/ims/settings/NvConfiguration;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_5
    const-string v7, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    const-string v8, "omadm/./3GPP_IMS/EAB_SETTING"

    const-string v9, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, "fields":[Ljava/lang/String;
    const/4 v8, -0x1

    .line 254
    .local v8, "volteEnableVal":I
    const/4 v9, -0x1

    .line 255
    .local v9, "eabEnableVal":I
    const/4 v10, -0x1

    .line 257
    .local v10, "pollist":I
    invoke-direct {p0, v7, v6, v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readMultipleDm([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 258
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_b

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 259
    const/4 v11, 0x0

    .line 260
    .local v11, "key":Ljava/lang/String;
    const/4 v12, 0x0

    .line 262
    .local v12, "value":Ljava/lang/String;
    :cond_6
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 263
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 264
    const-string v13, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 265
    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    move v8, v13

    goto :goto_2

    .line 266
    :cond_7
    const-string v13, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 267
    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    move v9, v13

    goto :goto_2

    .line 268
    :cond_8
    const-string v13, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 269
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v10, v13

    .line 271
    :cond_9
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v13, :cond_6

    goto :goto_4

    .line 257
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v2

    if-eqz v6, :cond_a

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v5

    :try_start_6
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :cond_a
    :goto_3
    throw v2

    .line 273
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_c
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_12

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 277
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_d

    goto :goto_6

    .line 284
    :cond_d
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_e

    goto :goto_5

    .line 293
    :cond_e
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->GENERIC_IR92:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_f

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->GCI:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_f

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ALTICE:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_14

    .line 296
    :cond_f
    if-eq v8, v2, :cond_14

    .line 297
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initVoLTEFeature()V

    goto :goto_7

    .line 285
    :cond_10
    :goto_5
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 286
    const/16 v5, 0x1e

    if-eq v10, v5, :cond_11

    .line 287
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->changePollListSubExp(I)V

    .line 290
    :cond_11
    if-eq v9, v2, :cond_14

    .line 291
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initEabFeature()V

    goto :goto_7

    .line 278
    :cond_12
    :goto_6
    if-eq v8, v2, :cond_13

    .line 279
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initVoLTEFeature()V

    .line 281
    :cond_13
    if-eqz v9, :cond_14

    .line 282
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->disableEabFeature()V

    .line 301
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "writtenNv":Landroid/content/ContentValues;
    .end local v4    # "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v7    # "fields":[Ljava/lang/String;
    .end local v8    # "volteEnableVal":I
    .end local v9    # "eabEnableVal":I
    .end local v10    # "pollist":I
    :cond_14
    :goto_7
    monitor-exit v0

    return v2

    .line 302
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1
.end method

.method private matchConfigName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "configName"    # Ljava/lang/String;

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "configNames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1198
    .local v4, "config":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1199
    const/4 v1, 0x1

    return v1

    .line 1197
    .end local v4    # "config":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1203
    :cond_1
    return v2
.end method

.method private parseNvList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v0, "carrierNvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "event":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 1126
    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    const-string v1, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1131
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "item":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1133
    .local v3, "storageType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1134
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NV"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1136
    const/4 v4, -0x1

    .line 1137
    .local v4, "index":I
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 1138
    sget-object v5, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "./3GPP_IMS/"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    nop

    .end local v4    # "index":I
    goto :goto_0

    .line 1143
    .end local v1    # "item":Ljava/lang/String;
    .end local v3    # "storageType":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 1144
    const-string v1, "configuration"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1151
    .end local v2    # "event":I
    :cond_2
    goto :goto_1

    .line 1149
    :catch_0
    move-exception v1

    .line 1150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private readAllOfDm(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .line 306
    const-string v0, "PATH"

    const-string v1, "VALUE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "columnNames":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 310
    .local v1, "columnValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.samsung.rcs.dmconfigurationprovider/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 313
    .local v2, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 315
    .local v3, "cursor":Landroid/database/MatrixCursor;
    const-string v4, "omadm/./3GPP_IMS/"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 317
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 318
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 319
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v1, v7

    .line 320
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v1, v6

    .line 321
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 323
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 325
    :cond_2
    iget v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v9, "DeviceConfigManager"

    const-string/jumbo v10, "readData is null"

    invoke-static {v9, v8, v10}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    :goto_1
    iget-object v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 330
    iget-object v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const/4 v9, 0x0

    const-string v10, "omadm"

    invoke-virtual {v8, v10, v9}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 333
    .local v8, "nvItems":Landroid/database/Cursor;
    if-eqz v8, :cond_6

    .line 334
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 336
    :cond_3
    iget-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 337
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    .line 338
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v6

    .line 339
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 341
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_3

    goto :goto_3

    .line 330
    :catchall_0
    move-exception v4

    if-eqz v8, :cond_5

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v4

    .line 344
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 346
    .end local v8    # "nvItems":Landroid/database/Cursor;
    :cond_7
    return-object v3
.end method

.method private readMultipleDm([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v0, "dm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v1, "nv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 355
    .local v5, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    :cond_0
    const-string v6, "omadm/./3GPP_IMS/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v5    # "path":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 365
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, "omadm"

    if-lez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 366
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/database/Cursor;

    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-array v7, v3, [Ljava/lang/String;

    .line 367
    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 368
    invoke-virtual {v3, v4, p1}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    invoke-direct {v2, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 366
    return-object v2

    .line 370
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 371
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 372
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 373
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 377
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method private readSingleDm(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DeviceConfigManager"

    if-eqz v1, :cond_0

    .line 386
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string/jumbo v5, "read from NV"

    invoke-static {v4, v1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v3, "omadm"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 392
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "path":Ljava/lang/String;
    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "read from DB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v5, "content://com.samsung.rcs.dmconfigurationprovider/"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "value":Ljava/lang/String;
    new-instance v7, Landroid/database/MatrixCursor;

    const-string v8, "PATH"

    const-string v9, "VALUE"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 401
    .local v7, "cursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    .line 402
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    aput-object v4, v8, v2

    .line 401
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 405
    return-object v7
.end method

.method private sendRawRequest(I)V
    .locals 8
    .param p1, "testMode"    # I

    .line 531
    nop

    .line 532
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 533
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 534
    return-void

    .line 537
    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [B

    .line 538
    .local v2, "cmd":[B
    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 539
    .local v4, "resp":[B
    const/16 v5, 0x9

    const/4 v6, 0x0

    aput-byte v5, v2, v6

    .line 540
    const/16 v5, 0xf

    const/4 v7, 0x1

    aput-byte v5, v2, v7

    .line 541
    const/4 v5, 0x2

    aput-byte v6, v2, v5

    .line 542
    const/4 v5, 0x3

    aput-byte v1, v2, v5

    .line 543
    if-ne p1, v7, :cond_1

    move v6, v7

    :cond_1
    int-to-byte v1, v6

    aput-byte v1, v2, v3

    .line 546
    :try_start_0
    invoke-interface {v0, v2, v4}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    .line 547
    const-string v1, "DeviceConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set testmode as "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_0

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 551
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private updateNvList()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->getMatchedNetworkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    const-string v1, "nv_init_done"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConfigManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNvList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->getMatchedNetworkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : nv list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method


# virtual methods
.method protected changePollListSubExp(I)V
    .locals 9
    .param p1, "expire"    # I

    .line 641
    iget v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 642
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    return-void

    .line 643
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 644
    .local v1, "cscImsSettings":Landroid/content/ContentValues;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 645
    const-string v2, "EnableRCS"

    .line 646
    .local v2, "enableRcs":Ljava/lang/String;
    const-string v3, "EnableRCSchat"

    .line 648
    .local v3, "enableRcsChat":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    .line 649
    .local v5, "isEnableRcs":Z
    invoke-static {v1, v3, v4}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v4

    .line 651
    .local v4, "isEnableRcsChat":Z
    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    .line 652
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 653
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "POLL_LIST_SUB_EXP"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v7, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 657
    .end local v2    # "enableRcs":Ljava/lang/String;
    .end local v3    # "enableRcsChat":Ljava/lang/String;
    .end local v4    # "isEnableRcsChat":Z
    .end local v5    # "isEnableRcs":Z
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method public deleteDm(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 410
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    return v0

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "path":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfigManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "omadm"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/settings/NvStorage;->delete(Ljava/lang/String;)I

    .line 422
    :cond_1
    const-string v4, "^content://com.samsung.rcs.dmconfigurationprovider/[\\.\\w-_/]*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 427
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->delete(Ljava/lang/String;)I

    move-result v2

    .line 428
    .local v2, "count":I
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v5}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 429
    return v2

    .line 423
    .end local v2    # "count":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a correct DmConfigurationProvider Uri"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected disableEabFeature()V
    .locals 3

    .line 635
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "EAB_SETTING"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 638
    return-void
.end method

.method public dump()V
    .locals 2

    .line 1207
    const-string v0, "DeviceConfigManager"

    const-string v1, "Dump of DeviceConfigManager:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1210
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->dump()V

    .line 1211
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/SmsSetting;->dump()V

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    if-eqz v0, :cond_0

    .line 1213
    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/NvStorage;->dump()V

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->dump()V

    .line 1216
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->dump()V

    .line 1217
    return-void
.end method

.method public enableImsSwitch(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    return-void

    .line 912
    :cond_0
    const-string/jumbo v0, "volte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enableVoLte(Z)V

    goto :goto_0

    .line 914
    :cond_1
    const-string/jumbo v0, "rcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enableRcs(Z)V

    goto :goto_0

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enable(Ljava/lang/String;Z)V

    .line 919
    :goto_0
    return-void
.end method

.method getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDebugConfigStorage:Lcom/sec/internal/ims/settings/DebugConfigStorage;

    return-object v0
.end method

.method public getGcfInitRat()Ljava/lang/String;
    .locals 8

    .line 1055
    const-string v0, ""

    .line 1056
    .local v0, "gcfRat":Ljava/lang/String;
    const-string v1, "content://com.sec.ims.settings/gcfinitrat"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1057
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .local v2, "cr":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 1059
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1060
    const-string/jumbo v3, "rat"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_1

    .line 1057
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "gcfRat":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :cond_0
    :goto_0
    throw v3

    .line 1063
    .restart local v0    # "gcfRat":Ljava/lang/String;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1065
    .end local v2    # "cr":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 1063
    :catch_0
    move-exception v2

    .line 1064
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DeviceConfigManager"

    const-string v4, "failed to get getGcfInitialRegistrationRat"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getGlobalSettings()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHasSim()Z
    .locals 3

    monitor-enter p0

    .line 846
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 847
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 849
    :catchall_0
    move-exception v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 845
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMnoName()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 824
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 825
    :try_start_1
    const-string v1, ""

    .line 826
    .local v1, "mnoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v2, v3, :cond_0

    .line 827
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 830
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 831
    .end local v1    # "mnoName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 823
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMvnoName()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 835
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 836
    :try_start_1
    const-string v1, ""

    .line 837
    .local v1, "mvnoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v2, v3, :cond_0

    .line 838
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMvnoName:Ljava/lang/String;

    move-object v1, v2

    .line 841
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 842
    .end local v1    # "mvnoName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 834
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNvList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNvList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "mnoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1087
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1088
    .local v0, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1089
    const-string v2, "DeviceConfigManager"

    const-string v3, "can not find matched dmConfig.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-object v1

    .line 1094
    :cond_0
    const-string v2, ""

    .line 1097
    .local v2, "dmConfigName":Ljava/lang/String;
    :try_start_0
    const-string v3, "configurations"

    invoke-static {v0, v3}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1098
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 1099
    .local v3, "event":I
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 1100
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v4, "configuration"

    .line 1101
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1103
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1104
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->matchConfigName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1105
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->parseNvList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 1107
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1110
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 1112
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1113
    .end local v3    # "event":I
    :catch_0
    move-exception v3

    .line 1114
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1116
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    return-object v0
.end method

.method getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

    return-object v0
.end method

.method getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;

    return-object v0
.end method

.method protected initDmConfig(Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 681
    .local p1, "initValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "nvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 682
    .local v0, "writtenDb":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v2, "omadm/*"

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 684
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 685
    .local v1, "dbType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 687
    .local v2, "nvType":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 689
    sget-object v4, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, "item":Ljava/lang/String;
    const-string v5, "./3GPP_IMS/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 692
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ", "

    const-string v8, "]"

    const-string v9, "DeviceConfigManager["

    if-eqz v6, :cond_0

    .line 693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initDmConfig : put into NV : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 697
    :cond_0
    const-string v6, "omadm/./3GPP_IMS/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 698
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 701
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 702
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initDmConfig : put into DB : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 708
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 709
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 712
    :cond_4
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 713
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const-string v4, "omadm"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/settings/NvStorage;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 715
    :cond_5
    return-void
.end method

.method protected initEabFeature()V
    .locals 9

    .line 616
    iget v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 617
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 619
    .local v1, "cscImsSettings":Landroid/content/ContentValues;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 620
    const-string v2, "EnableRCS"

    .line 621
    .local v2, "enableRcs":Ljava/lang/String;
    const-string v3, "EnableRCSchat"

    .line 623
    .local v3, "enableRcsChat":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    .line 624
    .local v5, "isEnableRcs":Z
    invoke-static {v1, v3, v4}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v4

    .line 626
    .local v4, "isEnableRcsChat":Z
    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    .line 627
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 628
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v7, "EAB_SETTING"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v7, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 632
    .end local v2    # "enableRcs":Ljava/lang/String;
    .end local v3    # "enableRcsChat":Ljava/lang/String;
    .end local v4    # "isEnableRcsChat":Z
    .end local v5    # "isEnableRcs":Z
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method protected initIPsecFeature()V
    .locals 5

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "isIPsecEnabled":Z
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 596
    .local v1, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 600
    :cond_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 601
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 602
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v3, :cond_2

    const-string v4, "mmtel"

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 603
    const-string v4, "mmtel-video"

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 604
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v0

    .line 605
    goto :goto_1

    .line 607
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    goto :goto_0

    .line 609
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] initIPsecFeature: isIPsecEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 610
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 611
    .local v2, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_4

    const-string v3, "1"

    goto :goto_2

    :cond_4
    const-string v3, "0"

    :goto_2
    const-string v4, "IPSEC_ENABLED"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v3, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/IPSEC_ENABLED"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 613
    return-void

    .line 597
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_5
    :goto_3
    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v3, "DeviceConfigManager"

    const-string v4, "initIPsecFeature: profileList null "

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 598
    return-void
.end method

.method protected initSmsOverImsFeature()V
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "sms_over_ip_indication"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 587
    .local v0, "isSmsOverIpNetworkIndication":Z
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] initSmsOverImsFeature: isSmsOverIpNetworkIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v0, v2}, Lcom/sec/ims/settings/NvConfiguration;->setSmsIpNetworkIndi(Landroid/content/Context;ZI)V

    .line 590
    return-void
.end method

.method protected initVoLTEFeature()V
    .locals 9

    .line 554
    sget-object v0, Lcom/sec/internal/constants/Mno;->MOCK_MNO_PROPERTY:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "operator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 556
    .local v1, "isEnableVoLTE":Z
    const/4 v2, 0x0

    .line 558
    .local v2, "isEnableVoWIFI":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    .line 560
    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 561
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 565
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v3}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    .line 566
    .local v3, "cscImsSettings":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 567
    const-string v4, "EnableVoLTE"

    .line 569
    .local v4, "enableVolte":Ljava/lang/String;
    const-string v5, "EnableVoiceoverWIFI"

    .line 572
    .local v5, "enableVowifi":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    .line 573
    invoke-static {v3, v5, v6}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    .line 575
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 576
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 577
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v7, "VOLTE_ENABLED"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v7, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 581
    .end local v4    # "enableVolte":Ljava/lang/String;
    .end local v5    # "enableVowifi":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method public insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 433
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    return-object v0

    .line 437
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v0, "nv":Landroid/content/ContentValues;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 440
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 441
    .local v3, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 445
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 448
    .local v4, "key":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 449
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 452
    :cond_1
    move-object v6, v4

    .line 453
    .local v6, "dmItem":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 454
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 458
    :cond_2
    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dmItem : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DeviceConfigManager"

    invoke-static {v8, v5, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 460
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 461
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 464
    :cond_3
    const-string v5, "omadm/./3GPP_IMS/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 465
    const-string v7, "./3GPP_IMS/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "omadm/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 470
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 473
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "IMS_TEST_MODE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 476
    nop

    .line 477
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 476
    const-string/jumbo v7, "persist.sys.ims_test_mode"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v5, v7, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_7

    .line 479
    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->sendRawRequest(I)V

    .line 484
    .end local v3    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "dmItem":Ljava/lang/String;
    :cond_7
    :goto_2
    goto/16 :goto_0

    .line 486
    :cond_8
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 487
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const-string v3, "omadm"

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/settings/NvStorage;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 490
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 491
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 493
    :cond_a
    return-object p1
.end method

.method public queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "isReadAllOmadm"    # Z

    .line 508
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "NODATA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 510
    .local v0, "cursor":Landroid/database/MatrixCursor;
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 511
    return-object v0

    .line 515
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    :cond_0
    if-eqz p5, :cond_1

    .line 517
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readAllOfDm(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 518
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz p2, :cond_2

    .line 520
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readMultipleDm([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 523
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readSingleDm(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 527
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0
.end method

.method public queryGcfConfig()Landroid/database/Cursor;
    .locals 5

    .line 884
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v0

    .line 885
    .local v0, "isGcfEnabled":Ljava/lang/Boolean;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 886
    .local v1, "c":Landroid/database/MatrixCursor;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GCF_CONFIG_ENABLE"

    aput-object v4, v2, v3

    .line 887
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 886
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 888
    return-object v1
.end method

.method public queryImsSwitch([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "names"    # [Ljava/lang/String;

    .line 951
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 953
    .local v0, "c":Landroid/database/MatrixCursor;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 954
    .local v4, "name":Ljava/lang/String;
    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryImsSwitch: name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DeviceConfigManager"

    invoke-static {v7, v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 956
    const-string/jumbo v5, "volte"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 957
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 958
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isVoLteEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 957
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 960
    :cond_0
    const-string/jumbo v5, "rcs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 961
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 962
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isRcsEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 961
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 964
    :cond_1
    const-string v5, "ims"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 965
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 966
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 965
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 968
    :cond_2
    const-string v5, "defaultmsgappinuse"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 969
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 970
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isDefaultMessageAppInUse()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 969
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 973
    :cond_3
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 974
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 973
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 953
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 978
    :cond_4
    return-object v0
.end method

.method public queryImsUserSetting([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "names"    # [Ljava/lang/String;

    .line 926
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$ImsUserSettingTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 927
    .local v0, "c":Landroid/database/MatrixCursor;
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "simMno":Ljava/lang/String;
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 930
    .local v5, "name":Ljava/lang/String;
    iget v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryImsUserSetting: name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DeviceConfigManager"

    invoke-static {v8, v6, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 932
    sget-object v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 933
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v3

    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 934
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getVoiceCallType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 933
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 936
    :cond_0
    sget-object v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 937
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v3

    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 938
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getVideoCallType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 937
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 940
    :cond_1
    sget-object v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 941
    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v9, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v9, :cond_2

    .line 942
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v3

    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 943
    invoke-virtual {v7}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getRcsUserSetting()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 942
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 929
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 947
    :cond_3
    return-object v0
.end method

.method public resetImsSwitch()V
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->doInit()V

    .line 923
    return-void
.end method

.method public restoreDefaultImsProfile()Z
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->resetToDefault()V

    .line 854
    const/4 v0, 0x1

    return v0
.end method

.method public setImsUserSetting(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 892
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    return-void

    .line 896
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 898
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setVoiceCallType(Ljava/lang/String;I)V

    goto :goto_0

    .line 900
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setVideoCallType(Ljava/lang/String;I)V

    goto :goto_0

    .line 902
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 903
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setRcsUserSetting(I)V

    .line 905
    :cond_3
    :goto_0
    return-void
.end method

.method public updateDm(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 498
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    return v0
.end method

.method public updateDnsBlock(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 872
    if-eqz p1, :cond_2

    .line 873
    const-string v0, "DNS_BLOCK_ENABLE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 875
    .local v0, "isDnsBlockEnabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 876
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "net.tether.always"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 878
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v2, "DeviceConfigManager"

    const-string v3, "DNS_BLOCK_ENABLE is null"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    .end local v0    # "isDnsBlockEnabled":Ljava/lang/Boolean;
    :cond_2
    :goto_1
    return-void
.end method

.method public updateDtLocUserConsent(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1039
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    const/4 v0, -0x1

    .line 1044
    .local v0, "dtLocUserConsent":I
    const-string v1, "dtlocation"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1045
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1047
    :cond_1
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const-string v4, "dtlocuserconsent"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1049
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1050
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1051
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1052
    return-void

    .line 1040
    .end local v0    # "dtLocUserConsent":I
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    return-void
.end method

.method public updateGcfConfig(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 858
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    const-string v0, "GCF_CONFIG_ENABLE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 863
    .local v0, "isGcfEnabled":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 864
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v2, "DeviceConfigManager"

    const-string v3, "GCF_CONFIG_ENABLE is null"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 865
    return-void

    .line 868
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/os/DeviceUtil;->setGcfMode(Ljava/lang/Boolean;)V

    .line 869
    return-void

    .line 859
    .end local v0    # "isGcfEnabled":Ljava/lang/Boolean;
    :cond_2
    :goto_0
    return-void
.end method

.method public updateGcfInitRat(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1022
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1026
    :cond_0
    const-string/jumbo v0, "rat"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "gcfInitRat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1028
    const-string v2, "DeviceConfigManager"

    const-string/jumbo v3, "updateGcfInitRat is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-string v1, ""

    .line 1031
    :cond_1
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const-string v4, "gcf_init_rat"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1033
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1034
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1035
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1036
    return-void

    .line 1023
    .end local v1    # "gcfInitRat":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized updateMno(Landroid/content/ContentValues;)V
    .locals 12
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] updateMno"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 719
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 720
    :try_start_1
    const-string v1, "mnoname"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "newMnoname":Ljava/lang/String;
    const-string v2, "hassim"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 722
    .local v2, "hasSim":Ljava/lang/Boolean;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 723
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v2, v4

    .line 726
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 727
    const-string v4, "mvnoname"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMvnoName:Ljava/lang/String;

    .line 734
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v5, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_1

    .line 735
    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 736
    const-string v3, "DeviceConfigManager"

    iget v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v5, "Skip updating config modules when SIM ejected"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 737
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 740
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    :goto_0
    iput-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 743
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->updateMno(Landroid/content/ContentValues;)Z

    .line 746
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/settings/UserConfigStorage;->reset(Ljava/lang/String;)V

    .line 749
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v4, v5}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getGlobalSettings()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v4

    .line 750
    .local v4, "gs":Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->updateMno(Landroid/content/ContentValues;)Z

    move-result v5

    .line 751
    .local v5, "gsUpdated":Z
    const/high16 v6, 0x10010000

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",UPD MNO:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 752
    const/4 v6, 0x0

    if-eqz v5, :cond_8

    .line 754
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    if-eqz v7, :cond_3

    .line 755
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    goto :goto_1

    .line 758
    :cond_3
    new-instance v7, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v7}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iput-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 761
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    if-eqz v7, :cond_4

    .line 762
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    invoke-virtual {v7}, Lcom/sec/internal/ims/settings/NvStorage;->close()V

    .line 763
    iput-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 767
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initStorage()Z

    .line 770
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v7}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->unregisterObserver()V

    .line 771
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v7, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->updateServiceSwitch(Landroid/content/ContentValues;)V

    .line 773
    const-string v7, "imsSwitchType"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 774
    const-string v7, "hassim"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 775
    invoke-static {v7, v9, v10}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v7

    if-eq v7, v9, :cond_5

    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    const-string v10, "enableServiceVolte"

    .line 776
    invoke-virtual {v7, v10}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsSwitchEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_2

    :cond_5
    move v7, v3

    .line 778
    .local v7, "isNeedToResetVoLTE":Z
    :goto_2
    const-string v10, "hassim"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 779
    invoke-static {v10, v9, v11}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v10

    if-eq v10, v9, :cond_6

    iget-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    const-string v10, "enableServiceVilte"

    .line 780
    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsSwitchEnabled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    move v8, v3

    .line 782
    .local v8, "isNeedToResetViLTE":Z
    :goto_3
    invoke-virtual {v4, v7, v8, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->resetUserSettingAsDefault(ZZZ)V

    .line 785
    .end local v7    # "isNeedToResetVoLTE":Z
    .end local v8    # "isNeedToResetViLTE":Z
    :cond_7
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 786
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initSmsOverImsFeature()V

    .line 787
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initIPsecFeature()V

    .line 791
    :cond_8
    iget v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v7, v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->loadRcsSettings(IZ)Z

    move-result v7

    .line 792
    .local v7, "rcsSettingsUpdated":Z
    if-nez v5, :cond_9

    if-eqz v7, :cond_a

    .line 793
    :cond_9
    iget-object v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simSlot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] updateMno: notifyUpdated: GlobalSettings("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "), RcsPolicy("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 795
    iget-object v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 796
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v9, v10}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 795
    invoke-virtual {v8, v9, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 799
    :cond_a
    iget-object v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

    invoke-virtual {v8, p1, v5}, Lcom/sec/internal/ims/settings/SmsSetting;->updateMno(Landroid/content/ContentValues;Z)Z

    move-result v8

    .line 800
    .local v8, "smsUpdated":Z
    if-eqz v8, :cond_b

    .line 801
    iget-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v10, v11}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 804
    :cond_b
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_c

    .line 805
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGcfInitRat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 807
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceConfigManager["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "init rat : lte,wifi"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 809
    .local v6, "initRat":Landroid/content/ContentValues;
    const-string/jumbo v9, "rat"

    const-string v10, "lte,wifi"

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfInitRat(Landroid/content/ContentValues;)V

    .line 814
    .end local v6    # "initRat":Landroid/content/ContentValues;
    :cond_c
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v6, v9, :cond_d

    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_e

    .line 815
    :cond_d
    const-string/jumbo v6, "persist.sys.ims_test_mode"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 816
    .local v3, "imsTestMode":I
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->sendRawRequest(I)V

    .line 817
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simSlot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] updateMno: send IMS_TESTMODE("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 820
    .end local v1    # "newMnoname":Ljava/lang/String;
    .end local v2    # "hasSim":Ljava/lang/Boolean;
    .end local v3    # "imsTestMode":I
    .end local v4    # "gs":Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
    .end local v5    # "gsUpdated":Z
    .end local v7    # "rcsSettingsUpdated":Z
    .end local v8    # "smsUpdated":Z
    :cond_e
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    .line 820
    :catchall_0
    move-exception v1

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 717
    .end local p1    # "mnoinfo":Landroid/content/ContentValues;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateProvisioningProperty(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 985
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 986
    .local v0, "status":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceConfigManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProvisioningProperty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    if-nez v0, :cond_0

    .line 988
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v2, "DeviceConfigManager"

    const-string/jumbo v3, "status is null."

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 989
    return-void

    .line 991
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 996
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 998
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v3, v2}, Lcom/sec/internal/constants/ims/VowifiConfig;->setEnabled(Landroid/content/Context;II)V

    .line 1000
    :goto_0
    return-void
.end method

.method public updateWificallingProperty(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1007
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1008
    .local v0, "status":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 1009
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v2, "DeviceConfigManager"

    const-string/jumbo v3, "status is null."

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1010
    return-void

    .line 1012
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1013
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1015
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v3, v2}, Lcom/sec/internal/constants/ims/VowifiConfig;->setEnabled(Landroid/content/Context;II)V

    goto :goto_0

    .line 1017
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/constants/ims/VowifiConfig;->setEnabled(Landroid/content/Context;II)V

    .line 1019
    :goto_0
    return-void
.end method

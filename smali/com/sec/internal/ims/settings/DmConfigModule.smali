.class public Lcom/sec/internal/ims/settings/DmConfigModule;
.super Landroid/os/Handler;
.source "DmConfigModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;
    }
.end annotation


# static fields
.field public static final CONFIG_DM_PROVIDER:Ljava/lang/String; = "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

.field public static final DM_PATH:Ljava/lang/String; = "omadm/"

.field private static final EVT_FINISH_DM_CONFIG:I = 0x1

.field private static final EVT_FINISH_OMADM_PROV_UPDATE:I = 0x2

.field private static final INTENT_ACTION_DM_VALUE_UPDATE:Ljava/lang/String; = "com.samsung.ims.action.DM_UPDATE"

.field public static final INTERNAL_KEY_PROCESS_NAME:Ljava/lang/String; = "INTERNAL_KEY_PROCESS_NAME"

.field private static final KOR_DM_PACKAGE_NAME:Ljava/lang/String; = "com.ims.dm"

.field private static final LOG_TAG:Ljava/lang/String; = "DmConfigModule"

.field private static final VZW_OMADM_PENDING_DELAY:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mMnoUpdateObserver:Landroid/database/ContentObserver;

.field private mNvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOmadmProvisioningTransactionId:I

.field protected mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mVzwTestModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mVzwTestModeReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 461
    new-instance v0, Lcom/sec/internal/ims/settings/DmConfigModule$2;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/settings/DmConfigModule$2;-><init>(Lcom/sec/internal/ims/settings/DmConfigModule;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    .line 76
    iput-object p3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 77
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "DmConfigModule"

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/settings/DmConfigModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/settings/DmConfigModule;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 401
    const-string v0, "INTERNAL_KEY_PROCESS_NAME"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 406
    return-void
.end method

.method static synthetic lambda$updateConfigValues$0(Ljava/lang/String;)V
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    .line 264
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-void
.end method

.method private registerVzwTestReceiver()V
    .locals 3

    .line 95
    const-string v0, "DmConfigModule"

    const-string/jumbo v1, "registerVzwTestReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "vzwTestReceiver":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.ims.action.DM_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v1, Lcom/sec/internal/ims/settings/DmConfigModule$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/DmConfigModule$1;-><init>(Lcom/sec/internal/ims/settings/DmConfigModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mVzwTestModeReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmConfigModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 487
    return-void
.end method

.method public finishDmConfig(I)V
    .locals 3
    .param p1, "transactionId"    # I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish getting ims-config by OTA-DM with transactionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmConfigModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/internal/ims/settings/DmConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/DmConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 19
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 136
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v4, v0

    .line 138
    .local v4, "result":Landroid/content/ContentValues;
    const-string v5, "DmConfigModule"

    if-eqz v2, :cond_12

    array-length v0, v2

    if-gtz v0, :cond_0

    goto/16 :goto_a

    .line 142
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {v0, v6}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "caller":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    const-string v7, "omadm/*"

    invoke-static {v0, v7, v3}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v7

    .line 145
    .local v7, "dmDatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 147
    .local v8, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v9, v2

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_11

    aget-object v11, v2, v10

    .line 150
    .local v11, "field":Ljava/lang/String;
    const-string v12, ""

    .line 151
    .local v12, "name":Ljava/lang/String;
    const-string v13, ""

    .line 152
    .local v13, "pathName":Ljava/lang/String;
    const-string v14, ""

    .line 155
    .local v14, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "fieldIndex":I
    if-gez v0, :cond_1

    .line 157
    move/from16 v16, v9

    goto/16 :goto_9

    .line 161
    :cond_1
    const/16 v15, 0x384

    if-lt v0, v15, :cond_2

    .line 162
    const/4 v15, 0x3

    .local v15, "type":I
    goto :goto_1

    .line 164
    .end local v15    # "type":I
    :cond_2
    sget-object v15, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v15}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v15

    .line 165
    .restart local v15    # "type":I
    sget-object v2, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 166
    sget-object v2, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getPathName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v2

    .line 175
    :goto_1
    goto :goto_2

    .line 168
    .end local v0    # "fieldIndex":I
    .end local v15    # "type":I
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get xNode "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, -0x1

    .line 172
    .local v2, "fieldIndex":I
    const/4 v15, 0x0

    .line 173
    .restart local v15    # "type":I
    move-object v12, v11

    .line 174
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v16, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "fieldIndex":I
    .local v17, "fieldIndex":I
    const-string v2, "omadm/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v0, v17

    .line 177
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .end local v17    # "fieldIndex":I
    .local v0, "fieldIndex":I
    :goto_2
    const-string v2, ""

    if-eqz v15, :cond_b

    move/from16 v16, v9

    const/4 v9, 0x1

    if-eq v15, v9, :cond_9

    const/4 v9, 0x3

    if-eq v15, v9, :cond_6

    const/4 v2, 0x4

    if-eq v15, v2, :cond_4

    const/4 v2, 0x5

    if-eq v15, v2, :cond_3

    move/from16 v18, v15

    goto/16 :goto_8

    .line 222
    :cond_3
    iget-object v2, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v12}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 223
    move/from16 v18, v15

    goto/16 :goto_8

    .line 217
    :cond_4
    iget-object v2, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v12, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    const-string v2, "1"

    goto :goto_3

    :cond_5
    const-string v2, "0"

    :goto_3
    move-object v14, v2

    .line 218
    move/from16 v18, v15

    goto/16 :goto_8

    .line 199
    :cond_6
    const-string v9, "74"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v17, v14

    .end local v14    # "value":Ljava/lang/String;
    .local v17, "value":Ljava/lang/String;
    const-string v14, "ap2001"

    if-ne v9, v0, :cond_7

    .line 200
    iget-object v9, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move/from16 v18, v15

    .end local v15    # "type":I
    .local v18, "type":I
    const-string v15, "dm_app_id"

    invoke-interface {v9, v3, v15, v14}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .end local v17    # "value":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_4

    .line 201
    .end local v14    # "value":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v15    # "type":I
    .restart local v17    # "value":Ljava/lang/String;
    :cond_7
    move/from16 v18, v15

    .end local v15    # "type":I
    .restart local v18    # "type":I
    const-string v9, "75"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v0, :cond_8

    .line 202
    iget-object v9, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v15, "dm_user_disp_name"

    invoke-interface {v9, v3, v15, v14}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .end local v17    # "value":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_4

    .line 204
    .end local v14    # "value":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported Segment : Global Type "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    .end local v17    # "value":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_9
    move-object/from16 v17, v14

    move/from16 v18, v15

    .line 209
    .end local v15    # "type":I
    .restart local v18    # "type":I
    :goto_4
    const-string v9, "91"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v0, :cond_10

    .line 210
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v9

    .line 211
    .local v9, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object v14, v2

    .line 212
    .end local v9    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_8

    .line 180
    .end local v18    # "type":I
    .restart local v15    # "type":I
    :cond_b
    move/from16 v16, v9

    move-object/from16 v17, v14

    move/from16 v18, v15

    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "type":I
    .restart local v17    # "value":Ljava/lang/String;
    .restart local v18    # "type":I
    iget-object v9, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 181
    iget-object v9, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v9, v12, v2, v3}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 182
    .end local v17    # "value":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_8

    .line 186
    .end local v14    # "value":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_c
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 187
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 188
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    .end local v17    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    const-string v14, "VOICE_DOMAIN_PREF_EUTRAN"

    invoke-static {v14, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "com.ims.dm"

    invoke-static {v14, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 190
    const-string v2, "-1"

    move-object v14, v2

    goto :goto_7

    .line 195
    .end local v9    # "path":Ljava/lang/String;
    :cond_d
    move-object v14, v2

    goto :goto_7

    .line 194
    .end local v2    # "value":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_e
    goto :goto_6

    .line 186
    :cond_f
    move-object/from16 v14, v17

    .line 195
    .end local v17    # "value":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    :goto_7
    nop

    .line 230
    :cond_10
    :goto_8
    invoke-virtual {v4, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "result ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " [ "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ]"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "fieldIndex":I
    .end local v11    # "field":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "pathName":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    .end local v18    # "type":I
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move/from16 v9, v16

    goto/16 :goto_0

    .line 234
    :cond_11
    return-object v4

    .line 139
    .end local v6    # "caller":Ljava/lang/String;
    .end local v7    # "dmDatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12
    :goto_a
    const-string v0, "Error on fields"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmConfigModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, "configData":Landroid/content/ContentValues;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 457
    const-string/jumbo v2, "unknown event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v4, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getConfigData(II)Landroid/content/ContentValues;

    move-result-object v0

    .line 446
    if-nez v0, :cond_1

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no pending transaction for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 449
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVT_FINISH_OMADM_PROV_UPDATE, completing transaction : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->removeConfigData(II)V

    .line 451
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    .line 453
    sget-object v1, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 455
    goto/16 :goto_2

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    if-nez v2, :cond_3

    .line 416
    goto :goto_2

    .line 419
    :cond_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getConfigData(II)Landroid/content/ContentValues;

    move-result-object v0

    .line 420
    if-nez v0, :cond_4

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no opt transactionId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->removeConfigData(II)V

    .line 424
    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 427
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getConfigData(II)Landroid/content/ContentValues;

    move-result-object v0

    .line 428
    if-nez v0, :cond_5

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no nv transactionId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 431
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->removeConfigData(II)V

    .line 432
    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 436
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->onDmConfigurationComplete()V

    .line 438
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->allTransactionDone()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 439
    const-string v2, "all config transaction done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    .line 459
    :cond_6
    :goto_2
    return-void
.end method

.method public initSequentially()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    const-string v1, "content://com.sec.ims.settings/mno"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 82
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isEngMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DmConfigModule;->registerVzwTestReceiver()V

    .line 88
    :cond_0
    return-void
.end method

.method public setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 0
    .param p1, "regMgr"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 92
    return-void
.end method

.method public startDmConfig()I
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getNewTransactionId()I

    move-result v0

    .line 126
    .local v0, "newId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start getting ims-config by OTA-DM with TransactionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DmConfigModule"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0
.end method

.method public updateConfigValues(Landroid/content/ContentValues;II)Z
    .locals 27
    .param p1, "updateMap"    # Landroid/content/ContentValues;
    .param p2, "transactionId"    # I
    .param p3, "phoneId"    # I

    .line 238
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v5, " "

    const-string v6, "./3GPP_IMS/"

    const-string v7, ""

    iget-object v0, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {v0, v8}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "caller":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateConfigValues: caller ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] updateMap["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "] transactionId ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "DmConfigModule"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 242
    .local v11, "dmDataResult":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 243
    .local v0, "isOmadmProvUpdate":Z
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v12, "updateData":Landroid/content/ContentValues;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v13, "nvData":Landroid/content/ContentValues;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v14, "global":Landroid/content/ContentValues;
    invoke-static {}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INDEX;->values()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15, v4}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v15

    .line 247
    .local v15, "config":Landroid/content/ContentValues;
    move/from16 v16, v0

    .end local v0    # "isOmadmProvUpdate":Z
    .local v16, "isOmadmProvUpdate":Z
    iget-object v0, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    const-string v3, "omadm/*"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v3

    .line 249
    .local v3, "allConfigSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v18, "31"

    const-string v19, "94"

    const-string v20, "93"

    move-object/from16 v21, v8

    .end local v8    # "caller":Ljava/lang/String;
    .local v21, "caller":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 250
    .local v8, "indexOfField":Ljava/lang/String;
    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 251
    .local v22, "currentValue":Ljava/lang/String;
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 255
    .local v2, "updatedValue":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v23, v15

    .end local v15    # "config":Landroid/content/ContentValues;
    .local v23, "config":Landroid/content/ContentValues;
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    .local v0, "fieldInfo":Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    move-object/from16 v25, v3

    move-object/from16 v26, v12

    move-object/from16 v3, v22

    goto :goto_2

    .line 256
    .end local v0    # "fieldInfo":Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v23    # "config":Landroid/content/ContentValues;
    .restart local v15    # "config":Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    move-object/from16 v23, v15

    .line 258
    .end local v15    # "config":Landroid/content/ContentValues;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v23    # "config":Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v22, v15

    check-cast v22, Ljava/lang/String;

    .line 259
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v24, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v0, "update xNode "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 261
    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v3

    move-object/from16 v26, v12

    const/4 v3, 0x0

    const/4 v12, -0x1

    .end local v3    # "allConfigSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "updateData":Landroid/content/ContentValues;
    .local v25, "allConfigSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v26, "updateData":Landroid/content/ContentValues;
    invoke-direct {v0, v12, v3, v15}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    .line 263
    .local v0, "fieldInfo":Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    const-string v3, "LBO_P-CSCF_Address"

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v12, Lcom/sec/internal/ims/settings/-$$Lambda$DmConfigModule$6G_PDl7NrM4OVB9xMsMT9OT4Mxs;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$DmConfigModule$6G_PDl7NrM4OVB9xMsMT9OT4Mxs;

    invoke-virtual {v3, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 265
    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v22

    goto :goto_2

    .line 268
    :cond_0
    const-string v2, ""

    move-object/from16 v3, v22

    goto :goto_2

    .line 263
    :cond_1
    move-object/from16 v3, v22

    .line 273
    .end local v22    # "currentValue":Ljava/lang/String;
    .end local v24    # "e":Ljava/lang/NumberFormatException;
    .local v3, "currentValue":Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_2

    .line 274
    move-object/from16 v2, p1

    move-object/from16 v8, v21

    move-object/from16 v15, v23

    move-object/from16 v3, v25

    move-object/from16 v12, v26

    goto/16 :goto_0

    .line 277
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Idx ["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "], Type ["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "], Val ["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] => ["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v12, "10"

    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 280
    const-string v12, "72"

    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 281
    const-string v12, "116"

    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v22, v5

    goto :goto_4

    .line 282
    :cond_4
    :goto_3
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v5

    const-string v5, "OMADM update : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_4
    invoke-virtual {v0}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v12, 0x3

    if-eq v5, v12, :cond_6

    const/4 v12, 0x4

    if-eq v5, v12, :cond_5

    move-object/from16 v12, v26

    goto :goto_5

    .line 316
    :cond_5
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 317
    .local v5, "enabled":Z
    iget-object v12, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15, v5, v4}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 318
    move-object/from16 v12, v26

    goto :goto_5

    .line 312
    .end local v5    # "enabled":Z
    :cond_6
    invoke-virtual {v0}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object/from16 v12, v26

    goto :goto_5

    .line 293
    :cond_7
    iget-object v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 295
    invoke-virtual {v0}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 298
    .local v5, "keyIndex":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v5, :cond_8

    .line 299
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v5, :cond_8

    .line 300
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v5, :cond_9

    .line 301
    :cond_8
    const/16 v16, 0x1

    .line 303
    .end local v5    # "keyIndex":I
    :cond_9
    move-object/from16 v12, v26

    goto :goto_5

    .line 304
    :cond_a
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 305
    invoke-virtual {v0}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v12, v26

    .end local v26    # "updateData":Landroid/content/ContentValues;
    .restart local v12    # "updateData":Landroid/content/ContentValues;
    invoke-virtual {v12, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 304
    .end local v12    # "updateData":Landroid/content/ContentValues;
    .restart local v26    # "updateData":Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v12, v26

    .line 323
    .end local v0    # "fieldInfo":Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    .end local v2    # "updatedValue":Ljava/lang/String;
    .end local v3    # "currentValue":Ljava/lang/String;
    .end local v8    # "indexOfField":Ljava/lang/String;
    .end local v26    # "updateData":Landroid/content/ContentValues;
    .restart local v12    # "updateData":Landroid/content/ContentValues;
    :goto_5
    move-object/from16 v2, p1

    move-object/from16 v8, v21

    move-object/from16 v5, v22

    move-object/from16 v15, v23

    move-object/from16 v3, v25

    goto/16 :goto_0

    .line 325
    .end local v23    # "config":Landroid/content/ContentValues;
    .end local v25    # "allConfigSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "allConfigSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "config":Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v25, v3

    move-object/from16 v23, v15

    .end local v3    # "allConfigSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "config":Landroid/content/ContentValues;
    .restart local v23    # "config":Landroid/content/ContentValues;
    .restart local v25    # "allConfigSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADM update :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v0

    const-string v2, "INTERNAL_KEY_PROCESS_NAME"

    if-lez v0, :cond_d

    .line 330
    move-object/from16 v3, v21

    .end local v21    # "caller":Ljava/lang/String;
    .local v3, "caller":Ljava/lang/String;
    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 329
    .end local v3    # "caller":Ljava/lang/String;
    .restart local v21    # "caller":Ljava/lang/String;
    :cond_d
    move-object/from16 v3, v21

    .line 333
    .end local v21    # "caller":Ljava/lang/String;
    .restart local v3    # "caller":Ljava/lang/String;
    :goto_6
    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 334
    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_e
    const/4 v0, 0x1

    if-eqz v16, :cond_13

    .line 345
    invoke-virtual {v13}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 346
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_11

    .line 347
    iget-object v7, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v7, v5, v6, v13}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->addConfigData(IILandroid/content/ContentValues;)V

    .line 348
    iget-object v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v7, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v5, v7, v6}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getConfigData(II)Landroid/content/ContentValues;

    move-result-object v13

    .line 349
    if-nez v13, :cond_f

    .line 350
    return v0

    .line 353
    :cond_f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 354
    .local v7, "key":Ljava/lang/String;
    iget-object v8, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OMADM update "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " = ["

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 355
    .end local v7    # "key":Ljava/lang/String;
    goto :goto_7

    .line 357
    :cond_10
    sget-object v5, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    .line 358
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    .line 359
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 360
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/settings/DmConfigModule;->removeMessages(I)V

    .line 361
    iget-object v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v7, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v5, v7, v6}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->removeConfigData(II)V

    .line 362
    const/4 v5, -0x1

    iput v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    .line 364
    sget-object v5, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-direct {v1, v5, v13}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_8

    .line 367
    :cond_11
    iget-object v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getNewTransactionId()I

    move-result v5

    iput v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMADM update, created transaction : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v7, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v5, v7, v6, v13}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->addConfigData(IILandroid/content/ContentValues;)V

    .line 370
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/settings/DmConfigModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v5, v6, v7}, Lcom/sec/internal/ims/settings/DmConfigModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    :cond_12
    :goto_8
    return v0

    .line 375
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    move/from16 v2, p2

    if-gez v2, :cond_15

    .line 376
    const-string v5, "immediately write DM config"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-eqz v5, :cond_14

    .line 378
    const-string v5, "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v5, v12}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 380
    :cond_14
    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-eqz v5, :cond_17

    .line 381
    sget-object v5, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-direct {v1, v5, v13}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_9

    .line 384
    :cond_15
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-eqz v5, :cond_16

    .line 385
    iget-object v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v12}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->addConfigData(IILandroid/content/ContentValues;)V

    .line 387
    :cond_16
    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-eqz v5, :cond_17

    .line 388
    iget-object v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v5, v2, v0, v13}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->addConfigData(IILandroid/content/ContentValues;)V

    .line 393
    :cond_17
    :goto_9
    invoke-virtual {v14}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_18

    .line 394
    iget-object v5, v1, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v14, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    :cond_18
    return v0
.end method
